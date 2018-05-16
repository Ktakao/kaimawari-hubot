cronJob = require('cron').CronJob

module.exports = (robot) ->
    cronjob = new cronJob(
    cronTime: "0 7,9,12,15,18,21 * * *"
    start:    true
    timeZone: "Asia/Tokyo"
    onTick: ->
        robot.send {room: "#arai"}, "@新井 "+now.getHours()+"時"+now.getMinutes()+"分ですよ！新井さんおきて！！"
    )
