# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Expense.create!(title: "Auto to office", amount: 80, category_id: 4, expenseDate: "13/08/2013")
Expense.create!(title: "Lunch office", amount: 50, category_id: 3, expenseDate: "13/08/2013")
Expense.create!(title: "Electricity Bill", amount: 2618, category_id: 2, expenseDate: "13/08/2013")
Expense.create!(title: "Home Rent", amount: 10000, category_id: 2, expenseDate: "13/08/2013")
Expense.create!(title: "Car EMI", amount: 11000, category_id: 2, expenseDate: "13/08/2013")
Expense.create!(title: "Big Basket", amount: 800, category_id: 1, expenseDate: "13/08/2013")
Category.create!(name: "Groceries")
Category.create!(name: "Bills")
Category.create!(name: "Food")
Category.create!(name: "Travel")
Category.create!(name: "Entertainment")
Category.create!(name: "Clothes")
Category.create!(name: "Personal")
Category.create!(name: "Family")
Category.create!(name: "Rent")