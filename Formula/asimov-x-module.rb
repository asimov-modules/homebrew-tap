class AsimovXModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-x-module"
  url "https://github.com/asimov-modules/asimov-x-module/archive/refs/tags/0.2.4.tar.gz"
  sha256 "06990b56e04f81b4f604df428694806ee593d41373d6a5b770e1cd63d1a27ec2"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-x-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f669ae67ccc2eca3016a9a6e5abacad25ec1208e09d4c960e28d011d16a061b9"
    sha256 cellar: :any_skip_relocation, sequoia:       "c5a43bbcedf4828c8ff06924c4bf77b4dcf9878433f9ff3bf1b6bc9834ebacab"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "41b92c5467e675ec8bc0f53f3197254a48b1027105a412b1186414b923a3675c"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
