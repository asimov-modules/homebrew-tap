class AsimovSolanaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-solana-module"
  url "https://github.com/asimov-modules/asimov-solana-module/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "43c836df256963e7bb466e7d2424b1b2185598d2afcc13447bf39dcac9e6666c"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-solana-module.git", branch: "master"

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
