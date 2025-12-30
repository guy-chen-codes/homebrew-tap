cask "iloader" do
  version "1.1.6"
  sha256 :no_check

  url "https://github.com/nab138/iloader/releases/latest/download/iloader-darwin-universal.dmg"
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
