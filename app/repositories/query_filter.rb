class QueryFilter

  def initialize
    @filters = []
  end

  def add(field, value)
    @filters << [field, value] unless value.blank?
    self
  end

  def apply(repository, query)
    @filters.inject(query) do |new_query, filter|
      repository.send("filter_by_#{filter.first}", new_query, filter.last)
    end
  end
end