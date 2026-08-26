# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.6.0/ducky-darwin-arm64.tar.gz"
      sha256 "e42738799eba8441b1ebdd0a9860058c70abb29b70b5101e838e656ecc5a2e8d"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.6.0/ducky-darwin-amd64.tar.gz"
      sha256 "cb91f3e10e05790bbdd74b869643d06b578868e0360c80235286420ec66cf08c"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/ducky version")
  end
end
