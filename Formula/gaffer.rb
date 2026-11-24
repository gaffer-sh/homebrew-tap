class Gaffer < Formula
  desc "Test analytics and intelligence for your CI pipeline"
  homepage "https://gaffer.sh"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.2/gaffer-aarch64-apple-darwin.tar.gz"
      sha256 "930d715cf0919bbdad459edb4c4b657c1764b22fac62b8a2ea5e38230b5f2411"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.2/gaffer-x86_64-apple-darwin.tar.gz"
      sha256 "235b73d26f4c80c5c838f3416d9b871dd633ac39978f3878c530137a75d0c710"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.2/gaffer-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "33be94e3c45565fb4a5af13ae2ab3208c92608250db63938cb43d8a44b74e343"
    end
    on_intel do
      url "https://github.com/gaffer-sh/gaffer/releases/download/cli-v0.10.2/gaffer-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f827992a62a2f2c8c4a6c3105a2a17864120c71d43e3848d61d8e022eda2161f"
    end
  end

  def install
    bin.install "gaffer"
  end

  test do
    assert_match "gaffer", shell_output("#{bin}/gaffer --version")
  end
end
