class Calculator

  def initialize(result)
    @result = result
  end
  attr_reader :result
  def reset(result)
    @result = result
  end
  def add(value_to_add)
    @result +=value_to_add
  end
end
