module PlaceBear::Helpers
  # @see PlaceBear.image
  def place_bear(width = nil, height = nil, grayscale = false, img_class: nil)
    PlaceBear.image(width, height, grayscale: grayscale, img_class: img_class)
  end

  # @see PlaceBear.grayscale
  def place_bear_grayscale(width = nil, height = nil, img_class: nil)
    PlaceBear.grayscale(width, height, img_class: img_class)
  end
  alias place_bear_gray place_bear_grayscale
end