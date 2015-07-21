`import Ember from 'ember'`

FriendsRoute = Ember.Route.extend
  actions:
      save: ->
          console.log('save action bubbled to friends route.')
          true

      cancel: ->
          console.log('cancel action bubbled to friends route.')
          true

      delete: (friend)->
          _this = this
          friend.destroyRecord().then =>
              _this.transitionTo 'friends.index'

`export default FriendsRoute`
