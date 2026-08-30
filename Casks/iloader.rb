cask "iloader" do
  version "2.3.1"
  sha256 "91dc2b658fc1f4921dfb086e7799087153b48fd5925dad435fa90e564222298b"
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
