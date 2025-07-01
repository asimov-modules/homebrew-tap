class AsimovChromiumModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-chromium-module"
  url "https://github.com/asimov-modules/asimov-chromium-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "066a0f81f03d3609e4d2aa65b6f7bfe01afeec8475c578b7ce3f3cf699de40b2"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-chromium-module.git", branch: "master"

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
