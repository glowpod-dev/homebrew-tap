# Written by .github/scripts/packages.py in glowpod-dev/glowpod on each release.
class Glowpod < Formula
  desc "Kubernetes dashboard for developers and platform teams, web and terminal"
  homepage "https://glowpod.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.4.0/glowpod_0.4.0_darwin_arm64.tar.gz"
      sha256 "eb6afdbbdf02a3f78070fca2d9a03d75ca1515f9905616ba90414cae1171e017"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.4.0/glowpod_0.4.0_darwin_amd64.tar.gz"
      sha256 "782393026208b9aff3a8b22b89987927df92a14ed546bbb33e8b818b576863a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.4.0/glowpod_0.4.0_linux_arm64.tar.gz"
      sha256 "0289716ae0a9a4b35866796a606db8ce2083a11f6e2f257a955ebc12c388d8be"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.4.0/glowpod_0.4.0_linux_amd64.tar.gz"
      sha256 "032b6367143d104d9e831a0577172c08def6142bc280e7722d34b5f7059fa7a7"
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
