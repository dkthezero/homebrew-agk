class Agk < Formula
  desc "A terminal-based vault management tool"
  homepage "https://github.com/dkthezero/agk"
  version "0.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.2.6/agk-v0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "01d8e78cf547b4c125d7528d6a0cfe2dd2e1002fe5a148884615df1489946431"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.2.6/agk-v0.2.6-x86_64-apple-darwin.tar.gz"
      sha256 "8cf167f3430ca2b48b6169af7f66b143be9d3407598131fb23920139fe351314"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.2.6/agk-v0.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aacfe3b4c7c0ff9c70f0e16ee16e968b83814b27207bd2714caca7c6f3d1b399"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.2.6/agk-v0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d31bc52df4659fabd4f3811009cdc6e38491d7e960156536f7c5965fb29cc400"
    end
  end

  def install
    bin.install "agk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agk --version")
  end
end
