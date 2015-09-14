

module.exports = (robot) ->


  robot.respond /roll (.*)/i, (msg) ->

    dieType = msg.match[1]
    dieNumber = dieType[1..]
    
    selection = Math.floor(Math.random() * dieNumber) + 1
    
    if selection == dieNumber
      msg.reply "CRITICAL HIT: #{selection}"
    else if selection == 1
      msg.reply "CRITICAL MISS: 1"
    else
      msg.reply "#{selection}"