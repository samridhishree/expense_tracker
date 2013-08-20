# class ExpenseTracker.Models.Expense extends Backbone.Model
# 	urlRoot: '/expenses'

# 	getCategoryName: (id) ->
# 		categoryCollection = new ExpenseTracker.Collections.Categories()
# 		categoryCollection.fetch()
# 		category = categoryCollection.get(id)
# 		category.attributes.name

class ExpenseTracker.Collections.Expenses extends Backbone.Collection
	url: '/expenses'
	# expenseModel = new ExpenseTracker.Models.Expense()
	# model: ExpenseTracker.Models.Expense