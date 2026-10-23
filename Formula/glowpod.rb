# Written by .github/scripts/packages.py in glowpod-dev/glowpod on each release.
class Glowpod < Formula
  desc "Kubernetes dashboard for developers and platform teams, web and terminal"
  homepage "https://glowpod.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.5.0/glowpod_0.5.0_darwin_arm64.tar.gz"
      sha256 "fb6a5677f31896224bbff0958ffaa27a22374643005a36c1f9915dff4878dc71"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.5.0/glowpod_0.5.0_darwin_amd64.tar.gz"
      sha256 "de0fc4f285702daef4e2e82afd48add647eb1ecc8d11c9dd5fdcc2cb21b3ccc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.5.0/glowpod_0.5.0_linux_arm64.tar.gz"
      sha256 "0db20ef5f52d74bd4dbbfbadb151859d4e93d79859f2844f372fd3ae23a4c191"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.5.0/glowpod_0.5.0_linux_amd64.tar.gz"
      sha256 "8f602fbd6ee1a9050e20906478d2aa21574cfd2eba53e435d4106059c32a4e7e"
    end
  end

  def install
    bin.install "glowpod"
  end

  test do
    # 2>&1: before 0.3.0 the version went to stderr.
    assert_match version.to_s, shell_output("#{bin}/glowpod -version 2>&1")
  end
end
