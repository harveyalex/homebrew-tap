cask "logs-parser" do
  version "0.1.3"
  sha256 "c613909b738f985a8330fa76d514593a02cc3c3e6c64727556f8b38f2e5279de"

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
