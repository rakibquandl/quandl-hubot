# Description:
#   Get a stock price
# Commands:
#   hubot quandl_stock <ticker> - Get a stock price from Quandl

module.exports = (robot) ->
  robot.respond /quandl_stock\s([A-Za-z0-9.-_]+)/i, (msg) ->
    ticker = escape(msg.match[1])
    msg.http('http://www.quandl.com/api/v1/datasets/GOOG/NASDAQ_'+ticker+'.json?auth_token=pW3zsCjf8HLAEzxcEAHB')
     .get() (err, res, body) ->
       result = JSON.parse(body)
       msg.send "Latest Stock Price for #{ticker}"
       msg.send result['column_names']
       msg.send result['data'][0]










				


		

		