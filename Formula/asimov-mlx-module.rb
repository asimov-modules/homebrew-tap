class AsimovMlxModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-mlx-module"
  url "https://github.com/asimov-modules/asimov-mlx-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "856f80b817fde1eeb36cd469b6147d64ef526792cd7f6073c1866a21e7e4b081"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-mlx-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2bd97139ed385c51f88869fa92a4d6b166adfa4a35ae5b66103d3e0dcc6c347b"
    sha256 cellar: :any_skip_relocation, sequoia:       "55530bee1c63b888aa33ddf968720c869b7b696c52ce04964b745526467bc6cf"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "3b064e92811f80c47c065e99d339a9824fe2f050693506e7a036bcfe43bc9541"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
