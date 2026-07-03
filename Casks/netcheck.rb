cask "netcheck" do
  version "1.0.5"
  sha256 "d296a020b2d5999f7ea2ac63666a7d8a4368c57acc657f4229d9286f70863c89"

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
