`import FriendsBaseController from './base'`

FriendsEditController = Ember.Controller.extend

  actions:
      cancel: ->
          this.transitionToRoute 'friends.show', @get('model')
          false

`export default FriendsBaseController`
