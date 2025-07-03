class AsimovChromiumModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-chromium-module"
  url "https://github.com/asimov-modules/asimov-chromium-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "b5cc5c5e3b014eafe676e7a3511baf4a3e4d4017e171edb75d9c59c61322487e"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-chromium-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0d5c6fb4a799a11248d272e4a8e7344dede2cc5bcac07a555a343f3fae41a112"
    sha256 cellar: :any_skip_relocation, ventura:       "f94afeb92106914f9f0d3024aa68e7881157ee2484e987bfce94ed9c54bc2737"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "24b4266f2f799a915774a8097c4cb5d6bf1a6e521975cf2a1bb7c2fbd99d13c9"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
