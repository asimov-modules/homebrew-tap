class AsimovSerpapiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-serpapi-module"
  url "https://github.com/asimov-modules/asimov-serpapi-module/archive/refs/tags/0.1.4.tar.gz"
  sha256 "e43779a299b965602ceaac0f37279697edb9c73a3da5fb95989f1edcd648f8a7"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-serpapi-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f920220e74919351a33fb932de4a3db4827ae0f0067e34f7f204af361f56713f"
    sha256 cellar: :any_skip_relocation, sequoia:       "270ab9a73141a190a612ff092cb97b8fff7fca5f7a7da96701dbda1d67de4832"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a009a418c2f09fa2667de4afc79a5241862206d32c7e454afd32ef252e54d1d4"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
