class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "23938455b37cc2c2e69286ec19e5d396913577b5e665a7e0b7a83ed7872a6c07"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3508f5b71825c376efcec2e23338cf67581f588165414c5ce5e48c3affccce2e"
    sha256 cellar: :any_skip_relocation, ventura:       "97fab5090c57ff87fb97d658c849f0d3d60179ec6c848d5197714099dced57f8"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c4c2c111fbb7545bdf7f4a7d1785f9964058d7d12fca5672d2bf6cca0d54d8fb"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
