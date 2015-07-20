`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'friends', ->
  @route 'friends/index'
  @route 'friends/new'

`export default Router;`
