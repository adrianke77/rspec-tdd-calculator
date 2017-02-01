class Calculator

  def initialize(result)
    @result = result
  end

  attr_reader :result

  def reset(result)
    @result = result
    self
  end

  def add(value_to_add)
    @result +=value_to_add
    self
  end

  def subtract(value_to_subtract)
    @result -=value_to_subtract
    self
  end

  def mult(value_to_mult)
    @result *=value_to_mult
    self
  end

  def divide(value_to_divide)
    @result /=value_to_divide
    self
  end
end
