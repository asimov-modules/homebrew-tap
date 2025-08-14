class AsimovSignalModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-signal-module"
  url "https://github.com/asimov-modules/asimov-signal-module/archive/refs/tags/0.0.1.tar.gz"
  sha256 "9d5d9b171b900806fa92f6d3a9f9ae22762c3d56831f92ecb36f1a9fc77d2e50"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-signal-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any,                 arm64_sequoia: "cf5d50e1f2a331c27c7c8606e646e4865a4223982e8d57fc308b4c881cf63744"
    sha256 cellar: :any,                 ventura:       "16576e1e7cb1b8aac1bfb409b71c4711758eb3f7d298f48e91be9047ffc7c19d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "38e99411f9b05c3bdc5125d26079c0fb6c9cd8ff054d72d3955847471f9c249b"
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
