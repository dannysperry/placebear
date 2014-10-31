require 'placebear'
require 'test_helper'

class PlaceBearTest < Minitest::Unit::TestCase
  def test_returns_activesupport_safebuffer
    assert_equal PlaceBear.image(400).class, ActiveSupport::SafeBuffer
  end

  def test_grayscale
    assert_equal PlaceBear.grayscale(400), "<img src='http://placebear.com/g/400/400' />"
  end

  def test_placebear_without_params
    assert_equal PlaceBear.image, "<img src='http://placebear.com/300/300' />"
  end

  def test_placebear
    assert_equal PlaceBear.image(400), "<img src='http://placebear.com/400/400' />"
  end

  def test_bear_alias
    assert_equal PlaceBear.image(400), "<img src='http://placebear.com/400/400' />"
  end

  def test_gray_alias
    assert_equal PlaceBear.grayscale(300), "<img src='http://placebear.com/g/300/300' />"
  end

end