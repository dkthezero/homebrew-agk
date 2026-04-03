class Agk < Formula
  desc "A terminal-based vault management tool"
  homepage "https://github.com/dkthezero/agk"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.1.0/agk-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.1.0/agk-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.1.0/agk-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.1.0/agk-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "agk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agk --version")
  end
end
