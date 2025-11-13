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

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f10c1855b5c617df8f300cba293a997b84e2932d19a280bdedc5e66b7002a23b"
    sha256 cellar: :any_skip_relocation, sequoia:       "253a186123e4361a103897f6fd1cb9cc07942e032c3afb32de591008098a5720"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "be1ce6b3d2d863779900dad4105dd7d528a5b20b7dd82d692feccd2957777ee8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
