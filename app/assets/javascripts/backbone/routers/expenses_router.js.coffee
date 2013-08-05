class ExpenseTracker.Routers.Expenses extends Backbone.Router

	routes:
		'': "index"
		'expenses/:id': "show"

	index: ->
		view = new ExpenseTracker.Views.ExpensesIndex
		$("#container").html(view.render().el)

	show: (id) ->
		alert "Expense #{id}"
