class AsimovSignalModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-signal-module"
  url "https://github.com/asimov-modules/asimov-signal-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "9d5d9b171b900806fa92f6d3a9f9ae22762c3d56831f92ecb36f1a9fc77d2e50"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-signal-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build
  depends_on "openssl" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
