class AsimovCameraModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-camera-module"
  url "https://github.com/asimov-modules/asimov-camera-module/archive/refs/tags/0.0.3.tar.gz"
  sha256 "fea4105b63544d50225afc483624264a79118a082503833ef93f1f63b83ede16"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-camera-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "865f3880946dcc848138edabf0a99863fad665a2df1c20e3f4fb83345ec383a8"
    sha256 cellar: :any_skip_relocation, sequoia:       "c7e4650a57800f761f96dd4f953c79d496cdd4f6960eb44cc49ffa75bee0caaa"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "f641983c3b70afc076b8f0e759ae5d4971214be321ce493385ec0f4e9f251add"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
