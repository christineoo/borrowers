`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'friends', ->
    @route 'index'
    @route 'new'
    @route 'show', path: ':friend_id', ->
        @resource 'articles', ->
            @route 'new'
    @route 'edit', path: ':friend_id/edit'
  @route 'articles/index'

`export default Router;`
