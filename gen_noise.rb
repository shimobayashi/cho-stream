#!/usr/bin/ruby
require 'rubygems'
require 'RMagick'

list = Magick::ImageList.new
10.times do
  img = Magick::Image.new(256, 256);
  for x in 0...img.columns
    for y in 0...img.rows
      v = 255 * 256 * rand() * 0.7;
      img.pixel_color(x, y, Magick::Pixel.new(v, v, v));
    end
  end
  list.push img
end
list.delay = 6;
list.write("./noise.gif")
