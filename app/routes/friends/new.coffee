`import Ember from 'ember'`

FriendsNewRoute = Ember.Route.extend

  model: ->
    @store.createRecord 'friend'

`export default FriendsNewRoute`
