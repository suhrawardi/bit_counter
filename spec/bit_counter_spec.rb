require 'spec_helper'

describe BitCounter do

  context 'a binary file' do

    subject(:counter) do
      BitCounter.new(with_fullpath('assets/file.jpg'))
    end

    it "returns a binary representation of the file's body as a string" do
      expect(counter.as_binary_string.chars.uniq.sort).to eq(%w(0 1))
    end
  end

  context 'a text file' do

    subject(:counter) do
      BitCounter.new(with_fullpath('assets/file.txt'))
    end

    it "returns a binary representation of the file's body as a string" do
      expect(counter.as_binary_string.chars.uniq.sort).to eq(%w(0 1))
    end
  end
end
