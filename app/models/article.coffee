`import DS from 'ember-data'`

Article = DS.Model.extend {
  friend: DS.belongsTo('friend')
  createdAt: DS.attr 'date'
  description: DS.attr 'string'
  notes: DS.attr 'string'
  state: DS.attr 'string', defaultValue: 'borrowed'
}

`export default Article`
