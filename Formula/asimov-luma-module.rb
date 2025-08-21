class AsimovLumaModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-luma-module"
  url "https://github.com/asimov-modules/asimov-luma-module/archive/refs/tags/0.1.0.tar.gz"
  sha256 "7bc8b3c0447ab20d313d2de6cf3dbddcec9eb52aa63064242e3073543168449b"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-luma-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    rebuild 1
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0f0651439313f46e7992bd88fb5224308fe7ce1fe586e3c3762d8312f066d26f"
    sha256 cellar: :any_skip_relocation, ventura:       "07aa56f4634b8d1a303769edc5801aa1afdeece5dc4d4acb5c0422006af16fba"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "a287dc90b37e869c6d5477c18ea051f6f9cadeff15eba7aa490a44ec26dbbe27"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
