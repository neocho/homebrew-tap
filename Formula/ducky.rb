# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.7.0/ducky-darwin-arm64.tar.gz"
      sha256 "490c5a89835cc67fa22e769fcbd73f7811e5cdce65519be7bf295842f6b5bb69"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.7.0/ducky-darwin-amd64.tar.gz"
      sha256 "4dffa2fc2e52537605d308864042f07c741ca78713151afc363e92c404e25d90"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/ducky version")
  end
end
