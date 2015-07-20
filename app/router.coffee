`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'friends', ->
    @route 'index'
    @route 'new'
    @route 'show', path: ':friend_id'

`export default Router;`
