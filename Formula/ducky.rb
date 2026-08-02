# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.4.1/ducky-darwin-arm64.tar.gz"
      sha256 "cc13e8ed3277195f36f5b406830c4c34b876cfdd25a14208cc4b0789a2a4a51d"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.4.1/ducky-darwin-amd64.tar.gz"
      sha256 "8b00cdde7d9e5eae451507c34453d029f1f2a12b07d07806d2801f56dfbbb9e9"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.4.1", shell_output("#{bin}/ducky version")
  end
end
