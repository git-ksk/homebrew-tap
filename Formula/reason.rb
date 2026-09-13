class Reason < Formula
  desc "Provider-neutral reasoning CLI with evidence-bound verification"
  homepage "https://github.com/git-ksk/reasoning-harness"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.1/reason-v0.5.1-macos-aarch64.tar.gz"
      sha256 "118efc6ba60978701c8f420608580109982207b7b026a6f71ee7118d5e2b69aa"
    else
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.1/reason-v0.5.1-macos-x86_64.tar.gz"
      sha256 "22077f4bc413e928494559f613ea3b84c2febd52d77068974219378d00280b89"
    end
  end

  on_linux do
    url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.1/reason-v0.5.1-linux-x86_64.tar.gz"
    sha256 "cea36a86783c6063f83a35e43376f18203bbae3df7b55320cbdabe2f79a94aaf"
  end

  def install
    bin.install "reason"
  end

  test do
    assert_match "reason 0.5.1", shell_output("#{bin}/reason --version")
  end
end
