class ExpenseTracker.Views.ExpensesIndex extends Backbone.View

  template: JST['backbone/templates/expenses/index']

  events:
    'submit #new_expense': 'createExpense'

  initialize: ->
    @options.expenses.on('add', @appendExpense, this)
    @options.expenses.on('reset', @render, this)
  
  render: ->
    $(@el).html(@template)
    @options.expenses.each(@appendExpense)
    this

  appendExpense: (expense) ->
  	view = new ExpenseTracker.Views.Expense(model: expense)
  	$("#expenses-list").append(view.render().el)

  createExpense: (event) ->
    event.preventDefault()
    @options.expenses.create title: $('#new_expense_title').val(), amount: $('#new_expense_amount').val(), category: $('#new_expense_category').val(), expenseDate: $('#new_expense_date').val()
