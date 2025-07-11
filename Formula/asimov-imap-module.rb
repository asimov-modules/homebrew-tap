class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "4eee61d4343b903861558f5bf9a7b7c1cbc239f3e80074452645ef61278b48d7"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "caf04d195c6068e977239d34251183aba0a88327c009a93658e75e7e31ff2dbf"
    sha256 cellar: :any_skip_relocation, ventura:       "4efcc7a3d6f7015d33b5038c137e4d138234e7232f41cd22380f1197258d942b"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "89964ef94956f42f88a9feae5b92ea4e16fb23a83197f5b8323e79ca5cdcdf42"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
