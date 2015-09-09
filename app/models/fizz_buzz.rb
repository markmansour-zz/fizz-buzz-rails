class FizzBuzz
  def initialize(start = 1)
    @current = @start = start
  end

  attr_reader :start, :last, :current
  attr_writer :current

  def next
    result = as_word
    @current += 1
    result
  end

  def as_word
    return "FizzBuzz" if fizz_buzz?
    return "Fizz" if fizz?
    return "Buzz" if buzz?
    current
  end

  def fizz_buzz?
    fizz? && buzz?
  end

  def fizz?
    current % 3 == 0
  end

  def buzz?
    current % 5 == 0
  end
end
