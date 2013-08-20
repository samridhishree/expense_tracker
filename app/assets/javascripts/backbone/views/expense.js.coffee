class ExpenseTracker.Views.Expense extends Backbone.View

  template: JST['backbone/templates/expenses/expense']
  tagName: 'li'

  render: ->
    $(@el).html(@template(expense: @options.model, category: @options.category))
    this   