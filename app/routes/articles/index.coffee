`import Ember from 'ember'`

ArticlesIndexRoute = Ember.Route.extend

  model: ->
      @modelFor('friends/show').get('articles')

  actions:
      save: (model) ->
          model.save()
          false

`export default ArticlesIndexRoute`
