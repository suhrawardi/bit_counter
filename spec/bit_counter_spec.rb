require 'spec_helper'

shared_examples 'a bit counter' do |expected_bits|

  subject(:counter) do
    BitCounter.new(file)
  end

  describe '#as_binary_string' do

    it 'returns a binary representation as a string' do
      expect(counter.as_binary_string.chars.uniq.sort).to eq(%w(0 1))
    end
  end

  describe '#count' do

    it 'returns the number of 0 bits' do
      expect(counter.count('0')).to eq(expected_bits['0'])
    end

    it 'returns the number of 1 bits' do
      expect(counter.count('1')).to eq(expected_bits['1'])
    end

    it 'returns counted bits that together make the total number of bits' do
      expect(counter.count('0') + counter.count('1')).to eq(nr_of_bits(file))
    end
  end
end

describe BitCounter do

  context 'a binary file' do

    subject(:file) do
      with_fullpath('assets/file.jpg')
    end

    it_behaves_like 'a bit counter', {'0' => 23093, '1' => 12331}

  end

  context 'a text file' do

    subject(:file) do
      with_fullpath('assets/file.txt')
    end

    it_behaves_like 'a bit counter', {'0' => 151, '1' => 121}

  end
end
