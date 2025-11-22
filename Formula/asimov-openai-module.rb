class AsimovOpenaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-openai-module"
  url "https://github.com/asimov-modules/asimov-openai-module/archive/refs/tags/0.0.4.tar.gz"
  sha256 "ef5731f165a638a5fa031fdd392041262d249db84ad0ce7f181c7c043d664250"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-openai-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7766968944365ac1f725783c639280b846b1ca8d5f6ad05178350eb90928d4a1"
    sha256 cellar: :any_skip_relocation, sequoia:       "d2e9a7564c3f64efd6ee1ed3b26774fcb638901e6da5cfd499da6259aaf1291e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "36f9c5f2f91983ab55163ca57601d22a5462f3431e469ff5deb69dcb6397c6f6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
