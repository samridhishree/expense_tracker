class ExpensesController < ApplicationController
	respond_to :json

	def index
		respond_with Expense.all
	end

	def show
		respond_with Expense.find(params[:id])
	end

	def create
		respond_with Expense.create(expense_params)
	end

	def update
		respond_with Expense.update(params[:id], params[:expense])
	end

	def destroy
		respond_with Expense.destroy(params[:id])
	end

	private

	def expense_params
		params.require(:expense).permit(:title, :amount, :category)
	end
end
