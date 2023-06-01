require 'minitest/autorun'
require 'minitest/power_assert'

require 'iterm-show-image-file'

class MusicBox

  class Test < MiniTest::Test

    def test_show_image_file
      str = ITerm.show_image_file('test/cat.png')
      assert { str }
      print str
    end

  end

end