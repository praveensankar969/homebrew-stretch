cask "stretch" do
  version "1.0.0" 
  sha256 "67b5762985b7006ce01773b3f9496f0939a162c77e14c97b51037f0601a291e6"

  url "https://github.com/praveensankar969/Stretch/releases/download/v#{version}/Stretch-#{version}.dmg"
  
  name "Stretch"
  desc "A calm, local-only stretch reminder for macOS"
  homepage "https://stretchapp.in"

  app "Stretch.app"

  zap trash: [
    "~/Library/Application Support/Stretch",
    "~/Library/Preferences/com.stretchapp.in.plist",
    "~/Library/Saved Application State/com.stretchapp.in.savedState",
  ]
end
