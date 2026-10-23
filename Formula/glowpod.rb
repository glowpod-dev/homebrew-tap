# Written by .github/scripts/packages.py in glowpod-dev/glowpod on each release.
class Glowpod < Formula
  desc "Kubernetes dashboard for developers and platform teams, web and terminal"
  homepage "https://glowpod.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.7.0/glowpod_0.7.0_darwin_arm64.tar.gz"
      sha256 "206ddf6e078fb4ae29a1c51a623bb0989cfb1ed1da619de5768d870c55b1e47f"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.7.0/glowpod_0.7.0_darwin_amd64.tar.gz"
      sha256 "cdb6dc1331f206fa21e4bbd9da5532094c108b5b3fca5caefa594eddb5d9e57d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.7.0/glowpod_0.7.0_linux_arm64.tar.gz"
      sha256 "d7d0bbe75ec4cb375507cd5c9be08d1899d73fff69830a471f253c582a7aff20"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.7.0/glowpod_0.7.0_linux_amd64.tar.gz"
      sha256 "5b4134c21b7d58ba10d76311aed0ffbfe4e61bffd0b40a4ca39dbc43c37cc718"
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
