cask "keepgoing" do
  version "1.13.1"
  sha256 "8058ead07b07e044bff54aad7911794a4e49274f28c59b7dbeb938bc999dde60"

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
