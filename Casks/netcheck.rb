cask "netcheck" do
  version "1.0.4"
  sha256 "12aa686fd8efdbc72094fe5c3e41d892f7a3d5ae6153c1f0e02f8afef8e35e88"

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
