class MysqlMaxValue
  VERSION = "1.0.0"

  TYPES = {
   bigint_unsigned: 0,
   int_unsigned: 32,
   mediumint_unsigned: 40,
   smallint_unsigned: 48,
   tinyint_unsigned: 56,
   bigint_signed: 1,
   int_signed: 33,
   mediumint_signed: 41,
   smallint_signed: 49,
   tinyint_signed: 57
  }

  TYPES.keys.map do |type|
    class_variable_set("@@#{type}", nil)
  end

  class << self
    def method_missing(name)
      if TYPES.keys.include? name
        class_variable_get("@@#{name}".to_sym) || class_variable_set("@@#{name}".to_sym, max_value(TYPES[name]))
      end
    end

    private

    def max_value(shift_bit)
      ActiveRecord::Base.connection.execute("SELECT ~0 >> #{shift_bit}").first[0]
    rescue
    end
  end
end
