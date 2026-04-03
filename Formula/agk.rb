class Agk < Formula
  desc "A terminal-based vault management tool"
  homepage "https://github.com/dkthezero/agk"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.1.1/agk-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "42ccc755c5deeca4806d5b12250d0711679ba5b144d985306abc6b42f2408296"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.1.1/agk-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "e8fb8bc8bcf7df32d332de379531484c3b68c97cbb93c1a9751ecd1f8bb80745"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.1.1/agk-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "70219c2ba09c4f2f3d931475821d2e95e4c69a8fb7b1248343734512603cac0e"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.1.1/agk-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ad88437920b5dfa381d8e8b0960243a545f92b6184ab089b1fefd9622bd103e"
    end
  end

  def install
    bin.install "agk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agk --version")
  end
end
