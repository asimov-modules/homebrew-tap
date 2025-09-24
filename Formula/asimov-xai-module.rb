class AsimovXaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-xai-module"
  url "https://github.com/asimov-modules/asimov-xai-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "2d813abd15eab1bf6e683d0813057a0c7c3cbf8b43164b1cac2291b22c980d2f"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-xai-module.git", branch: "master"

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
