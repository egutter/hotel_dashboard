def repository_factory
  RepositoryFactory.new
end

def daily_reservation_repository
  repository_factory.daily_reservation_repository
end

def financial_transaction_repository
  repository_factory.financial_transaction_repository
end

def resort_repository
  repository_factory.resort_repository
end

namespace :stats do

  desc "Calculate correlation"
  task :correlation => :environment do
    date_range = Time.now.at_beginning_of_month.at_beginning_of_day.ago(1.year)..Time.now.at_beginning_of_month.at_beginning_of_day
    Resort::ALL_CODES.each do |resort_code|
      puts "Resort #{resort_code}"
      puts "Retrieving DB data"
      start_time = Time.now
      resort = resort_repository.find_by_code_in_date_range(resort_code, date_range)
      filter = QueryFilter.new.add(:resort, resort).add(:reservation_date, date_range)

      resort_collection = ResortStatsCollection.new(resort)

      daily_reservation_repository.each_with_filter(filter) { |daily_reservation|
        resort_collection.add_daily_reservation(daily_reservation)
      }
      financial_transaction_repository.each_with_filter(filter) { |daily_reservation|
        resort_collection.add_financial_transaction(daily_reservation)
      }

      puts "Time elapsed to retrieve DB data #{(Time.now - start_time).round(2)} seconds"
      start_time = Time.now

      resort_stats = resort_collection.resort_stats
      occupancy_percentage_scale = resort_stats.map(&:occupancy_percentage).to_scale
      rate_average_scale = resort_stats.map(&:rate_average).to_scale
      puts "Calculating correlation values"
      pearson = Statsample::Bivariate::Pearson.new(occupancy_percentage_scale, rate_average_scale)
      puts "Time elapsed to calculate stats #{(Time.now - start_time).round(2)} seconds"
      puts "pearson.r #{pearson.r}"
      puts "pearson.t #{pearson.t}"
      puts "pearson.probability #{pearson.probability}"
      puts "pearson.summary #{pearson.summary}"
      puts "covariance #{Statsample::Bivariate.covariance(occupancy_percentage_scale, rate_average_scale)}"
      if ENV['RATE']
        expected_average_rate = ENV['RATE'].to_f
        puts "Calculating occupancy for #{expected_average_rate}"
        sr = Statsample::Regression.simple(occupancy_percentage_scale, rate_average_scale)
        puts "Occupancy for #{expected_average_rate} is #{sr.x(expected_average_rate).round(2)}%"
      end
      if ENV['OCCUPANCY']
        expected_occupancy = ENV['OCCUPANCY'].to_f
        puts "Calculating average rate for #{expected_occupancy}"
        sr = Statsample::Regression.simple(occupancy_percentage_scale, rate_average_scale)
        puts "Average rate for #{expected_occupancy} is #{sr.y(expected_occupancy).round(2)}"
      end
      puts "----------------------------------------------------"
    end
  end

end
