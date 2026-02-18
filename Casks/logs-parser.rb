cask "logs-parser" do
  version "0.1.2"
  sha256 "ebd3a34db861dd0d63150f32d214182eb899508c4cd6161bab36b4c13d394cf0"

  url "https://github.com/harveyalex/logs-parser/releases/download/v#{version}/logs-parser.dmg"
  name "Logs Parser"
  desc "Stream and filter Heroku logs"
  homepage "https://github.com/harveyalex/logs-parser"

  app "LogsParserDesktop.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/LogsParserDesktop.app"]
  end
end
