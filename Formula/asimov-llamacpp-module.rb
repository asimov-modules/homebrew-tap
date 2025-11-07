class AsimovLlamacppModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-llamacpp-module"
  url "https://github.com/asimov-modules/asimov-llamacpp-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "c546e606e79aaeba94c4b0d517c48537031b44da17b92cbcb8e03f5049feec52"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-llamacpp-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "89e32c16a36d284bbb67f494084bfd8f166d6155276dfc46cd35a0bb05a8009b"
    sha256 cellar: :any_skip_relocation, sequoia:       "1e0b1d511c838fe5fcf295d69eb9be86080ec626a50d7a7c4d131047504f02c8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f543da1daa746704b6b588c0dfb06250ce33fc5e7f09a448bbff4f063505dc24"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
