cask "keepgoing" do
  version "1.5.1"
  sha256 "2c24554803fbfda50275bf3450fac3a737c82dc8c25baef7edc22f7647d18160"

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
