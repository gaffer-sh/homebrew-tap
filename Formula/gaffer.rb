class Gaffer < Formula
  desc "Test analytics and intelligence for your CI pipeline"
  homepage "https://gaffer.sh"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.0/gaffer-aarch64-apple-darwin.tar.gz"
      sha256 "329e19b3ffae11f53eed7d8ad61a43b8455679264679f3b5fabbeac6338274e8"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.0/gaffer-x86_64-apple-darwin.tar.gz"
      sha256 "c495427dc12764700c50721ed059ea74bf300e19f42f990ebbfaf4490403c125"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.0/gaffer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6eb9790814bfcbaeb400f3a3ec557cb360acf659b26897bd50cff27cf07c531c"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.0/gaffer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48fbe11191d38ca51ee071b6c643ac33326fb1c9eb709ac02b26b1fa70e8975f"
    end
  end

  def install
    bin.install "gaffer"
  end

  test do
    assert_match "gaffer", shell_output("#{bin}/gaffer --version")
  end
end
