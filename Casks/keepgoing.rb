cask "keepgoing" do
  version "1.10.0"
  sha256 "4700313968d9cc4893c1a20766a3a3457f6f2a1318737b7783aa2b444b17a5b5"

  url "https://github.com/keepgoing-dev/releases/releases/download/desktop-tray-v#{version}/KeepGoing-#{version}.dmg"
  name "KeepGoing"
  desc "System tray companion for KeepGoing.dev"
  homepage "https://keepgoing.dev"

  app "KeepGoing.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/KeepGoing.app"]
  end

  zap trash: "~/.keepgoing/tray-config.json"
end
