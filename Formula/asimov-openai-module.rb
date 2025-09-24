class AsimovOpenaiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-openai-module"
  url "https://github.com/asimov-modules/asimov-openai-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "cc17eab9b0e4182652fa53c2df454521733df99196497e9a84b5c5846d8f555d"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-openai-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bfaada852690dcb5592c82652150b10c4dd66babcb7d4374c39e47e12df3ca7b"
    sha256 cellar: :any_skip_relocation, sequoia:       "5d1b240817d734d96027272a45ed2a36c3874594ac872ddf43ff62a209f8df1d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6ccb527ccd55cb5c90e92e65174a4a3f9dce45cb2d501425d90306e0d0c8e788"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
