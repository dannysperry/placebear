require 'placebear'
require 'test_helper'

class PlaceBearTest < Minitest::Unit::TestCase
  def test_returns_activesupport_safebuffer
    assert_equal PlaceBear.image(400).class, ActiveSupport::SafeBuffer
  end

  def test_grayscale
    assert_equal "<img src='http://placebear.com/g/400/400' >".html_safe, PlaceBear.grayscale(400)
  end

  def test_placebear_without_params
    assert_equal "<img src='http://placebear.com/300/300' >".html_safe, PlaceBear.image
  end

  def test_placebear
    assert_equal "<img src='http://placebear.com/400/400' >".html_safe, PlaceBear.image(400)
  end

  def test_bear_alias
    assert_equal "<img src='http://placebear.com/400/400' >".html_safe, PlaceBear.image(400)
  end

  def test_gray_alias
    assert_equal "<img src='http://placebear.com/g/300/300' >".html_safe, PlaceBear.grayscale(300)
  end

  def test_adds_img_class
    assert_equal "<img src='http://placebear.com/400/400' class='some_class'>".html_safe, PlaceBear.image(400, 400, img_class:'some_class')
  end

  def test_adds_img_class_to_grayscale
    assert_equal "<img src='http://placebear.com/g/400/400' class='some_class'>".html_safe, PlaceBear.grayscale(400, 400, img_class:'some_class')
    assert_equal "<img src='http://placebear.com/g/400/400' class='some_class'>".html_safe, PlaceBear.image(400, 400, img_class:'some_class', grayscale: true)
  end

end