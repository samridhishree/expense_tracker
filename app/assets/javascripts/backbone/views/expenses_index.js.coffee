class ExpenseTracker.Views.ExpensesIndex extends Backbone.View

  template: JST['backbone/templates/expenses/index']

  initialize: ->
  	@options.expenses.on('reset', @render, this)
  
  render: ->
    $(@el).html(@template(expenses: @options.expenses))
    this   