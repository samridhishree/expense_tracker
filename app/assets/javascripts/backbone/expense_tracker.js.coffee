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
  init: -> alert "Hello World from backbone!"

$(document).ready ->
  	ExpenseTracker.init()