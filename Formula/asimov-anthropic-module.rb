class AsimovAnthropicModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-anthropic-module"
  url "https://github.com/asimov-modules/asimov-anthropic-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "562eb7ab29bb1d1cdba636e17db2d48337be6a8badcbe6a6d7c68d0575c7c732"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-anthropic-module.git", branch: "master"

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
