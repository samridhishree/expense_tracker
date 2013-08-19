class AddDateToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :expenseDate, :date
  end
end
