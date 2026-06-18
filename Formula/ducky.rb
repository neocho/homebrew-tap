# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.1.0/ducky-darwin-arm64.tar.gz"
      sha256 "851e57937a4d086d2b11d7752156734982db00e9aaed616b36cd79e057a9ddf5"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.1.0/ducky-darwin-amd64.tar.gz"
      sha256 "717b329ca17f222fe3e7a8aa50e88b1f816c147ffce3cc8cec659b4a073d962e"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/ducky version")
  end
end
