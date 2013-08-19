# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Expense.create!(title: "Auto to office", amount: 80, category: "Travel", expenseDate: "13/08/2013")
Expense.create!(title: "Lunch office", amount: 50, category: "Food", expenseDate: "13/08/2013")
Expense.create!(title: "Electricity Bill", amount: 2618, category: "Bills", expenseDate: "13/08/2013")
Expense.create!(title: "Home Rent", amount: 10000, category: "Bills", expenseDate: "13/08/2013")
Expense.create!(title: "Car EMI", amount: 11000, category: "Bills", expenseDate: "13/08/2013")
Expense.create!(title: "Big Basket", amount: 800, category: "Groceries", expenseDate: "13/08/2013")