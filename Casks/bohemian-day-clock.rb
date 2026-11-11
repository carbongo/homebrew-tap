cask "bohemian-day-clock" do
  version "2.2.0"
  sha256 "55a0de809649c8bfcb115254f30a276a69a99bbf4afcda9947f9008c4d576850"

  url "https://github.com/carbongo/bohemian-day-clock/releases/download/v#{version}/Bohemian-Day-Clock_#{version}_macos-universal.dmg"
  name "Bohemian Day Clock"
  desc "24-hour daylight clock with sunrise and sunset for your city"
  homepage "https://github.com/carbongo/bohemian-day-clock"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Bohemian Day Clock.app"

  # Ad-hoc signed, not notarised: clear quarantine so Gatekeeper lets it open.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Bohemian Day Clock.app"]
  end

  zap trash: [
    "~/Library/Application Support/io.github.carbongo.bohemian-day-clock",
    "~/Library/Caches/io.github.carbongo.bohemian-day-clock",
    "~/Library/WebKit/io.github.carbongo.bohemian-day-clock",
    "~/Library/WebKit/pake-bohemiandayclock",
  ]
end
