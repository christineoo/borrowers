`import FriendsBaseController from './base'`

FriendsNewController = FriendsBaseController.extend

  actions:
      cancel: ->
          @transitionToRoute 'friends.index'
          false

`export default FriendsNewController`

