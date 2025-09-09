class AsimovLumaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-luma-module"
  url "https://github.com/asimov-modules/asimov-luma-module/archive/refs/tags/0.1.3.tar.gz"
  sha256 "e0e310459197fda63b774c310d2d5e1be1ec9b8144f460da1b79dbf000b9cb18"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-luma-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "aa22eb1c80f20c75f2b84ce123c89f51be0b8004f11daea6fb8f2bee107212c4"
    sha256 cellar: :any_skip_relocation, ventura:       "940ac420ead96e580ce7ecda0dde9df2a54a1e70472c838123d80ec74e290303"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "268cc8133540319e767ee6fa86a482d0eaa70c0fc641678d10678009329ed9d4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
