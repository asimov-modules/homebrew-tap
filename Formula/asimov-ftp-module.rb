class AsimovFtpModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-ftp-module"
  url "https://github.com/asimov-modules/asimov-ftp-module/archive/refs/tags/0.1.1.tar.gz"
  sha256 "b77d8d5b2ad208bf568acacde72bb7cdfe781596fd516387a3f985515a633b88"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-ftp-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
