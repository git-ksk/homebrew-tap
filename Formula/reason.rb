class Reason < Formula
  desc "Provider-neutral reasoning CLI with evidence-bound verification"
  homepage "https://github.com/git-ksk/reasoning-harness"
  version "0.5.5"
  license "MIT"

  on_linux do
    depends_on arch: :x86_64
  end

  on_arm do
    on_macos do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.5/reason-v0.5.5-macos-aarch64.tar.gz"
      sha256 "f93a7a9987e9dff000549936fb831216130da412258960023f64de520239700c"
    end
  end

  on_intel do
    on_macos do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.5/reason-v0.5.5-macos-x86_64.tar.gz"
      sha256 "11db0dc988a3e91ee91d2355dd5b550c1f602984a7a55d2fad2843655f642bbe"
    end

    on_linux do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.5/reason-v0.5.5-linux-x86_64.tar.gz"
      sha256 "8370261003925d3a6426c9c0eb1335ef5aa515b37f9b055b9a7ca3907b919128"
    end
  end

  def install
    bin.install "reason"
  end

  test do
    assert_match "reason 0.5.5", shell_output("#{bin}/reason --version")
  end
end
