require_relative 'spec_helper'
require_relative '../lib/calculator.rb'

describe Calculator do
  before(:context) do
    @my_calculator = Calculator.new(1)
    # initialize calculator
  end
  describe 'Initialization' do
    it 'is an instance of the Calculator class' do
      expect(@my_calculator).to be_instance_of(Calculator)
    end
  end
  # Tests go here
end
