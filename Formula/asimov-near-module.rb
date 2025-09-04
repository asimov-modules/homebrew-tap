class AsimovNearModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-near-module"
  url "https://github.com/asimov-modules/asimov-near-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "a53cb4d9acf3c515ebf8c20c2ef42edb742a7ee9c547e56ce2844ee9930b7531"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-near-module.git", branch: "master"

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
