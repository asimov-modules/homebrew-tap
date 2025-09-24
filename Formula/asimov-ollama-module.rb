class AsimovOllamaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ollama-module"
  url "https://github.com/asimov-modules/asimov-ollama-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "828b574298ca97b7f994abe3648f05482789f1ccc872723d367341be2d607577"
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
