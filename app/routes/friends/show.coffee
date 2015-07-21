`import Ember from 'ember'`

FriendsShowRoute = Ember.Route.extend

  actions:
      delete: (friend)->
          _this = this
          friend.destroyRecord().then =>
              _this.transitionTo 'friends.index'

`export default FriendsShowRoute`
