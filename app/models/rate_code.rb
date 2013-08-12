class RateCode

  attr_reader :code, :description

  def initialize(code, description)
    @code, @description = code, description
  end
end