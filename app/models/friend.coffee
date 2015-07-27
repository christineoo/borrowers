`import DS from 'ember-data'`

Friend = DS.Model.extend {
  articles: DS.hasMany 'articles'
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'
  email: DS.attr 'string'
  twitter: DS.attr 'string'
  totalArticles: DS.attr 'number'

  fullName: Ember.computed 'firstName', 'lastName', ->
      @get('firstName') + ' ' + @get('lastName')
}

`export default Friend`
