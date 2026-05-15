class Agk < Formula
  desc "A terminal-based vault management tool"
  homepage "https://github.com/dkthezero/agk"
  version "0.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.2.5/agk-v0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "2b94601730929597020171f1534ff9adc83a371b178b41d47b8790543af17486"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.2.5/agk-v0.2.5-x86_64-apple-darwin.tar.gz"
      sha256 "62d633367fc4c55417b89c263daee2817ab5edd69788b23a9a5f43474fec9bcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dkthezero/agk/releases/download/v0.2.5/agk-v0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8549450063d75489d2cf12d0c7874018b8bf96c076ce03ab28f5124b1e340491"
    else
      url "https://github.com/dkthezero/agk/releases/download/v0.2.5/agk-v0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e3cdea2be052c75301367cbeb22163f2bc5014fab1d8e778e07b22dec180cf3"
    end
  end

  def install
    bin.install "agk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agk --version")
  end
end
