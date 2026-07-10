cask "netcheck" do
  version "1.0.7"
  sha256 "c2b6997d4cdb0fc52d58b1aa68064e4ee8722bbdb472399f6ae24672dc1c045d"

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
