cask "comet" do
  version "141.0.7390.23964"
  sha256 "934fc0fda211bc692dc62b73845cc2544872e6f195fa75ef6dd52a2cdc2103b2"

  url "https://www.perplexity.ai/rest/browser/binaries/#{version}/comet_latest.dmg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=9d06dad57704bf499ceb71a8730b22e4%2F20251025%2Fauto%2Fs3%2Faws4_request&X-Amz-Date=20251025T215511Z&X-Amz-Expires=300&X-Amz-Signature=8b9b75db46d4c7dbd392f0669fbc7a6769be31096d62e16c5dace01e268609f4&X-Amz-SignedHeaders=host&x-amz-checksum-mode=ENABLED&x-id=GetObject"
  name "comet"
  desc "A Chromium-based browser that integrates AI capabilities powered by Perplexity."
  homepage "https://www.perplexity.ai/comet"

  livecheck do
    skip "Comet does not support livecheck mechanism"
  end

  auto_updates false

  depends_on macos: ">= :monterey"

  app "Comet.app"

  # No zap stanza found via `nrlquaker/createzap` 
  # Recommend using `AppCleaner.app` for uninstalling
  # zap trash: ""
end
