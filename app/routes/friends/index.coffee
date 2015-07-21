`import Ember from 'ember'`

FriendsIndexRoute = Ember.Route.extend

  model: -> @store.findAll 'friend'

  actions:
      delete: (friend)->
          friend.destroyRecord()
          false

`export default FriendsIndexRoute`
