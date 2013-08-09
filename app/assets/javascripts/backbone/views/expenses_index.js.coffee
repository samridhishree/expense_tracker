class ExpenseTracker.Views.ExpensesIndex extends Backbone.View

  template: JST['backbone/templates/expenses/index']

  initialize: ->
  	@options.expenses.on('reset', @render, this)
  
  render: ->
    $(@el).html(@template)
    @options.expenses.each(@appendExpense)
    this

  appendExpense: (expense) ->
  	view = new ExpenseTracker.Views.Expense(model: expense)
  	$("#expenses-list").append(view.render().el)