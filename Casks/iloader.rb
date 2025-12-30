cask "iloader" do
  version "1.1.6"
  sha256 "d59c3702f43772852f001776b5271563c885ee2f6e68d3811bc2624cfef9b8fc"

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
