class AsimovSignalModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-signal-module"
  url "https://github.com/asimov-modules/asimov-signal-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "35a266fe76095e65d427c939b20ebfd3610784c886e0efe8d956c7b92b664e72"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-signal-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any,                 arm64_sequoia: "79a334a12b178ffa401984f01e260691b129c6860f69d03fd405238475e4aa46"
    sha256 cellar: :any,                 ventura:       "e4c319976c823f1d334bdaee571d8e245294fb1da7dae17e0b09145daf4bc38f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "25f9e649cc9e9eb182659cc91009fae3cd5e4842b8bbc1cf25888b7322ba12de"
  end

  depends_on "openssl" => :build
  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
