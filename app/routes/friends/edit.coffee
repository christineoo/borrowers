`import Ember from 'ember'`

FriendsEditRoute = Ember.Route.extend

  deactivate: ->
      model = @modelFor 'friends/edit'
      model.rollback()

`export default FriendsEditRoute`
