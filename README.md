# Placebear

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'placebear'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install placebear

## Usage

```ruby
<%= place_bear 200, 400 %>
<%= place_bear_gray 200 %>

<%= place_bear 200, 400, img_class: 'class-image_element' %>

<%= place_bear 200, 400, grayscale: true %>
```

###The following are all the same
```ruby
PlaceBear.image
PlaceBear.bear
place_bear
place_bear(300)
place_bear(300,300)
```
All of these return the following html
```html
<img src='http://placebear.com/300/300' />
```

###The grayscaled version
```ruby
PlaceBear.grayscale
PlaceBear.gray
place_bear_grayscale
place_bear_gray
place_bear_gray(300)
place_bear_gray(300, 300)
```
which all return the following html
```html
<img src='http://placebear.com/g/300/300' />
```

###With a custom class
```ruby
place_bear_gray(300, nil, img_class: 'img-place_bear')
```
```html
<img src='http://placebear.com/g/300/300' class='img-place-bear' />
```

## Contributing

1. Fork it ( https://github.com/dannysperry/placebear )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
