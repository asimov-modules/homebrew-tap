class AsimovLumaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-luma-module"
  url "https://github.com/asimov-modules/asimov-luma-module/archive/refs/tags/0.1.2.tar.gz"
  sha256 "3b839879e4556afd999ac441e7d21ffe4833e8fb3e4f8afbca6753fec8ee2850"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-luma-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "de4cc439dd80038702a7a0b87a8fb4457af418185bbd06fd88141c93a34672dd"
    sha256 cellar: :any_skip_relocation, ventura:       "407eb509536b16844b91d9ec0792a9a8f64b996605660a6bbc9cccaf55fcb40d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "3ee6c56dfc75cc8728edc287958f53ba002ffc89c5de54441c97205683321903"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
