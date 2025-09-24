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

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
