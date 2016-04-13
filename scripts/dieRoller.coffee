

module.exports = (robot) ->


  robot.respond /roll d[0-9]+/i, (msg) ->

    dieNumber = msg.match[0].match(/[0-9]+/i)[0]

    
    selection = Math.floor(Math.random() * dieNumber) + 1
    
    if selection == dieNumber
      msg.reply "CRITICAL HIT: #{selection}"
    else if selection == 1
      msg.reply "CRITICAL MISS: #{selection}"
    else
      msg.reply "#{selection}"