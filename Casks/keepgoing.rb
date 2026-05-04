cask "keepgoing" do
  version "1.13.4"
  sha256 "3d0da5611c140259aee903622e33266bc83219dcabeba0ba8a8b091342d782cd"

  url "https://keepgoing.dev/dl/mac-zip?v=#{version}"
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
