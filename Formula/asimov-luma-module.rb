class AsimovLumaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-luma-module"
  url "https://github.com/asimov-modules/asimov-luma-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "7bc8b3c0447ab20d313d2de6cf3dbddcec9eb52aa63064242e3073543168449b"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-luma-module.git", branch: "master"

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
