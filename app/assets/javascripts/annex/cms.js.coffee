ready = ->
  # on click of .redactor, fire up a redactor instance
  $("body").on "dblclick", ".redactor", ->
    unless $(this).hasClass("redactor-editor")
      $(this).redactor
        focus: true
        buttonSource: true
        plugins: [
          "definedlinks"
          "fontsize"
          "fontcolor"
          "table"
          "filemanager"
          "imagemanager"
          "video"
          "clips"
          "fullscreen"
          "save"
        ]
        toolbarFixed: false
        formatting: ['p', 'blockquote', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6']
        formattingAdd: [
          {
            tag: 'pre'
            title: 'pre'
          }
          {
            tag: 'code'
            title: 'code'
          }
        ]

    return

$(document).ready(ready)
$(document).on('page:load', ready)
