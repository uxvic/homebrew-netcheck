cask "netcheck" do
  version "1.0.1"
  sha256 "4ca6407e3530400f40afc9e0a62e8155abe92474aa453b5c6de74f37d5e8647c"

  url "https://github.com/uxvic/NetCheck/releases/download/v#{version}/NetCheck-#{version}.dmg"
  name "NetCheck"
  desc "Menu bar internet reachability and live throughput monitor"
  homepage "https://github.com/uxvic/NetCheck"

  livecheck do
    url "https://github.com/uxvic/NetCheck/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true        # app self-updates via Sparkle
  depends_on macos: :sonoma  # macOS 14+ (minimum)

  app "NetCheck.app"

  zap trash: [
    "~/Library/Preferences/com.victoradedini.NetCheck.plist",
  ]
end
