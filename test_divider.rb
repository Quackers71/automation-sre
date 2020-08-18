require "test/unit"
require_relative "divider"

class TestDivider < Test::Unit::TestCase

    def test_basic
        x = 10
        y = 2
        expected_output = 5
        assert_equal(expected_output, divider(x, y))
    end

    def test_divide_by_0
        x = 10
        y = 0
        assert_raise( ZeroDivisionError ) { divider(x, y) }
    end
end
