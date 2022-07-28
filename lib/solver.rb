class Solver
  def factorial(num)
    num = num.to_i
    raise RangeError, 'A negative number is not allowed' if num.negative?

    num.zero? ? 1 : num * factorial(num - 1)
  end

  def fizzbuzz(number)
    num = number.to_i
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end

  def reverse(str)
    str.to_s.reverse
  end
end
