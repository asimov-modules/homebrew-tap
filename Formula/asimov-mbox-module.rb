class AsimovMboxModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-mbox-module"
  url "https://github.com/asimov-modules/asimov-mbox-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "e28a05870251a4a2df5254e22595b0d951f49dfd3debbc8156c337e550b25c46"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-mbox-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "aec76714b58294752347f95cc5c48df07ba4553bf116abb4bf1298119395eb84"
    sha256 cellar: :any_skip_relocation, ventura:       "09cdcbe4d26ccca98a282a37264f47f6801587555227637b09f72ce73b1fb658"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "71e211b8fbea72af564f70bd1addfb7f6f074a8cb0590d3f582cb5e6ab885c9f"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
