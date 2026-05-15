cask "stretch" do
  version "1.0.0"

  if Hardware::CPU.intel?
    sha256 "b6b5d95321bbc84bf87ff7c1604066962fcbb7e7e34d38dcccf5696b79c8d846"
    url "https://github.com/praveensankar969/stretch/releases/download/latest/Stretch-#{version}-x64.dmg"
  else
    sha256 "67404871119505e3ef675504ac0d9c9e3235340b72335eb0c85ececc004f3cb4"
    url "https://github.com/praveensankar969/stretch/releases/download/latest/Stretch-#{version}-arm64.dmg"
  end
  name "Stretch"
  desc "A calm, local-only stretch reminder"
  homepage "https://github.com/praveensankar969/Stretch"

  app "Stretch.app"

  zap trash: [
    "~/Library/Application Support/Stretch",
    "~/Library/Preferences/com.stretchapp.in.plist",
  ]
end
