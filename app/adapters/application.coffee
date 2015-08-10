`import DS from 'ember-data'`

ApplicationAdapter = DS.ActiveModelAdapter.extend
  namespace: 'api/v4'
  coalesceFindRequests: true

`export default ApplicationAdapter`
