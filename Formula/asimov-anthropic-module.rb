class AsimovAnthropicModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-anthropic-module"
  url "https://github.com/asimov-modules/asimov-anthropic-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "5944b7b925011d71347e611574ff708d263ea68635a2fcd01729b3d306291534"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-anthropic-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e138a51d3de278ea2acce250807b8704ef7d16ddab0ec592e08ab551492c9324"
    sha256 cellar: :any_skip_relocation, sequoia:       "292d1a1c9fdf18d758ab9a945fb1e48bd42449071ea5e29a9f9cbe7764e874e5"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0658549a56580493bf8c7a43dc98255e02d2f7e86c339f5be62b3524bb81bdc1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
