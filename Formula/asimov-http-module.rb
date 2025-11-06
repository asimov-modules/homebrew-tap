class AsimovHttpModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-http-module"
  url "https://github.com/asimov-modules/asimov-http-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "7d7b024fa5bd92577d1d46b8521d8a909e524b39dd0e48f14d87ffb257884ec3"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-http-module.git", branch: "master"

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
