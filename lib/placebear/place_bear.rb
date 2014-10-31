class PlaceBear
  DEFAULT_WIDTH  = 300
  DEFAULT_HEIGHT = 300

  # Returns the URL for an optionally grayscale placebear with
  # the given width and height. If the width is given but the height
  # is not, the image will be square.
  #
  # @param [Number] width the width of the placebear
  # @param [Number] height the height of the placebear
  # @param [Boolean] grayscale whether or not to make the placebear grayscale
  def self.image(width = nil, height = nil, grayscale = false)
    if width.nil?
      width = DEFAULT_WIDTH
      height = DEFAULT_HEIGHT
    elsif height.nil?
      height = width
    end

    if grayscale
      image_tag "http://placebear.com/g/#{width}/#{height}"
    else
      image_tag "http://placebear.com/#{width}/#{height}"
    end
  end

  # Returns the URL for a grayscale placebear with the given
  # width and height. If the width is given but the height
  # is not, the image will be square.
  #
  # @param [Number] width the width of the placebear
  # @param [Number] height the height of the placebear
  def self.grayscale(width = nil, height = nil)
    self.image(width, height, true)
  end

  class << self
    alias_method :bear, :image
    alias_method :gray, :grayscale
  end
end