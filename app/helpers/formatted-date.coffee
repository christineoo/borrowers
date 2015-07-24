`import Ember from 'ember'`
`import { formatDate } from '../utils/date-helpers'`

# This function receives the params `params, hash`
formattedDate = (params) ->
  return params

FormattedDateHelper = Ember.HTMLBars.makeBoundHelper (formattedDate) ->
    date = formattedDate[0]
    format = formattedDate[1]
    formatDate(date, format)

`export default FormattedDateHelper`
