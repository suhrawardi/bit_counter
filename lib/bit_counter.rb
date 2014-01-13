class BitCounter

  attr_reader :filename

  def initialize(filename)
    @filename = filename
  end

  def as_binary_string
    as_string.unpack('B*').first
  end

private

  def as_string
    IO.read(filename)
  end
end
