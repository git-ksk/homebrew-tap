class Reason < Formula
  desc "Provider-neutral reasoning CLI with evidence-bound verification"
  homepage "https://github.com/git-ksk/reasoning-harness"
  version "0.5.4"
  license "MIT"

  on_linux do
    depends_on arch: :x86_64
  end

  on_arm do
    on_macos do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.4/reason-v0.5.4-macos-aarch64.tar.gz"
      sha256 "7159be6f6d9f773e1bed069b32df73b28d2cbc1c4f43790751900186f2206a65"
    end
  end

  on_intel do
    on_macos do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.4/reason-v0.5.4-macos-x86_64.tar.gz"
      sha256 "7c3a7152737449e8475c76d453377240554a8cc4c98df8a5c331e4f8e02ddb67"
    end

    on_linux do
      url "https://github.com/git-ksk/reasoning-harness/releases/download/reason-v0.5.4/reason-v0.5.4-linux-x86_64.tar.gz"
      sha256 "ab123560fc09d222f6a9b2b3f98f10e1f1d91960edd36ba2796ba4ca1a84abf7"
    end
  end

  def install
    bin.install "reason"
  end

  test do
    assert_match "reason 0.5.4", shell_output("#{bin}/reason --version")
  end
end
