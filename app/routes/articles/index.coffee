`import Ember from 'ember'`

ArticlesIndexRoute = Ember.Route.extend

  model: ->
      @modelFor('friends/show').get('articles')

`export default ArticlesIndexRoute`
