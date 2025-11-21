class AsimovImageModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-image-module"
  url "https://github.com/asimov-modules/asimov-image-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "2be6166b08c22fcec77cc62511592a947624be1dba1ef831899e32ba7e1792a5"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-image-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 2
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8811edc7c283cf13263d0dcc8f044b8efab37225f433f2b2c02048ee0dd0bb00"
    sha256 cellar: :any_skip_relocation, sequoia:       "f8904e6e48fac3b52debb5179ecc5fbf1fb7a87c86a468e06607787ce69258b3"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a4e90b33461da278dc2a515353d6975ca052a2c065560be944eb360db84374cd"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
