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
      resort = resort_repository.find_by_code_in_date_range(resort_code, date_range)
      filter = QueryFilter.new.add(:resort, resort).add(:reservation_date, date_range)

      resort_collection = ResortStatsCollection.new(resort)

      daily_reservation_repository.each_with_filter(filter) { |daily_reservation|
        resort_collection.add_daily_reservation(daily_reservation)
      }
      financial_transaction_repository.each_with_filter(filter) { |daily_reservation|
        resort_collection.add_financial_transaction(daily_reservation)
      }

      resort_stats = resort_collection.resort_stats
      a = resort_stats.map(&:occupancy_percentage).to_scale
      b = resort_stats.map(&:rate_average).to_scale
      pearson = Statsample::Bivariate::Pearson.new(a, b)
      puts "Resort #{resort_code}"
      puts "pearson.r #{pearson.r}"
      puts "pearson.t #{pearson.t}"
      puts "pearson.probability #{pearson.probability}"
      puts "pearson.summary #{pearson.summary}"
      puts "covariance #{Statsample::Bivariate.covariance(a, b)}"
      puts "----------------------------------------------------"
    end
  end

end
