cask "latent-space" do
  arch arm: "arm64", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://github.com/bike-shed-io/latent-space-releases/releases/latest/download/latent-space-mac-#{arch}.zip",
      verified: "github.com/bike-shed-io/latent-space-releases/"
  name "Latent Space"
  desc "Virtual co-working desktop app with spatial audio and video"
  homepage "https://latent.bike-shed.io"

  app "Latent Space.app"

  zap trash: [
    "~/Library/Application Support/Latent Space",
    "~/Library/Preferences/io.bike-shed.latent-space.plist",
    "~/Library/Saved Application State/io.bike-shed.latent-space.savedState",
  ]
end
