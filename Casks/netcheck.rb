cask "netcheck" do
  version "1.0.3"
  sha256 "92bcc3d6bfe600a56d6c79cb42cb63249320325de2ed92f58bdde676895902c3"

  url "https://github.com/uxvic/NetCheck/releases/download/v#{version}/NetCheck-#{version}.dmg"
  name "NetCheck"
  desc "Menu bar internet reachability and live throughput monitor"
  homepage "https://github.com/uxvic/NetCheck"

  livecheck do
    url "https://github.com/uxvic/NetCheck/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true        # app self-updates via Sparkle
  depends_on macos: ">= :sonoma"  # macOS 14+ (minimum) — bare :sonoma means EXACTLY 14 and blocks 15/26+

  app "NetCheck.app"

  zap trash: [
    "~/Library/Preferences/com.victoradedini.NetCheck.plist",
  ]
end
