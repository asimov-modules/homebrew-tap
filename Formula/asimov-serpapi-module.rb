class AsimovSerpapiModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-serpapi-module"
  url "https://github.com/asimov-modules/asimov-serpapi-module/archive/refs/tags/0.1.3.tar.gz"
  sha256 "0db66a62715cb718f7cdc1cf09148b8aafa1ba122b0854934b3bd0b5b5bd621b"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-serpapi-module.git", branch: "master"

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
