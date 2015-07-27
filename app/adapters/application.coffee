`import DS from 'ember-data'`

ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v3'
  coalesceFindRequests: true

`export default ApplicationAdapter`
