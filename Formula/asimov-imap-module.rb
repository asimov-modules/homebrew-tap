class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.1.4.tar.gz"
  sha256 "add8874e11b2e93b939beb43a4de86d109973153963d05a41f3556583c192739"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "385f48ec60ae3e925cde7275f77d78a273d56c83fcd0d116a1fb430881fad658"
    sha256 cellar: :any_skip_relocation, ventura:       "5c614b67ec84b8387b4c49a96097f1e5251be2c43afe8b8393317a87078e35fc"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "8b99f00502c81a451b69524643107c125c7967d8bfc2bbcf47f660a51c52a1c1"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
