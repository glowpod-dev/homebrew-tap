# Written by .github/scripts/packages.py in glowpod-dev/glowpod on each release.
class Glowpod < Formula
  desc "Kubernetes dashboard for app developers and platform teams, in the browser and the terminal"
  homepage "https://glowpod.dev"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.2.0/glowpod_0.2.0_darwin_arm64.tar.gz"
      sha256 "6e582acf4e398491a11d20ee797cd395d40637bdbe657df14fc8bcd7386e4c2d"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.2.0/glowpod_0.2.0_darwin_amd64.tar.gz"
      sha256 "f8b53b11148508089b6203a3895eaa4ba7738a9b6dc470b70aa73ed34f4fc39b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.2.0/glowpod_0.2.0_linux_arm64.tar.gz"
      sha256 "d148d272d36795b6e8e1df265fc8e964f30fb1cdd040d86f3442b4999e3ff60e"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.2.0/glowpod_0.2.0_linux_amd64.tar.gz"
      sha256 "a143e1a1fd65f5bded75b8754e6358717a115c81c2f8b733513c33eb7cc5b2c1"
    end
  end

  def install
    bin.install "glowpod"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glowpod -version")
  end
end
