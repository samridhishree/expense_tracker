class Expense < ActiveRecord::Base
	belongs_to :category
	validates :title, presence: true
	validates :amount, presence: true
	validates :expenseDate, presence: true
end
