`import Ember from 'ember'`

FriendsEditController = Ember.Controller.extend

  isValid:
      Ember.computed 'model.email', 'model.firstName', 'model.lastName', 'model.twitter', ->
          !Ember.isEmpty(@get('model.email')) && !Ember.isEmpty(@get('model.firstName')) && !Ember.isEmpty(@get('model.lastName')) && !Ember.isEmpty(@get('model.twitter'))

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
          this.transitionToRoute 'friends.show', @get('model')
          false

`export default FriendsEditController`
