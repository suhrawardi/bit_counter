module SpecHelpers

  def nr_of_bits(filename)
    File.size(filename) * 8
  end

  def with_fullpath(filename)
    File.expand_path(filename, File.dirname(__FILE__))
  end
end
