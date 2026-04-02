cask "keepgoing" do
  version "1.5.3"
  sha256 "867f2274a2f3c7a410502970251456f183090a393e6b1fb5e935398575cc7ed2"

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
