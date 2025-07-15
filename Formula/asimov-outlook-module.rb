class AsimovOutlookModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-outlook-module"
  url "https://github.com/asimov-modules/asimov-outlook-module/archive/refs/tags/0.0.0.tar.gz"
  sha256 "12a09531cc4011897321167016434010c46581b75eeb5770177109f1bf9938b2"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-outlook-module.git", branch: "master"

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
