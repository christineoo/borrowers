`import Ember from 'ember'`

ArticlesArticleRowComponent = Ember.Component.extend
  tagName: 'tr'
  article: null #passed-in
  articleStates: null #passed-in
  actions:
      saveArticle: (article) ->
          this.sendAction 'save', article

`export default ArticlesArticleRowComponent`
