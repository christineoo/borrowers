`import Ember from 'ember'`

ArticlesIndexController = Ember.Controller.extend

  queryParams: ['show']
  possibleStates: ["borrowed", "returned"]

`export default ArticlesIndexController`
