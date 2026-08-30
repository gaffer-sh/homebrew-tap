class Gaffer < Formula
  desc "Test analytics and intelligence for your CI pipeline"
  homepage "https://gaffer.sh"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.7.0/gaffer-aarch64-apple-darwin.tar.gz"
      sha256 "04c803edbcb712d56f940bfffecca2b358122f247d751b0031c121dbf1c9942b"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.7.0/gaffer-x86_64-apple-darwin.tar.gz"
      sha256 "2dbb3f3132fcc81125746b7cad3941853b11d22290e72a68b0aef4623fa4c40d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.7.0/gaffer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "598602670607a16340060e441508eb020eb85c760a886ce31658a70d70894729"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.7.0/gaffer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bad74446277ff39d16d2f1bbc96aad06d4814ad136d4827b8230c9d75dee1994"
    end
  end

  def install
    bin.install "gaffer"
  end

  test do
    assert_match "gaffer", shell_output("#{bin}/gaffer --version")
  end
end
