class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "65193dcdd4a6acd35d52c6009b137747a0e11cffbdca95ec8d21e36a392a688a"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "2f8fef3b160e115210cfad2c28039b7ab9795f8a053260fec0ee104016f44c1f"
    sha256 cellar: :any_skip_relocation, ventura:       "ed15a38d2c6cb3ba58164cac35d1bbdad841be4b75348db780fc27ca7417d26c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "4d87482a5d6e0cba663138c1c766c0c28807f107034b7dece9296aed22e728be"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
