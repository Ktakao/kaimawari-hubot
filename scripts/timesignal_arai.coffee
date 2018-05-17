cronJob = require('cron').CronJob
time = require('time')

module.exports = (robot) ->
    
    cronjob = new cronJob(
        cronTime: "0 7-14,15,18,21 * * *"
        start:    true
        timeZone: "Asia/Tokyo"
        onTick: ->
            now = new time.Date()
            robot.send {room: "#arai"}, "<@UAMV4J400> "+now.getHours()+"時ですよ！新井さんおきて！！"
        )
