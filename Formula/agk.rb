class Agk < Formula
  desc "A terminal-based vault management tool"
  homepage "https://github.com/dkthezero/agk"
  version "0.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.2.4/agk-v0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "ac83dc0953c71b6661661303475848b07872bfa24b821dedb6d8dbb8634782aa"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.2.4/agk-v0.2.4-x86_64-apple-darwin.tar.gz"
      sha256 "db395763bd071d3a4062635656e9b4478c7c497e2f87db9cd4ea0f0aa21ffadb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.2.4/agk-v0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bee71f9f33fd845717a5fe8b2485d4888ef125ec643ec144602f07661dcc8bbf"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.2.4/agk-v0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87ad7a05e3690ec6ae046ca25f262dd2573a7821ce9d59c4e065a9fbdaa6723a"
    end
  end

  def install
    bin.install "agk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agk --version")
  end
end
