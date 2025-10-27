cask "comet" do
  version "latest"
  sha256 :no_check  # Since URL changes each run

  url ENV.fetch("HOMEBREW_CASK_DOWNLOAD_URL") do
    verified "perplexity.ai/"
  end

  name "Comet"
  desc "Chromium-based browser with integrated AI features by Perplexity"
  homepage "https://www.perplexity.ai/comet"

  auto_updates true
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
