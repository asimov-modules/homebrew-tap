class AsimovOllamaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ollama-module"
  url "https://github.com/asimov-modules/asimov-ollama-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "1a133dd26ad43cdf7ce7161864a7aa6b11debf45496aede4087fb3af53955c3d"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-ollama-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "4701186bd9a91a101cec020f452178b18ffa73af8a1f1a73dd74c1ea4a32f047"
    sha256 cellar: :any_skip_relocation, sequoia:       "0d56cccb57bdaacc34d28ebea657c3d54ea1df331e93a329b415a9d8ca9e7485"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a7af4bdb44c781b04f6108d6dc970486253d893102cb05053451681e211ca390"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
