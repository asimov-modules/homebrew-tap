class AsimovOllamaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ollama-module"
  url "https://github.com/asimov-modules/asimov-ollama-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "e4f14c4596c4860fd6d59af70eb8106868c2fd29fc66e2a1b3656eeb13dbcec1"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-ollama-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
