`import Ember from 'ember'`

FriendsBaseController = Ember.Controller.extend
  hasEmail: Ember.computed.notEmpty 'model.email'
  hasFirstName: Ember.computed.notEmpty 'model.firstName'
  hasLastName: Ember.computed.notEmpty 'model.lastName'
  hasTwitter: Ember.computed.notEmpty 'model.twitter'

  isValid:
      Ember.computed.and 'hasEmail', 'hasFirstName', 'hasLastName', 'hasTwitter'

  actions:
      save: ->
          if @get('isValid')
              _this = this
              @get('model').save().then (friend) =>
                  _this.transitionToRoute 'friends.show', friend
          else
              @set('errorMessage', 'You have to fill all the fields')
          false

      cancel: ->
          true

`export default FriendsBaseController`
