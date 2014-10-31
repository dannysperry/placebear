require 'active_support/all'

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
  def self.image(width = nil, height = nil, grayscale: false, img_class: nil )
    if width.nil?
      width = DEFAULT_WIDTH
      height = DEFAULT_HEIGHT
    elsif height.nil?
      height = width
    end

    if grayscale.present?
      "<img src='http://placebear.com/g/#{width}/#{height}' #{"class='"+img_class+"'" if img_class.present?}>".html_safe
    else
      "<img src='http://placebear.com/#{width}/#{height}' #{"class='"+img_class+"'" if img_class.present?}>".html_safe
    end
  end

  # Returns the URL for a grayscale placebear with the given
  # width and height. If the width is given but the height
  # is not, the image will be square.
  #
  # @param [Number] width the width of the placebear
  # @param [Number] height the height of the placebear
  def self.grayscale(width = nil, height = nil, img_class: nil)
    self.image(width, height, grayscale: true, img_class: img_class)
  end

  class << self
    alias_method :bear, :image
    alias_method :gray, :grayscale
  end
end