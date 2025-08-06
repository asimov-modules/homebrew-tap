class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.1.6.tar.gz"
  sha256 "bc408cd89f1b3f8dfbfeba7c6f989f6cfbde9a406679d7241b1e540abbfb7e98"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "52fb3398a489183c491f1d913af4fed3ec40fc900553fe5f9177bc2fa81fe717"
    sha256 cellar: :any_skip_relocation, ventura:       "6271e2b4dd777a77bb7dfd0d1a5bac0caf5a703c795132093d8067ae84f269b7"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "c0c4f09c9b4ce5dccc88de78c34f84d4220b5d7f653a7859b611fa549cbb4e14"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
