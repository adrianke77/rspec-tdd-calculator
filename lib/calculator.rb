class Calculator

  def initialize(result)
    @result = result
  end
  attr_reader :result
  def reset(result)
    @result = result
  end
end
