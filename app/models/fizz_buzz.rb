class FizzBuzz
  def initialize(start = 1)
    @current = @start = start
  end

  attr_reader :start, :last, :current
  attr_writer :current

  def next
    result = next_step
    @current += 1
    result
  end

  def next_step
    if(current % 3 == 0 && current % 5 == 0)
      "FizzBuzz"
    elsif current % 3 == 0
      "Fizz"
    elsif current % 5 == 0
      "Buzz"
    else
      current
    end
  end
end
