`import Ember from 'ember'`

FriendsShowController = Ember.Controller.extend

  actions:
      back: ->
          this.transitionToRoute 'friends'
          false

`export default FriendsShowController`
