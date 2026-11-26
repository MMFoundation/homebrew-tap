cask "ohmyshot" do
  version "0.5.0"
  sha256 "52059826a6c43bf7d7fec5689e94b030e5f39aabfeafbabe99c08c5154dc4fb1"

  url "https://github.com/MMFoundation/OhMyShot/releases/download/v#{version}/OhMyShot-#{version}.dmg"
  name "OhMyShot"
  desc "Screenshot, screen recording, annotation, pin, and on-device OCR tool"
  homepage "https://www.ohmyshot.org/"

  livecheck do
    url "https://www.ohmyshot.org/updates/appcast"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "OhMyShot.app"

  uninstall quit: "io.github.fzlzjerry.ohmyshot"

  zap trash: [
    "~/Library/Application Scripts/io.github.fzlzjerry.ohmyshot.share",
    "~/Library/Application Support/io.github.fzlzjerry.ohmyshot",
    "~/Library/Caches/io.github.fzlzjerry.ohmyshot",
    "~/Library/Caches/io.github.fzlzjerry.ohmyshot.text-reader",
    "~/Library/Containers/io.github.fzlzjerry.ohmyshot.share",
    "~/Library/HTTPStorages/io.github.fzlzjerry.ohmyshot",
    "~/Library/Preferences/io.github.fzlzjerry.ohmyshot.plist",
    "~/Library/Saved Application State/io.github.fzlzjerry.ohmyshot.savedState",
  ]
end
