class AsimovLumaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-luma-module"
  url "https://github.com/asimov-modules/asimov-luma-module/archive/refs/tags/0.1.4.tar.gz"
  sha256 "117077882d36282577519e93f5bc473ef60c1deef500622e78fe9397ca9ef67b"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-luma-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "689a71d9f9bb5303dcdbb417d9d56c405fb9e837581f37e2fc4e3c67b9011174"
    sha256 cellar: :any_skip_relocation, sequoia:       "354c7ee629aba59d3e7382e4c438461942fc568cc0a001d6946c5a29b532b956"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a8fb9d462c6aaf98ed40376b87e7903c7c15a11a13cd90a25fc9b1a79b250624"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
