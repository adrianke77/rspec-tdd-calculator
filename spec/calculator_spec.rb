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
  describe 'Result' do
    it 'should return the current results' do
    expect(@my_calculator.result).to eq(1)
    end
  end
  describe 'Reset' do
    it 'should reset the calculator to given value' do
    @my_calculator.reset(5)
    expect(@my_calculator.result).to eq(5)
    end
  end
  describe 'Add' do
    it 'should add to the calculator' do
    @my_calculator.add(5)
    expect(@my_calculator.result).to eq(10)
    end
  end
  describe 'Subtract' do
    it 'should subtract from the calculator' do
    @my_calculator.subtract(3)
    expect(@my_calculator.result).to eq(7)
    end
  end
  describe 'Multiply' do
    it 'should multiply to the calculator' do
    @my_calculator.mult(3)
    expect(@my_calculator.result).to eq(21)
    end
  end
   describe 'divide' do
    it 'should divide calculator result by value' do
    @my_calculator.divide(7)
    expect(@my_calculator.result).to eq(3)
    end
  end

end
