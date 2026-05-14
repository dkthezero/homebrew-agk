class Agk < Formula
  desc "A terminal-based vault management tool"
  homepage "https://github.com/dkthezero/agk"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.2.3/agk-v0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "b59cbb5ea6102b17c24b7bb629314077a9a948304bf2708709d32147117913ae"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.2.3/agk-v0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "225264b59a4aeefc2c3cd56b6739238bb11bd98e67f59501889178846af7ac7a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.2.3/agk-v0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a1b7e8bb9810d6d09e35208b8f8c8b7c26341bfe8634659ceffc150213b47c1"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.2.3/agk-v0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd95a45dd9b07b9523083c2c8919f6c42d4320d3d450e5fc51292fa09feb2f81"
    end
  end

  def install
    bin.install "agk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agk --version")
  end
end
