cask "pomodaddy" do
  version "2026.3.4"
  sha256 "de155d60010637ee18b6ef16fb98cc85e941d8c6efdc747ac0d0be9a4854aedf"

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
