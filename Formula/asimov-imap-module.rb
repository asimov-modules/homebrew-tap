class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "337fc7b2190262d8b596dd7fc5c6c261fa88fed458a028251d947b4f7e8e6034"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "46b1910b850c982ffa253f6bdab557db140d41e425fa7383c2cd0a549e99ae1e"
    sha256 cellar: :any_skip_relocation, ventura:       "792776c158bc4369bc5d89462551df2366fc00bfe6ac1f512fcdf3e6c21e06f5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e8e65c1283073d1f5c96975051ffccbc7dba3830d2c8e7891fcdd787fd0e1e7c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
