cask "iloader" do
  version "2.0.5"
  sha256 "88549aec93ca85b1c5da487e5ca471c789b6fff4cb9e1f744e6e66197f27edb0"

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
