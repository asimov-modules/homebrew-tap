class AsimovMicModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-mic-module"
  url "https://github.com/asimov-modules/asimov-mic-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "c777a085070c8ea5897a79c63a67ed13a2fb8fe7e98da13a334b3de17401a1d0"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-mic-module.git", branch: "master"

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
