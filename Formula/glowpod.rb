# Written by .github/scripts/packages.py in glowpod-dev/glowpod on each release.
class Glowpod < Formula
  desc "Kubernetes dashboard for developers and platform teams, web and terminal"
  homepage "https://glowpod.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.6.0/glowpod_0.6.0_darwin_arm64.tar.gz"
      sha256 "e4baf6e78228627c7bb8d859ea6bb92444a43e0a3bfc50cec8db75426ff2cf7c"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.6.0/glowpod_0.6.0_darwin_amd64.tar.gz"
      sha256 "248f5526425ac2f95ba0bcb1380028e0194da985d22711fa8d33c2fe75bf1ddc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.6.0/glowpod_0.6.0_linux_arm64.tar.gz"
      sha256 "b0b7f6f17170b903f34677ec4b3d8f938d2bec13d5a2818d56b4f74c1f3cf142"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.6.0/glowpod_0.6.0_linux_amd64.tar.gz"
      sha256 "de8ecb3aafbf2158fabe5c0697e8bf095a177c45f27fb2554a1c5e468178ce9f"
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
