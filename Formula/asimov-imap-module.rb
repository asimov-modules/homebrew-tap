class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.0.0.tar.gz"
  sha256 "a88fb6170685243d315cf9b443b6551807826248f3e1c22631daaaced55258e5"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
