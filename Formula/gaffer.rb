class Gaffer < Formula
  desc "Test analytics and intelligence for your CI pipeline"
  homepage "https://gaffer.sh"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.9.0/gaffer-aarch64-apple-darwin.tar.gz"
      sha256 "95804ee5b253fb6f4f439521ab474b76ae9683c170cb61e99f7890886a87bdf1"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.9.0/gaffer-x86_64-apple-darwin.tar.gz"
      sha256 "90b192181d805308570468ed712680d049ddd0390117dccf8ff115cb90654e42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.9.0/gaffer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b66408d319299b8ce4f48a887988c9881b4b980f2524acde58bc54dfddcf3b3"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.9.0/gaffer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cffbccad06aabb2c7b50e2b2b6b278ea78ab0608b738d666b24c60a7ccfa116e"
    end
  end

  def install
    bin.install "gaffer"
  end

  test do
    assert_match "gaffer", shell_output("#{bin}/gaffer --version")
  end
end
