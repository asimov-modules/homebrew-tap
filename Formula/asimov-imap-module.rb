class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.1.7.tar.gz"
  sha256 "26f38ad2961e4378e8513b58f5a997bdf6e3d4097e4e96894301817f97445247"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3b2d4de4e179c10677675e71faee18f5739fe8370933b3bb57a03b814d2e6b25"
    sha256 cellar: :any_skip_relocation, ventura:       "d6c3162184a97b38608803fe33ff4666a1197dccde45529392ba406891aaea55"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "11220734869c78033dcc4e908da30a71da26a2145d2dfb78ccb82ee9b5bf4d3d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
