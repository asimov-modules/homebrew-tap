class AsimovImapModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-imap-module"
  url "https://github.com/asimov-modules/asimov-imap-module/archive/refs/tags/0.1.5.tar.gz"
  sha256 "d929a7bca27c3b5331acc450e47c81cfa6f033b6fa33db2893141eaa4e4f54c9"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-imap-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0dcd0879c8057b9a57b3beb04405236d3ae2e3d589733d5b19d74ea96461d2be"
    sha256 cellar: :any_skip_relocation, ventura:       "dd58999a587758b39fcef2e4bc2605d002d8cde3bc213beaf5486db4c8d1f4ef"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "ee22366a379cfa618e80a9d0df5cfd88c236c101c20e60d5fdb4ed4e432c9333"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
