`import { test, moduleForModel } from 'ember-qunit'`

moduleForModel 'friend', {
  # Specify the other units that are required for this test.
  needs: ['model:article']
}

test 'it exists', (assert) ->
  model = @subject()
  # store = @store()
  assert.ok !!model

test 'fullName joins first and last name', (assert) ->
    model = @subject({firstName: 'Syd', lastName: 'Barrett'})
    assert.equal (model.get 'fullName'), 'Syd Barrett'
    Ember.run ->
        model.set 'firstName', 'Geddy'
    assert.equal (model.get 'fullName'), 'Geddy Barrett', 'Updates fullName'

test 'articles relationship', (assert) ->
    klass = @subject({}).constructor
    relationship = Ember.get(klass, 'relationshipsByName').get 'articles'
    assert.equal relationship.key, 'articles'
    assert.equal relationship.kind, 'hasMany'
