`import dateHelpers from '../../../utils/date-helpers'`
`import { module, test } from 'qunit'`

module 'Utils: formatDate'

test 'formats a date object', (assert) ->
    date = new Date "11-3-2015"
    result = dateHelpers.formatDate date, 'ddd MMM DD YYYY'
    assert.equal result, 'Tue Nov 03 2015', 'returns a readable string'
