class AsimovCameraModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-camera-module"
  url "https://github.com/asimov-modules/asimov-camera-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "dfb576359de92910d6570112812b56bf5a620d22d86cd290b1b9466d1a0021d1"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-camera-module.git", branch: "master"

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
