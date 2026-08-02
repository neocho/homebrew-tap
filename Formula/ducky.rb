# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.4.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.4.2/ducky-darwin-arm64.tar.gz"
      sha256 "6db183ed501fc1a8ea4667eda1c745b0db0c747609a2793f2ed8c785c9bcb4e2"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.4.2/ducky-darwin-amd64.tar.gz"
      sha256 "6b7c710501f846363a6f2526777959cd0ac8933921a31b2f8b322fd5c3ea4786"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.4.2", shell_output("#{bin}/ducky version")
  end
end
