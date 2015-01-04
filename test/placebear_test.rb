require 'placebear'
require 'test_helper'

class PlaceBearTest < Minitest::Unit::TestCase
  def test_grayscale
    assert_equal "&lt;img src='http://placebear.com/g/400/400' /&gt;", PlaceBear.grayscale(400)
  end

  def test_placebear_defaults_to_300_with_no_params
    assert_equal "&lt;img src='http://placebear.com/300/300' /&gt;", PlaceBear.image
  end

  def test_placebear_height_equals_width_if_height_is_nil
    assert_equal "&lt;img src='http://placebear.com/400/400' /&gt;", PlaceBear.image(400)
    assert_equal "&lt;img src='http://placebear.com/400/400' /&gt;", PlaceBear.image(400, nil)
  end

  def test_placebear_width_equals_height_if_width_is_nil
    assert_equal "&lt;img src='http://placebear.com/400/400' /&gt;", PlaceBear.image(nil, 400)
  end

  def test_bear_alias
    assert_equal "&lt;img src='http://placebear.com/400/400' /&gt;", PlaceBear.image(400)
  end

  def test_gray_alias
    assert_equal "&lt;img src='http://placebear.com/g/300/300' /&gt;", PlaceBear.grayscale(300)
  end

  def test_adds_img_class
    assert_equal "&lt;img src='http://placebear.com/400/400' class='some_class' /&gt;", PlaceBear.image(400, 400, img_class: 'some_class', grayscale: false)
  end

  def test_adds_img_class_to_grayscale
    assert_equal "&lt;img src='http://placebear.com/g/400/400' class='some_class' /&gt;", PlaceBear.grayscale(400, 400, img_class: 'some_class')
    assert_equal "&lt;img src='http://placebear.com/g/400/400' class='some_class' /&gt;", PlaceBear.image(400, 400, grayscale: true, img_class: 'some_class')
  end

end