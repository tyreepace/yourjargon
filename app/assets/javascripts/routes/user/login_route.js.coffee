YJ.UserLoginRoute = Ember.Route.extend(
  events:
   authenticate: ((event) ->
     ac = @controllerFor('application')
     console.log(ac)
     controller = @controllerFor('login')
     controller.login( (result) ->
       if result
         console.log('successfully logged in')
         controller.transitionToRoute('user.dashboard')
       else
         console.log('failure to log in')
     )
   )

  renderTemplate: ->
    @render(controller: 'login')
)