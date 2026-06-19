# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.1.1/ducky-darwin-arm64.tar.gz"
      sha256 "1a16b808bd33a3db755cc10b59bd7c80c04b6249c14945e6250eb6437bbda095"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.1.1/ducky-darwin-amd64.tar.gz"
      sha256 "91906df27d610b4b1f03d9bbdb5762cc504dee89cbf533ffd7a9aaa60ec4b907"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/ducky version")
  end
end
