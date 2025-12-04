class AsimovAppleModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-apple-module"
  url "https://github.com/asimov-modules/asimov-apple-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "e1b08a33191897b78d4fe4ee4ddc11ddbcb7ac00d9f6fa81a2892394d8cf00fd"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-apple-module.git", branch: "master"

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
