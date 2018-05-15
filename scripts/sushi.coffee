module.exports = (robot) ->
  robot.hear /すし/i, (res) ->
    res.send res.random ["すしはしんだ","すしはいない","おれがすしだ","かねかえせ"]

  robot.hear /おやすみ/i, (res) ->
    res.send res.random ["おやすみなさい :heart: "]