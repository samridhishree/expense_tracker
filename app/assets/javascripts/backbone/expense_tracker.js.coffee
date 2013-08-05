#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.ExpenseTracker =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  init: -> 
  	router = new ExpenseTracker.Routers.Expenses
  	Backbone.history.start({pushState: true})

$(document).ready ->
  	ExpenseTracker.init()