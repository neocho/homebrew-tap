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
      sha256 "b1a58dc6d766def4c41742f6332694e7fa7e15d3f4651a4f6b94ef4d66ac18b5"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.1.1/ducky-darwin-amd64.tar.gz"
      sha256 "8cad6dcf960cada15d11c0d648b371d14ef7d98c8ae82809e0ee79410bba2764"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/ducky version")
  end
end
