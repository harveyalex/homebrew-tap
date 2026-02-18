cask "logs-parser" do
  version "0.1.0"
  sha256 "d9e4bd064f88e1a8cdd594e4ddcddbffbca5de67a8607a500b1189195c4f8373"

  url "https://github.com/harveyalex/logs-parser/releases/download/v#{version}/logs-parser.dmg"
  name "Logs Parser"
  desc "Stream and filter Heroku logs"
  homepage "https://github.com/harveyalex/logs-parser"

  app "LogsParserDesktop.app"
end
