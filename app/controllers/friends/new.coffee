`import FriendsBaseController from './base'`

FriendsNewController = Ember.Controller.extend

  actions:
      cancel: ->
          this.transitionToRoute 'friends'
          false

`export default FriendsBaseController`

