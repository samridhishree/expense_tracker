class ExpenseTracker.Views.ExpensesIndex extends Backbone.View

  #template:  _.template("<h1>Expense Tracker</h1>")
  template: JST['backbone/templates/expenses/index']
  
  render: ->
          $(@el).html(@template(expenses: "Expenses go here"))
          this   