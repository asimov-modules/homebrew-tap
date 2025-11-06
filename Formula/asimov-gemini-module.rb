class AsimovGeminiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-gemini-module"
  url "https://github.com/asimov-modules/asimov-gemini-module/archive/refs/tags/0.0.2.tar.gz"
  sha256 "9e0e9ed3effb9024662ee14d8d88023a66e699333d4f38153d39d7902c455842"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-gemini-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "7017889ef78a8ac04becd831b94c02a4f7da19eba40a574eef1bffe8a24b1590"
    sha256 cellar: :any_skip_relocation, sequoia:       "95502d88ff3835a72d2d577b4ff7fff3d2bb60eb36ca201a3736a7aefae25b43"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "52a4c70089b0c966f883f1689e5e03943d2cbc78fa5970b3a7e90868adf535df"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
