# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.2.0/ducky-darwin-arm64.tar.gz"
      sha256 "da0bfbf41ac5fba3e7e389d10de86ed168390a8b7ccac9812c8ca88d1633aa55"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.2.0/ducky-darwin-amd64.tar.gz"
      sha256 "0226188f09b8f0d5a4f1fdff4a716ceddb3d96f355b52b336d898b1d9f08a898"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/ducky version")
  end
end
