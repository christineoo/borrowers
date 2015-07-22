`import Ember from 'ember'`

ArticlesNewController = Ember.Controller.extend
  
  hasDescription: Ember.computed.notEmpty 'model.description'
  hasNotes: Ember.computed.notEmpty 'model.notes'
  isValid:
      Ember.computed.and 'hasDescription', 'hasNotes'

  actions:
      save: ->
          if @get('isValid')
            true
          else
             @set('errorMessage', 'You have to fill all the fields')
             false

      cancel: ->
          @transitionTo 'articles'

`export default ArticlesNewController`
