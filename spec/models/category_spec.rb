require 'spec_helper'

describe Category do

  before { @category = Category.new(name: "something") }

  subject { @category }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name is not present" do
  	before { @category.name = "" }
  	it { should_not be_valid }
  end

end