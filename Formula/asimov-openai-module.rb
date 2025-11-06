class AsimovOpenaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-openai-module"
  url "https://github.com/asimov-modules/asimov-openai-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "c437326abd528775b9fa45e0600370a18e577f95d58acd07b0665cd6e29d7b58"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-openai-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "78101cc859bdb331d872336e62401d8550ee86cd54d9616edcc488a77f2eb35d"
    sha256 cellar: :any_skip_relocation, sequoia:       "c21ad601cb9109abce6cbcf641f845de77eed73d6eaf2bce8606d9584617ec3c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "9f57a1272d1790e438ead3928932c62a108e90a31401b9e4b20159e6476e1195"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
