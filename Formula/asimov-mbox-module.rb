class AsimovMboxModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-mbox-module"
  url "https://github.com/asimov-modules/asimov-mbox-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "b56de8db20b70e920c2951bda05f6a78190528d061b4ae055c356ef2e7353875"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-mbox-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "00d1989707c0199e495b1500694b735cfe3ddff038e3d36410b61d43fc0e0a65"
    sha256 cellar: :any_skip_relocation, ventura:       "8ff62c9e669e354c1f897abdadd9ac8147adf0461b7a6be58fbda6b1bc10ba07"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "24db52bdf7c73c1c89f934842dffaf639702311b6a87012c07db4c2f6806940c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
