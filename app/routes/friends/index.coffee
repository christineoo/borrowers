`import Ember from 'ember'`

FriendsIndexRoute = Ember.Route.extend

  queryParams:
      sortBy:
          refreshModel: true
      sortAscending:
          refreshModel: true

  model: (params) ->
          @store.findQuery 'friend', params

`export default FriendsIndexRoute`
