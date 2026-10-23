# Written by .github/scripts/packages.py in glowpod-dev/glowpod on each release.
class Glowpod < Formula
  desc "Kubernetes dashboard for developers and platform teams, web and terminal"
  homepage "https://glowpod.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.7.1/glowpod_0.7.1_darwin_arm64.tar.gz"
      sha256 "ba69906f07ce5cce9eb8162ddff2425f4bfea71677d198b1d8abad1d35de27cc"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.7.1/glowpod_0.7.1_darwin_amd64.tar.gz"
      sha256 "e4c0d8219550f82aa70bc1fd9b47ce557a2ec2d09f8b93a613a1e37229002c13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.7.1/glowpod_0.7.1_linux_arm64.tar.gz"
      sha256 "1e006992401bf631aafb88b32af010cc1b2a4debe3978a2c4897a1d469419358"
    end
    on_intel do
      url "https://github.com/glowpod-dev/glowpod/releases/download/v0.7.1/glowpod_0.7.1_linux_amd64.tar.gz"
      sha256 "e2b5604a8259ecc2bbf11e9131082820c11f2acaa367fe18bee0d0cf3a985260"
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
