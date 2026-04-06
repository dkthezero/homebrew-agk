class Agk < Formula
  desc "A terminal-based vault management tool"
  homepage "https://github.com/dkthezero/agk"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.1.2/agk-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "91c2808ec0c68d5faf9efbb68d676458fd602d8b94a3d3d4581c94343864fb70"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.1.2/agk-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "092a8086e5278537a2726fedab4be41c35a9cefd2fb980528c44c5b8ed8fc3f1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.1.2/agk-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8732c3e17eed0cad6808a4861eefbfb088a78e8a7bea7f8ffffed2cd46ea2d82"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.1.2/agk-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "588103d5fcff06f18bb618458dd35adbf5872f6741732321a98cb4372392ffa8"
    end
  end

  def install
    bin.install "agk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agk --version")
  end
end
