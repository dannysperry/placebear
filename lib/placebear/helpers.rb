module PlaceBear::Helpers
  # @see PlaceBear.image
  def place_bear(width = nil, height = nil, grayscale = false)
    PlaceBear.image(width, height, grayscale)
  end

  # @see PlaceBear.grayscale
  def place_bear_grayscale(width = nil, height = nil)
    PlaceBear.grayscale(width, height)
  end
  alias place_bear_gray place_bear_grayscale
end