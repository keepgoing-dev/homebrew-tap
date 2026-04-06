cask "keepgoing" do
  version "1.9.1"
  sha256 "f8fbd8edd4f0d2a0b559c9cdcca5bba43d35f32c72c6cebde8e870353f039f3d"

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
