`import Ember from 'ember'`

FriendsNewRoute = Ember.Route.extend

  model: ->
    @store.createRecord 'friend'

  deactivate: ->
      model = @modelFor 'friends/new'
      if model.get 'isNew'
          model.destroyRecord()

`export default FriendsNewRoute`
