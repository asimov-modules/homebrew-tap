class AsimovXModule < Formula
  desc "To Be Filled"
  homepage "https://github.com/asimov-modules/asimov-x-module"
  url "https://github.com/asimov-modules/asimov-x-module/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "9b43ca8bf2c071feb39d9f5fcff93515d62a7dd45b36e909adaca9df443a42a4"
  license "Unlicense"
  head "https://github.com/asimov-modules/asimov-x-module.git", branch: "master"

  livecheck do
    url :stable
    strategy :github_latest
  end

  bottle do
    root_url "https://ghcr.io/v2/asimov-modules/tap"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ae060403c6fbd77b43a66ae70c708d6cd520ddee90c88244eb00595ba72d75d9"
    sha256 cellar: :any_skip_relocation, ventura:       "9ea2c3ef4ebb84a5c706509eaece8f1f5c7f6c44a46ecacced2832ac3c00bb5f"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "40b4d8e66e51aa465ef2a59c6148884b3f37e2abe91dc84c623187156e0c7ab0"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert true
  end
end
