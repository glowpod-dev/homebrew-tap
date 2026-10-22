# Written by .github/scripts/packages.py in glowpod-dev/glowpod on each release.
class Glowpod < Formula
  desc "Kubernetes dashboard for developers and platform teams, web and terminal"
  homepage "https://glowpod.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.3.0/glowpod_0.3.0_darwin_arm64.tar.gz"
      sha256 "32a025d2682fc1ee30a84ffb4ce0e5dd4b4912b4802298e9541f43d25b8c9610"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.3.0/glowpod_0.3.0_darwin_amd64.tar.gz"
      sha256 "220cdd0a4dfbeddcaf2d5928fb7cfa0b8661e88b7bf85d664ce386b6bbc04e65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.3.0/glowpod_0.3.0_linux_arm64.tar.gz"
      sha256 "dcc0d64f5e5d4c7e958b2c0dd2b9c386b64175997ca788f147d370a28b3ab67f"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.3.0/glowpod_0.3.0_linux_amd64.tar.gz"
      sha256 "1953006b23323a51aec1e9fbee521b08abc6477b8a35d73b2cc4de38640750b2"
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
