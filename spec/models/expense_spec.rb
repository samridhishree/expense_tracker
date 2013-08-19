require 'spec_helper'

describe Expense do

  before { @expense = Expense.new(title: "Lunch at cafeteria", amount: 50, category: "Food", expenseDate: "13/08/2013") }

  subject { @expense }

  it { should respond_to(:title) }
  it { should respond_to(:amount) }
  it { should respond_to(:category) }
  it { should respond_to(:expenseDate) }
  it { should be_valid }

  describe "when title is not present" do
  	before { @expense.title = "" }
  	it { should_not be_valid }
  end

  describe "when amount is not present" do
  	before { @expense.amount = nil }
  	it { should_not be_valid }
  end

  describe "when date is not present" do
    before { @expense.expenseDate = "" }
    it{ should_not be_valid }
  end

  describe "when category is not present" do
    before { @expense.category = "" }
    it { should_not be_valid }
  end

  describe "when category is too long (> 30 characters)" do
  	before { @expense.category = 'a' * 31 }
  	it { should_not be_valid }
  end

end
