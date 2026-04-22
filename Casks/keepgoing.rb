cask "keepgoing" do
  version "1.13.3"
  sha256 "a6a049de8aec5e329550cb03b4c9848cd3e756a9d8340be78c77016e7f20d455"

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
