`import Ember from 'ember'`

FriendsIndexController = Ember.Controller.extend

  queryParams: ['sortBy', 'sortAscending']
  sortAscending: true
  sortBy: 'firstName'

  actions:
      setSortBy: (fieldName) ->
          @set 'sortBy', fieldName
          @toggleProperty 'sortAscending'

          console.log 'Sorting by', fieldName
          console.log 'Sorting Asc?: ', @get 'sortAscending'

          false

`export default FriendsIndexController`
