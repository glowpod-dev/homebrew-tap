# Written by .github/scripts/packages.py in glowpod-dev/glowpod on each release.
class Glowpod < Formula
  desc "Kubernetes dashboard for developers and platform teams, web and terminal"
  homepage "https://glowpod.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.8.0/glowpod_0.8.0_darwin_arm64.tar.gz"
      sha256 "18b3dfaa7d3a035a36cd9f12172fa2acdc4a3e04449d71e3adf5ef83ff3b097d"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.8.0/glowpod_0.8.0_darwin_amd64.tar.gz"
      sha256 "c9cfe17c3502c18241a2d823e39e9ce21a4eee9343601a10a3f7fb9813a0a264"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.8.0/glowpod_0.8.0_linux_arm64.tar.gz"
      sha256 "f6604fcde6cf93d9348d3bfe716947eeb48bf6e13849ccb60180fa9ef587ca5a"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.8.0/glowpod_0.8.0_linux_amd64.tar.gz"
      sha256 "b758537f96857e1e761792adcc73ea480d26feed7e8601c01d041d408e7891a9"
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
