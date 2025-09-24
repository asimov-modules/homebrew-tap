class AsimovAnthropicModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-anthropic-module"
  url "https://github.com/asimov-modules/asimov-anthropic-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "562eb7ab29bb1d1cdba636e17db2d48337be6a8badcbe6a6d7c68d0575c7c732"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-anthropic-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0398cd4e0e4632832a85d4a42da99bcfe68b8c1223357204655477183d2df2fe"
    sha256 cellar: :any_skip_relocation, sequoia:       "d04795c04e55691934082b4501b0085c9a1c498567ab746d36f782440d5b7863"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "22e5c6f3f50bcb301d0c4d126f09dae8af2f3229018d442b35f5e1dd637bab71"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
