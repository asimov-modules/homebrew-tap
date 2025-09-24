class AsimovMlxModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-mlx-module"
  url "https://github.com/asimov-modules/asimov-mlx-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "534c9f623b848c339ca9a7b868db7681cf3ed3be96eddcb5a436d4ac35347a6b"
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
