class AsimovBrightdataModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-brightdata-module"
  url "https://github.com/asimov-modules/asimov-brightdata-module/archive/refs/tags/0.0.6.tar.gz"
  sha256 "6a8a5da931ae7bbdbcd55fbd8fd3f916e6fc16cd3528516e6f2bc293e5c93eb2"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-brightdata-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f5d6096ace99decc78fc6fbf4b86ef16d86602789de069b0d31514bfe786acdd"
    sha256 cellar: :any_skip_relocation, sequoia:       "de122b125910794ebd07157c21173447afb899ee6469e88bb49403968eea9a4e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9891ecfb61f9bfb206e35c104fe081e47ad98b80c67afa119dbfe2fbf65997a8"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
