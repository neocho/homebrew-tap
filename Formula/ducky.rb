# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.4.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.4.3/ducky-darwin-arm64.tar.gz"
      sha256 "da16eb95adf15c0a0a1ae3cb29a66d5916e2e41ac59093de73ac550fdb50af3a"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.4.3/ducky-darwin-amd64.tar.gz"
      sha256 "3ce0e07d316cb3f2ecab117600c7348790dba962b68737422b1c84de1e68445a"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.4.3", shell_output("#{bin}/ducky version")
  end
end
