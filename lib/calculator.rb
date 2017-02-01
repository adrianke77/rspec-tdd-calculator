class Calculator
  def initialize(result)
    @result = result
    @prev_value = nil
  end

  attr_reader :result

  def reset(result)
    @prev_value = @result
    @result = result
    self
  end

  def add(value_to_add)
    @prev_value = @result
    @result += value_to_add
    self
  end

  def subtract(value_to_subtract)
    @prev_value = @result
    @result -= value_to_subtract
    self
  end

  def mult(value_to_mult)
    @prev_value = @result
    @result *= value_to_mult
    self
  end

  def divide(value_to_divide)
    @prev_value = @result
    @result /= value_to_divide
    self
  end

  def operation(method, value_to_operate)
    if method == 'add'
      add(value_to_operate)
    elsif method == 'subtract'
      subtract(value_to_operate)
    elsif method == 'multiply'
      mult(value_to_operate)
    elsif method == 'divide'
      divide(value_to_operate)
    end
  end

  def undo
    @result = @prev_value || @result
    @prev_value = nil
  end
end
