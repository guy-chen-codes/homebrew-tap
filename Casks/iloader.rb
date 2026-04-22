cask "iloader" do
  version "2.2.4"
  sha256 "9e9954a517419250b852a0a359c437f182042b2f07ddaa19e3fb19855f472f37"

  url "https://github.com/nab138/iloader/releases/download/v#{version}/iloader-darwin-universal.dmg"
  name "iLoader"
  desc "Firmware loader tool"
  homepage "https://github.com/nab138/iloader"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "iLoader.app"

  zap trash: [
    "~/Library/Application Support/iLoader",
    "~/Library/Saved Application State/com.flipperdevices.iloader.savedState",
  ]
end
