class AsimovApifyModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-apify-module"
  url "https://github.com/asimov-modules/asimov-apify-module/archive/refs/tags/0.1.4.tar.gz"
  sha256 "b2340a6c46cb5050e945135fdde19a5e35accb7810e3212f35748032251a4c21"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-apify-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "73a72af031834e93bbaa00935a0c114e8aa6895b71d2b6bcae6728b3090d11ab"
    sha256 cellar: :any_skip_relocation, sequoia:       "24d88c4d22aafe0c67fb3e01882554988706d77c415dbd0cbb2453fef8d27123"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "96a58abd7b7c9b72eeea9068c76f00308b612d6d53f5a32307784e990c9855fa"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
