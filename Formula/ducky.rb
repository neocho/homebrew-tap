# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.7.0/ducky-darwin-arm64.tar.gz"
      sha256 "9a018b0a07284d591847adff536f6af8842a79bb3d77ff0c2aced0a0761fa2e7"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.7.0/ducky-darwin-amd64.tar.gz"
      sha256 "c11973e13e7f36292f3e82d5de7cde4219f27f3816156e7544e03babb1c6c4a8"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/ducky version")
  end
end
