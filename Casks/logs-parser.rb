cask "logs-parser" do
  version "0.1.1"
  sha256 "27250930d7fe785d2ee1de7138ba3b5a6a422fe072b83711574c160a5ff92c61"

  url "https://github.com/harveyalex/logs-parser/releases/download/v#{version}/logs-parser.dmg"
  name "Logs Parser"
  desc "Stream and filter Heroku logs"
  homepage "https://github.com/harveyalex/logs-parser"

  app "LogsParserDesktop.app"
end
