`import Ember from 'ember'`

ArticlesIndexController = Ember.Controller.extend

  queryParams: ['show']
  possibleStates: ["borrowed", "returned"]

  contentDidChange:
      Ember.observer 'model.[]', ->
          console.log 'Called when we add or removed an article'

  stateDidChange:
      Ember.observer 'model.@each.state', ->
          console.log 'Called when the state property change for any of the articles.'

`export default ArticlesIndexController`
