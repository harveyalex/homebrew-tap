cask "logs-parser" do
  version "0.2.0"
  sha256 "d8ecdc37a789e15a4b35f45ac2af0b3b3f83c6c39462afd849b337d4f0af8733"

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
