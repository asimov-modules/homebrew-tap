class AsimovBrightdataModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-brightdata-module"
  url "https://github.com/asimov-modules/asimov-brightdata-module/archive/refs/tags/0.0.5.tar.gz"
  sha256 "eff3226476c1cdf68e8070049b7c420edfa70dbfc71f583921e5a6a52a101b63"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-brightdata-module.git", branch: "master"

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
