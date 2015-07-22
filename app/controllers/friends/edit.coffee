`import FriendsBaseController from './base'`

FriendsEditController = FriendsBaseController.extend

  actions:
      cancel: ->
          @transitionToRoute 'friends.show', @get('model')
          false

`export default FriendsEditController`
