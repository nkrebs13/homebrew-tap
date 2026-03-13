cask "pomodaddy" do
  version "2026.3.4"
  sha256 "70cda344d2bfbfd929cf93460982020a6cf7aa9e00c8b5f786c890f9ee63b58b"

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
