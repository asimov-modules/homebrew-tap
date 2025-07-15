class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.1.3.tar.gz"
  sha256 "59744a2c1a1d0657ea63e742dbf51f95fb43fe6d46e8c79bcc6a6356607de456"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5f4cd09b5090999edd18a7c5da1bda6e3c55f259f8881b10a9258b4b1b436d76"
    sha256 cellar: :any_skip_relocation, ventura:       "58fe9651d2f99ffb875449f36f27fc20e49abe1c921d4ff705aadce2d96e43a6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "6b7f2088b64cfd79ec3d1f6702328c38d2e5f31803adaeff935573aaac5d08ba"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
