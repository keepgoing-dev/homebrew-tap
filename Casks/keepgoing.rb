cask "keepgoing" do
  version "1.13.2"
  sha256 "fad9b9a9a5e8c2d9607790d7acbd95da8ef513903cb5e9b8d7facd76a9bbd9aa"

  url "https://github.com/keepgoing-dev/releases/releases/download/desktop-tray-v#{version}/KeepGoing-#{version}.zip"
  name "KeepGoing"
  desc "System tray companion for KeepGoing.dev"
  homepage "https://keepgoing.dev"

  app "KeepGoing.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/KeepGoing.app"]
  end

  zap trash: [
    "~/.keepgoing/tray-config.json",
    "~/.keepgoing/keepgoing-global.db",
  ]
end
