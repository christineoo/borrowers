`import moment from 'npm:moment'`

formatDate = (date, format) ->
    moment(date).format(format)

`export { formatDate }`
