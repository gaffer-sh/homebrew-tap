class Gaffer < Formula
  desc "Test analytics and intelligence for your CI pipeline"
  homepage "https://gaffer.sh"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.6.0/gaffer-aarch64-apple-darwin.tar.gz"
      sha256 "0b06496bd2113b6432e9825be145fa31a51908af777cf8e0e8f93dd17511f1cf"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.6.0/gaffer-x86_64-apple-darwin.tar.gz"
      sha256 "a133f97445a81001dffa867053c5cd0ea7216f0f123d5aed890946abbe67a57b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.6.0/gaffer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "243eb05dfdee14fbfb1717627ab883e7be0752398ddc9f8754356dd3b9e242d6"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.6.0/gaffer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf1e06b95b3e3fc0057d45abf14c6d2c140b4a4417542cad175f38a5d2a9cd1b"
    end
  end

  def install
    bin.install "gaffer"
  end

  test do
    assert_match "gaffer", shell_output("#{bin}/gaffer --version")
  end
end
