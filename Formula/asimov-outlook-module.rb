class AsimovOutlookModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-outlook-module"
  url "https://github.com/asimov-modules/asimov-outlook-module/archive/refs/tags/0.0.0.tar.gz"
  sha256 "12a09531cc4011897321167016434010c46581b75eeb5770177109f1bf9938b2"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-outlook-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "27f1d5ef4c25c1c98d458d6c5efe5c40e82309935ac5f2e7337d7b0a13094ed4"
    sha256 cellar: :any_skip_relocation, ventura:       "8e4fbfa67a971f895f78d9cba3129fd5509c2378da71839727ea41707ca6fa0b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "43be99dbf0e7a001c98cf85302ff9fe553949d42796031f891671fc07ce34571"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
