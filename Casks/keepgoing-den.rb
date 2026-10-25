cask "keepgoing-den" do
  version "0.3.0"
  sha256 "61f41c854b19334e2d8aba7952f75115e5847dbffe08ef456f50bba64f6550ef"

  url "https://github.com/keepgoing-dev/keepgoing-hub-releases/releases/download/v#{version}/KeepGoing-Den-#{version}.dmg"
  name "KeepGoing Den"
  desc "Menu bar Pomodoro timer that binds each project to its own desktop"
  homepage "https://keepgoing.dev/den"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "KeepGoing Den.app"

  uninstall quit: "dev.keepgoing.hub"

  zap trash: [
    "~/.keepgoing/hub",
    "~/Library/Caches/dev.keepgoing.hub",
    "~/Library/Preferences/dev.keepgoing.hub.plist",
    "~/Library/WebKit/dev.keepgoing.hub",
  ]

  caveats <<~EOS
    If you turned on the Claude Code statusline, turn it off in the Den before
    uninstalling, so your old statusline comes back. If you have a licence,
    deactivate this Mac in Settings first to free its seat.
  EOS
end
