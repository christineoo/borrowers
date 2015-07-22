`import Ember from 'ember'`

ArticlesNewRoute = Ember.Route.extend
  model: ->
      @store.createRecord 'article',
          friend: @modelFor 'friends/show'

  actions:
      save: ->
          _this = this
          model = @modelFor 'articles/new'
          model.save().then =>
              _this.transitionTo 'articles'

      cancel: ->
          @transitionTo 'articles'

`export default ArticlesNewRoute`
