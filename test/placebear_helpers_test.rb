require 'placebear'
require 'test_helper'

class PlaceBearHelpersTest < Minitest::Unit::TestCase
  include PlaceBear::Helpers

  def test_placebear_helper
    assert_equal "<img src='http://placebear.com/300/300' >".html_safe, place_bear(300)
  end

  def test_placebear_grayscale_helper
    assert_equal "<img src='http://placebear.com/g/300/300' >".html_safe, place_bear_grayscale(300)
  end

  def test_placebear_gray_alias
    assert_equal "<img src='http://placebear.com/g/500/200' >".html_safe, place_bear_gray(500,200)
  end

  def test_placebear_gray_with_no_params
    assert_equal "<img src='http://placebear.com/g/300/300' >".html_safe, place_bear_gray
  end

end

