class ExpenseTracker.Routers.Expenses extends Backbone.Router

	routes:
		'': "index"
		'expenses/:id': "show"

	initialize: ->
		@collection = new ExpenseTracker.Collections.Expenses()
		@collection.fetch()

	index: ->
		@view = new ExpenseTracker.Views.ExpensesIndex({expenses: @collection})
		$("#container").html(@view.render().el)

	show: (id) ->
		alert "Expense #{id}"
