require 'base64'

# see https://iterm2.com/documentation-images.html

class ITerm

  def self.show_image_file(file, width: nil, height: nil, preserve_aspect_ratio: nil)
    data = Base64.strict_encode64(File.read(file))
    args = {
      name: Base64.strict_encode64(file.to_s),
      size: data.length,
      width: width,
      height: height,
      preserveAspectRatio: preserve_aspect_ratio,
      inline: 1,
    }.compact
    "\033]1337;File=%s:%s\a" % [
      args.map { |a| a.join('=') }.join(';'),
      data,
    ]
  end

end