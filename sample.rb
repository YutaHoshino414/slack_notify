require 'dotenv'
Dotenv.load
require "slack-notify"
require 'clockwork'
include Clockwork
# ここに、slackにメッセージを送る処理を書き込む。
client = SlackNotify::Client.new(webhook_url: ENV['WEBHOOK_URL'])

# client = SlackNotify::Client.new(
#   webhook_url: "https://hooks.slack.com/services/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",
#   channel: "#general",
#   username: "mybot",
#   icon_url: "http://mydomain.com/myimage.png",
#   icon_emoji: ":shipit:",
#   link_names: 1
# )

# client.notify("Hello There!")

handler do |job|
  puts "Running #{job}"
  client.notify("Hello There!")
end

every(3.minutes, 'less.frequent.job')