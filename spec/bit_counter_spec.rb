require 'spec_helper'

describe BitCounter do

  context 'a binary file' do

    subject(:counter) do
      BitCounter.new(with_fullpath('assets/file.jpg'))
    end

    it "returns a binary representation of the file's body as a string" do
      expect(counter.as_binary_string.chars.uniq).to eq(%w(1 0))
    end
  end
end
