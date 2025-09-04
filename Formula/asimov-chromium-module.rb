class AsimovChromiumModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-chromium-module"
  url "https://github.com/asimov-modules/asimov-chromium-module/archive/refs/tags/0.1.2.tar.gz"
  sha256 "feb4ac1f9ae33af3fbdcc416aca63de5f473972a0e9df8922f48896f905bb450"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-chromium-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "25bf0bb94471ce2ad952481a9a1ee12222eea1d5ec5b9b686b0b985c1b054168"
    sha256 cellar: :any_skip_relocation, ventura:       "efc3432f786b6b3b652dc7e5b1733008e1ebc4c9f1ee95dc5d7a633b6eeecff1"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "890bb5b570ef5abf7cfe0a03079958562d5f3805d86c1a9523b0149137611ee4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
