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

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
