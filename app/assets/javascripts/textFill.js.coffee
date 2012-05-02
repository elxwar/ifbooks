(($) ->
  $.fn.textfill = (maxFontSize) ->
    maxFontSize = parseInt(maxFontSize, 10)
    @each ->
      ourText = $("span", this)
      parent = ourText.parent()
      maxHeight = parent.height()
      maxWidth = parent.width()
      fontSize = parseInt(ourText.css("fontSize"), 10)
      multiplier = maxWidth / ourText.width()
      newSize = (fontSize * (multiplier - 0.1))
      ourText.css "fontSize", (if (maxFontSize > 0 and newSize > maxFontSize) then maxFontSize else newSize)
) jQuery