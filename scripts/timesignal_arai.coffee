cronJob = require('cron').CronJob
time = require('time')

module.exports = (robot) ->
    
    cronjob = new cronJob(
        cronTime: "0 7-12,15,18,21 * * *"
        start:    true
        timeZone: "Asia/Tokyo"
        onTick: ->
            now = new time.Date()
            robot.send {room: "#arai"}, "<@新井> "+now.getHours()+"時"+now.getMinutes()+"分ですよ！新井さんおきて！！"
        )
