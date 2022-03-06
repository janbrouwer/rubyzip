require 'test_helper'
class InflaterTest < MiniTest::Test
  include DecompressorTests

  def setup
    super
    @file = File.new('test/data/file1.txt.deflatedData', 'rb')
    @decompressor = ::BimTools::Zip::Inflater.new(@file)
  end

  def teardown
    @file.close
  end
end
