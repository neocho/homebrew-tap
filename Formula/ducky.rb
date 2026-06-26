# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.2.1/ducky-darwin-arm64.tar.gz"
      sha256 "da8c9dea8ed591fa24ebf27ae3738d9fbf995ed750d86c88feaa13bb0cf356be"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.2.1/ducky-darwin-amd64.tar.gz"
      sha256 "a3e0741d13f26ee038d6f538d2f222a8041bf394ec57a2d2429e4130a898ea5a"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.2.1", shell_output("#{bin}/ducky version")
  end
end
