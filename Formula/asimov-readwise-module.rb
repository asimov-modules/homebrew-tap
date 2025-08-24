class AsimovReadwiseModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-readwise-module"
  url "https://github.com/asimov-modules/asimov-readwise-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "37e9ca90d4a78e701721988e38e3cd422394b677b69c1a37e7b578bde314ceae"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-readwise-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e5c1ad9c8bf714ad1849df5343966760b78e901c0630151f45c8223cb31e74e3"
    sha256 cellar: :any_skip_relocation, ventura:       "9a7bab790fc5198041ecab7882213bec2085d476f2e3e080dc9e30041eea41d6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "fec0d5fa9badf049e15a70146f91e3eacf4b8622bc439291ead04ae798ecd1f6"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
