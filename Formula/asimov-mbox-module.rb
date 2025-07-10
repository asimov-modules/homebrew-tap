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

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
