class Gaffer < Formula
  desc "Test analytics and intelligence for your CI pipeline"
  homepage "https://gaffer.sh"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.1/gaffer-aarch64-apple-darwin.tar.gz"
      sha256 "8ef4f6067bc3ed95f3e3a71cd2d503d25d2786aca4920097a9ca23c2aa8182ec"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.1/gaffer-x86_64-apple-darwin.tar.gz"
      sha256 "4627652e3200231385f33b330de6f9c0d020ca84f15795edbc72a61fd7900d21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.1/gaffer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba9835a4a4bc4708e7d51cc4b23133129e4ed63656f50caf6d0c688869c9106f"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.1/gaffer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "979120afcbfa25110e14a7323bafee939f17b3be484457965bef81eee8c055a7"
    end
  end

  def install
    bin.install "gaffer"
  end

  test do
    assert_match "gaffer", shell_output("#{bin}/gaffer --version")
  end
end
