require 'placebear'
require 'test_helper'

class PlaceBearHelpersTest < Minitest::Unit::TestCase
  include PlaceBear::Helpers

  def test_placebear_helper
    assert_equal "&lt;img src='http://placebear.com/300/300' /&gt;", place_bear(300)
  end

  def test_placebear_grayscale_helper
    assert_equal "&lt;img src='http://placebear.com/g/300/300' /&gt;", place_bear_grayscale(300)
  end

  def test_placebear_gray_alias
    assert_equal "&lt;img src='http://placebear.com/g/500/200' /&gt;", place_bear_gray(500,200)
  end

  def test_placebear_gray_with_no_params
    assert_equal "&lt;img src='http://placebear.com/g/300/300' /&gt;", place_bear_gray
  end

  def test_placebear_with_image_class
    assert_equal "&lt;img src='http://placebear.com/300/300' class='some_class' /&gt;", place_bear(300, 300, img_class: 'some_class')
  end

  def test_placebear_gray_with_image_class
    assert_equal "&lt;img src='http://placebear.com/g/300/300' class='some_class' /&gt;", place_bear_gray(300, 300, img_class: 'some_class')
  end

end

