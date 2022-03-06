# encoding: utf-8

require 'test_helper'

class ErrorsTest < MiniTest::Test
  def test_rescue_legacy_zip_error
    raise ::BimTools::Zip::Error
  rescue ::BimTools::Zip::ZipError
  end

  def test_rescue_legacy_zip_entry_exists_error
    raise ::BimTools::Zip::EntryExistsError
  rescue ::BimTools::Zip::ZipEntryExistsError
  end

  def test_rescue_legacy_zip_destination_file_exists_error
    raise ::BimTools::Zip::DestinationFileExistsError
  rescue ::BimTools::Zip::ZipDestinationFileExistsError
  end

  def test_rescue_legacy_zip_compression_method_error
    raise ::BimTools::Zip::CompressionMethodError
  rescue ::BimTools::Zip::ZipCompressionMethodError
  end

  def test_rescue_legacy_zip_entry_name_error
    raise ::BimTools::Zip::EntryNameError
  rescue ::BimTools::Zip::ZipEntryNameError
  end

  def test_rescue_legacy_zip_internal_error
    raise ::BimTools::Zip::InternalError
  rescue ::BimTools::Zip::ZipInternalError
  end
end
