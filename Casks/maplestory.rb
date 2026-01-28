cask "maplestory" do
  version :latest
  sha256 :no_check

  url "https://download2.nexon.net/gms/mac/live/MapleStory.pkg",
      verified: "download2.nexon.net/"
  name "MapleStory"
  desc "MMORPG Game"
  homepage "https://maplestory.nexon.net/"

  container type: :naked

  pkg "MapleStory.pkg"

  uninstall pkgutil: "com.nexon.maplestory"
end
