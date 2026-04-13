cask "pomodaddy" do
  version "2026.3.5"
  sha256 "d88e3370f1c8970595280d160a2893503579867c5a586e3a4104464c0ccad5c1"

  url "https://github.com/nkrebs13/PomoDaddy/releases/download/v#{version}/PomoDaddy-#{version}.dmg"
  name "PomoDaddy"
  desc "Playful macOS Pomodoro timer that lives in your menu bar"
  homepage "https://github.com/nkrebs13/PomoDaddy"

  depends_on macos: ">= :sonoma"

  app "PomoDaddy.app"

  zap trash: [
    "~/Library/Application Support/PomoDaddy",
    "~/Library/Preferences/com.nathankrebs.pomodaddy.plist",
  ]
end
