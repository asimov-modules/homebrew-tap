class AsimovJqModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-jq-module"
  url "https://github.com/asimov-modules/asimov-jq-module/archive/refs/tags/0.1.5.tar.gz"
  sha256 "23fb0c8118d1baebb88b2fec139920367b465959ee5764d7ca1874571e11a2cf"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-jq-module.git", branch: "master"

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
