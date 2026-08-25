# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.5.0/ducky-darwin-arm64.tar.gz"
      sha256 "fb48ef07e48023b038e14efabd3c7e1fb44d2ab388a35f8cd0d743423cd447d9"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.5.0/ducky-darwin-amd64.tar.gz"
      sha256 "6781b39a5fed82200dabe778999200f9473449528ee6fc2187e886ddb1b58e06"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/ducky version")
  end
end
