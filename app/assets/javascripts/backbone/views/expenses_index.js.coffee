class ExpenseTracker.Views.ExpensesIndex extends Backbone.View

  template: JST['backbone/templates/expenses/index']

  events:
    'submit #new_expense': 'createExpense'

  initialize: ->
    @options.expenses.on('add', @appendExpense, this)
    @options.expenses.on('reset', @render, this)
    @options.categories.on('reset', @render, this)
  
  render: ->
    $(@el).html(@template(categories: @options.categories))
    @options.expenses.each(@appendExpense, this)
    this

  appendExpense: (expense) ->
    category_id = expense.get('category_id')
    category = @options.categories.get(category_id)
    view = new ExpenseTracker.Views.Expense(model: expense, category: category.get('name'))
   	$("#expenses-list").append(view.render().el)

  createExpense: (event) ->
    event.preventDefault()
    @options.expenses.create title: $('#new_expense_title').val(), amount: $('#new_expense_amount').val(), category_id: $('#new_expense_category').val(), expenseDate: $('#new_expense_date').val()
