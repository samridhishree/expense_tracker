class Expense < ActiveRecord::Base
	validates :title, presence: true
	validates :amount, presence: true
	validates :category, length: { maximum: 30 }, presence: true
	validates :expenseDate, presence: true
end
