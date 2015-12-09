class EulerFortyEight

  attr_reader :range

  def initialize
    @range = (1..1000)
  end

  def sum_of_powers
    range.map{|n|
      n**n
    }.inject(:+)
  end

  def last_ten
    (sum_of_powers.to_s[-10..-1]).to_i
  end

end

project = EulerFortyEight.new
puts project.last_ten