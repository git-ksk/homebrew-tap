class Reason < Formula
  desc "Provider-neutral reasoning CLI with evidence-bound verification"
  homepage "https://github.com/git-ksk/reasoning-harness"
  version "0.5.2"
  license "MIT"

  on_linux do
    depends_on arch: :x86_64
  end

  on_arm do
    on_macos do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.2/reason-v0.5.2-macos-aarch64.tar.gz"
      sha256 "8448424e845b7fcdace1f8be6558c1cb674fb05d06991bfc0a58d7c791aa436a"
    end
  end

  on_intel do
    on_macos do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.2/reason-v0.5.2-macos-x86_64.tar.gz"
      sha256 "5427a1a1a6f3ff8494a6e01c0f5f96972452723c6dda8d423e9c4b8e9024e624"
    end

    on_linux do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.2/reason-v0.5.2-linux-x86_64.tar.gz"
      sha256 "76fad6715ed0acac1cd06993b76c4484e2fbbd149eae266fd2ad84143efa7abf"
    end
  end

  def install
    bin.install "reason"
  end

  test do
    assert_match "reason 0.5.2", shell_output("#{bin}/reason --version")
  end
end
