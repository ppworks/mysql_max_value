require 'test_helper'

class MysqlMaxValueTest < ActiveSupport::TestCase
  def test_big_unsigned
    assert_kind_of Bignum,
                   MysqlMaxValue.bigint_unsigned
  end

  def test_int_unsigned
    assert_kind_of Fixnum,
                   MysqlMaxValue.int_unsigned
  end

  def test_mediumint_unsigned
    assert_kind_of Fixnum,
                   MysqlMaxValue.mediumint_unsigned
  end

  def test_smallint_unsigned
    assert_kind_of Fixnum,
                   MysqlMaxValue.smallint_unsigned
  end

  def test_tinyint_unsigned
    assert_kind_of Fixnum,
                   MysqlMaxValue.tinyint_unsigned
  end

  def test_big_signed
    assert_kind_of Bignum,
                   MysqlMaxValue.bigint_signed
  end

  def test_int_signed
    assert_kind_of Fixnum,
                   MysqlMaxValue.int_signed
  end

  def test_mediumint_signed
    assert_kind_of Fixnum,
                   MysqlMaxValue.mediumint_signed
  end

  def test_smallint_signed
    assert_kind_of Fixnum,
                   MysqlMaxValue.smallint_signed
  end

  def test_tinyint_signed
    assert_kind_of Fixnum,
                   MysqlMaxValue.tinyint_signed
  end

  def test_method_missing
    assert_raise NoMethodError do
      MysqlMaxValue.undefined_method
    end
  end
end
