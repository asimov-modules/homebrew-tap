class AsimovGeminiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-gemini-module"
  url "https://github.com/asimov-modules/asimov-gemini-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "c4a60f15cf85127b6e4161f5b003d6c31adf3d7149e250ddd12553cfaf487b17"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-gemini-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0badedb5eacc8179cafcf83375dcadd76294718b6b9d273021550b6aa0298e6c"
    sha256 cellar: :any_skip_relocation, sequoia:       "eb40945c14c6268873a7a1f1efa350e033be4b96ea2fdf5562c7c083eb4295a2"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c9194d6660602b20c9a57e684ac551a88529b1221577768bcf7ca885e19025af"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
