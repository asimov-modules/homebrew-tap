class AsimovVcardModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-vcard-module"
  url "https://github.com/asimov-modules/asimov-vcard-module/archive/refs/tags/0.0.0.tar.gz"
  sha256 "cf31bc84cacb1b3faeef6cf76f4ddbfd150437f9907d52623d75fe6e95a4b158"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-vcard-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "805f5e21a08a72885072d7bf9dcfa5f137fda0acab5c7bdb00e8cdc5cb054986"
    sha256 cellar: :any_skip_relocation, ventura:       "1f044b724dce1ec4d96cdb7161098b44054f6b602431e450d0dc032a03be5ddc"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "2df08c9c693c02a01aff0eb23d01ed00af2cfd2971976062cf4ebc24bfd9a2b2"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
