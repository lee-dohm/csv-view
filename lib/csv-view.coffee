{View} = require 'atom'

module.exports =
class CsvView extends View
  @content: ->
    @div class: 'csv-view overlay from-top', =>
      @div "The CsvView package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "csv-view:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "CsvView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
