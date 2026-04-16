cask "latent-space" do
  version :latest
  sha256 :no_check

  depends_on arch: :arm64

  url "https://github.com/bike-shed-io/latent-space-releases/releases/latest/download/latent-space-mac-arm64.zip",
      verified: "github.com/bike-shed-io/latent-space-releases/"
  name "Latent Space"
  desc "Virtual co-working desktop app with spatial audio and video"
  homepage "https://latent.bike-shed.io"

  app "LatentSpace.app"

  zap trash: [
    "~/Library/Application Support/Latent Space",
    "~/Library/Preferences/io.bike-shed.latent-space.plist",
    "~/Library/Saved Application State/io.bike-shed.latent-space.savedState",
  ]
end
