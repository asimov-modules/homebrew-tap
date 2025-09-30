class AsimovOpenaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-openai-module"
  url "https://github.com/asimov-modules/asimov-openai-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "2617e567668eadadd71c0db0419731be3b1c706e09061258fe636047a7244c61"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-openai-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "916b6bb19b382f59e5355c91948bb3b8b7d34608e70afa06ac612d3298690de2"
    sha256 cellar: :any_skip_relocation, sequoia:       "a974efcd907e1776dffbea47455d08e6c74f044ba407313aaa7232afd59f7e37"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "e9398cfb070c03f1dbd5d426a83ea1bdb46f41cf7e8aeb724539fce96c27f7ad"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
