class Solver
  def factorial(num)
    num = num.to_i
    raise RangeError, 'A negative number is not allowed' if num.negative?

    num.zero? ? 1 : num * factorial(num - 1)
  end
end
