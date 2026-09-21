class Reason < Formula
  desc "Provider-neutral reasoning CLI with evidence-bound verification"
  homepage "https://github.com/git-ksk/reasoning-harness"
  version "0.5.3"
  license "MIT"

  on_linux do
    depends_on arch: :x86_64
  end

  on_arm do
    on_macos do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.3/reason-v0.5.3-macos-aarch64.tar.gz"
      sha256 "55223849ca82363e467f7e4ad35e80d974611d99f9704637657beff8c3047e1e"
    end
  end

  on_intel do
    on_macos do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.3/reason-v0.5.3-macos-x86_64.tar.gz"
      sha256 "3123de9a53ec4692accfc6deda479fab7cab9218828c68d486d72e9e1bf9fbc4"
    end

    on_linux do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.3/reason-v0.5.3-linux-x86_64.tar.gz"
      sha256 "4a9841775121c199ac8955b87a4541f04e743849c56b7071bdf412e22e7447cc"
    end
  end

  def install
    bin.install "reason"
  end

  test do
    assert_match "reason 0.5.3", shell_output("#{bin}/reason --version")
  end
end
