cask "keepgoing" do
  version "1.14.0"
  sha256 "adcc024f02489e5948f1c54b7c0b5a4206070d210b0437fc7e8d29b67bc3f637"

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
