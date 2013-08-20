class ExpenseTracker.Routers.Expenses extends Backbone.Router

	routes:
		'': "index"
		'expenses/:id': "show"

	initialize: ->
		@collection = new ExpenseTracker.Collections.Expenses()
		@collection.fetch()
		@categoriesCollection = new ExpenseTracker.Collections.Categories()
		@categoriesCollection.fetch()

	index: ->
		@view = new ExpenseTracker.Views.ExpensesIndex({expenses: @collection, categories: @categoriesCollection})
		$("#container").html(@view.render().el)

	show: (id) ->
		alert "Expense #{id}"
