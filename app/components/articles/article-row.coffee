`import Ember from 'ember'`

ArticlesArticleRowComponent = Ember.Component.extend
  tagName: 'tr'
  article: null #passed-in
  articleStates: null #passed-in

  autoSave: ->
      article = @get('article')
      if !article.get('isNew')
          @sendAction 'save', article

  stateChanged: Ember.on 'init', Ember.observer 'article.state', ->
      article = @get('article')
      if article.get('isDirty') && !article.get('isSaving')
          Ember.run.once this, @autoSave

`export default ArticlesArticleRowComponent`
