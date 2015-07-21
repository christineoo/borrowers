`import DS from 'ember-data'`

ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v2'

`export default ApplicationAdapter`
