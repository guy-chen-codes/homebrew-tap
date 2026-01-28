cask "maplestory" do
  version :latest
  sha256 :no_check

  url "https://download2.nexon.net/gms/mac/live/MapleStory.pkg?file=NexonLauncherSetup.exe&client-id=undefined"
  name "MapleStory"
  desc "MMORPG Game"
  homepage "https://maplestory.nexon.net/"

  pkg "MapleStory.pkg"

  uninstall pkgutil: "com.nexon.maplestory"
end
