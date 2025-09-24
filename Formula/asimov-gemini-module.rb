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

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
