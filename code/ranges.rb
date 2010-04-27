require 'test/unit'

def lat_range(n)
  180.0 / 2 ** (n/2).floor
end

def lon_range(n)
  360.0 / 2 ** ((n+1)/2).floor
end

class TestRangeMethods < Test::Unit::TestCase
  def test_lat_range
    assert_equal 180, lat_range(0)
    assert_equal 180, lat_range(1)
    assert_equal 90, lat_range(2)
    assert_equal 0.3515625, lat_range(18)
    assert_equal 0.3515625, lat_range(19)
  end
  
  def test_lon_range
    assert_equal 360, lon_range(0)
    assert_equal 180, lon_range(1)
    assert_equal 180, lon_range(2)
    assert_equal 90,  lon_range(3)
    assert_equal 90,  lon_range(4)
    assert_equal 0.0439453125, lon_range(25)
    assert_equal 0.0439453125, lon_range(26)
  end
end
