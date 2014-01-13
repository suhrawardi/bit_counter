require 'spec_helper'

include BitCounterExample

describe BitCounterExample do

  subject(:file) do
    with_fullpath('assets/file.jpg')
  end

  it 'returns the number of bits set to 0' do
    output = capture_stdout do count_bits(file) end
    expect(output).to match(/23093 bits set to 0/)
  end

  it 'returns the number of bits set to 1' do
    output = capture_stdout do count_bits(file) end
    expect(output).to match(/12331 bits set to 1/)
  end
end
