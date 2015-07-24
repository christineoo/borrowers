`import Ember from 'ember'`
`import request from 'ic-ajax'`

IndexRoute = Ember.Route.extend
    model: ->
        request('/api/friends').then (data) =>
            friendsCount: data.friends.length

`export default IndexRoute`
