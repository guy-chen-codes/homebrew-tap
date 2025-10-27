cask "comet" do
  version :latest
  sha256 :no_check

  url ENV["HOMEBREW_CASK_DOWNLOAD_URL"] || "https://www.perplexity.ai/rest/browser/binaries/141.0.7390.23964/comet_latest.dmg"
  name "Comet"
  desc "Chromium-based browser with integrated AI features by Perplexity"
  homepage "https://www.perplexity.ai/comet"

  depends_on macos: ">= :monterey"

  app "Comet.app"

  postflight do
    puts "Comet installed successfully. 🚀"
  end

  uninstall quit: "ai.perplexity.comet"

  zap trash: [
    "~/Library/Application Support/Comet",
    "~/Library/Preferences/ai.perplexity.comet.plist",
    "~/Library/Saved Application State/ai.perplexity.comet.savedState",
  ]
end
