class AsimovNearaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-nearai-module"
  url "https://github.com/asimov-modules/asimov-nearai-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "c15d2ed2607e4322d485365f9d5044323c57833b16c9530a6a5f419194991224"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-nearai-module.git", branch: "master"

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
