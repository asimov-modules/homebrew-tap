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

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
