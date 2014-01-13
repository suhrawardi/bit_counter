module SpecHelpers

  def with_fullpath(filename)
    File.expand_path(filename, File.dirname(__FILE__))
  end
end
