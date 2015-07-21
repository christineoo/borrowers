`import Ember from 'ember'`

FriendsIndexRoute = Ember.Route.extend

  model: -> @store.findAll 'friend'

`export default FriendsIndexRoute`
