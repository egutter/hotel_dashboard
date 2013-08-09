class MiniTest::Unit::TestCase
  alias_method :_original_run, :run

  def run(*args, &block)
    result = nil
    Sequel::Model.db.transaction(:rollback => :always) do
      result = _original_run(*args, &block)
    end
    result
  end
end