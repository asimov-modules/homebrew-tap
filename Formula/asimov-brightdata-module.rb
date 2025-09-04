class AsimovBrightdataModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-brightdata-module"
  url "https://github.com/asimov-modules/asimov-brightdata-module/archive/refs/tags/0.0.5.tar.gz"
  sha256 "eff3226476c1cdf68e8070049b7c420edfa70dbfc71f583921e5a6a52a101b63"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-brightdata-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "b129b315011022c1ef0c79eb312a8d952dd5783a8222e3ebb9f3d16760cb6d80"
    sha256 cellar: :any_skip_relocation, ventura:       "f00800d9b6ebd8d0b77f16a995abde6e49e485c5516787aacdd09924d86ba15e"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "dfcfa8ada5a535bed82917b14f9595e5fe31af0ba955345e6dc04659db151804"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
