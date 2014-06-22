CsvView = require './csv-view'

module.exports =
  csvView: null

  activate: (state) ->
    @csvView = new CsvView(state.csvViewState)

  deactivate: ->
    @csvView.destroy()

  serialize: ->
    csvViewState: @csvView.serialize()
