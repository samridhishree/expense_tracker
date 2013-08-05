class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :title
      t.integer :amount
      t.string :category

      t.timestamps
    end
  end
end
