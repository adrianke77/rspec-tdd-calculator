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
  describe 'chain' do
    it 'should allow for chaining' do
      @my_calculator.reset(5)
      @my_calculator.add(6).subtract(1)
      expect(@my_calculator.result).to eq(10)
      @my_calculator.reset(5)
      @my_calculator.divide(5).mult(10)
      expect(@my_calculator.result).to eq(10)
      @my_calculator.reset(10)
      @my_calculator.subtract(5).add(2)
      expect(@my_calculator.result).to eq(7)
    end
  end
  describe 'operation' do
    it 'should apply the specified operation' do
      @my_calculator.reset(1)
      @my_calculator.operation('add', 5)
      expect(@my_calculator.result).to eq(6)
      @my_calculator.operation('subtract', 4)
      expect(@my_calculator.result).to eq(2)
      @my_calculator.operation('multiply', 3)
      expect(@my_calculator.result).to eq(6)
      @my_calculator.operation('divide', 2)
      expect(@my_calculator.result).to eq(3)
    end
  end
  describe 'undo' do
    it 'should undo one step' do
      @my_calculator.reset(6)
      @my_calculator.subtract(3)
      @my_calculator.undo
      expect(@my_calculator.result).to eq(6)
    end
  end
  describe 'undo' do
    it 'should undo one step' do
      @my_calculator.reset(6)
      @my_calculator.subtract(3)
      @my_calculator.undo
      expect(@my_calculator.result).to eq(6)
    end
  end
  describe 'redo' do
    it 'should redo a previous undo' do
      @my_calculator.reset(4)
      @my_calculator.subtract(3)
      @my_calculator.undo
      @my_calculator.redo
      expect(@my_calculator.result).to eq(1)
    end
  end
end
