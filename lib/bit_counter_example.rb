require File.expand_path('bit_counter.rb', File.dirname(__FILE__))

module BitCounterExample

  def count_bits(filename)
    counter = BitCounter.new(filename)    
    set_to_1 = counter.count('1')
    set_to_0 = counter.count('0')
    puts "found #{set_to_1} bits set to 1\nfound #{set_to_0} bits set to 0"
  end
end
