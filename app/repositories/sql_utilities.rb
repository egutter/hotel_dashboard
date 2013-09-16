class SqlUtilities

  class << self
    def if_null
      adapter.if_null
    end

    private

    def adapter
      case DB.class.name
        when "Sequel::Postgres::Database"
          PostgresSqlUtilities
        when "Sequel::Oracle::Database"
          OracleSqlUtilities
      end
    end
  end

  class OracleSqlUtilities
    class << self
      def if_null
        :nvl
      end
    end
  end
  class PostgresSqlUtilities
    class << self
      def if_null
        :coalesce
      end
    end
  end
end