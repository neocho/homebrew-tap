# Formula/ducky.rb — the Ducky CLI tap formula.
# Installs the prebuilt macOS binaries from this tap's cli-v* releases.
#   brew install neocho/tap/ducky
class Ducky < Formula
  desc "Record a login session so Ducky can demo behind your app's login"
  homepage "https://tryducky.dev"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.3.0/ducky-darwin-arm64.tar.gz"
      sha256 "b03a7c23ea28b180530e336291cb4c4b822b0b5bc255a3cb063cb21604a69012"
    else
      url "https://github.com/neocho/homebrew-tap/releases/download/cli-v0.3.0/ducky-darwin-amd64.tar.gz"
      sha256 "1223f8b5fbe09c994153a9d62bb3a78795b9d84f9dcecd0cb042b038dea61715"
    end
  end

  def install
    bin.install "ducky"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/ducky version")
  end
end
