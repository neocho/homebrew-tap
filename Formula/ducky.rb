# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.4.0/ducky-darwin-arm64.tar.gz"
      sha256 "fee6f03e1ddc8ce9988f608cee545ed0a8700b0dd1a38cd5791d46e969039251"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.4.0/ducky-darwin-amd64.tar.gz"
      sha256 "fbaa3c5b2090bc6e3807342934130407a470eb8dd13db2eebff8fb37b6e46ad8"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/ducky version")
  end
end
