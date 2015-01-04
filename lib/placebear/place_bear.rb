require 'cgi'

class PlaceBear
  DEFAULT_SIZE  = 300

  # Returns the URL for an optionally grayscale placebear with
  # the given width and height. If the width is given but the height
  # is not, the image will be square.
  #
  # @param [Number] width the width of the placebear
  # @param [Number] height the height of the placebear
  # @param [Boolean] grayscale whether or not to make the placebear grayscale
  def self.image(width = nil, height = nil, options = {} )
    options[:grayscale] ||= false
    options[:img_class] ||= nil
    width = height if width.nil?
    height = width if height.nil?
    width = height = DEFAULT_SIZE if width.nil? && height.nil?

    img_tag = image_string(width, height, options[:grayscale], options[:img_class])
    CGI::escapeHTML(img_tag)
  end

  # Returns the URL for a grayscale placebear with the given
  # width and height. If the width is given but the height
  # is not, the image will be square.
  #
  # @param [Number] width the width of the placebear
  # @param [Number] height the height of the placebear
  def self.grayscale(width = nil, height = nil, options = {})
    options ||= {}
    options[:img_class] ||= nil
    self.image(width, height, grayscale: true, img_class: options[:img_class])
  end

  class << self
    alias_method :bear, :image
    alias_method :gray, :grayscale
  end

  private

  def self.image_string(width, height, grayscale, img_class)
    img_tag = "<img src='http://placebear.com/"
    img_tag +='g/' if grayscale
    img_tag += "#{width}/#{height}'"
    img_tag += " class='#{img_class}'" unless img_class.nil?
    img_tag += ' />'
  end
end