cask "hiddify" do
  version "4.1.1"
  sha256 "2019c85aef259002909a088be7bfb28032bf9ce7f932ffa597fdfe3b4cbff914"

  url "https://github.com/hiddify/hiddify-app/releases/download/v#{version}/Hiddify-MacOS.dmg"
  name "Hiddify"
  desc "Multi-platform proxy client based on Sing-box"
  homepage "https://github.com/hiddify/hiddify-app"

  app "Hiddify.app"
end
