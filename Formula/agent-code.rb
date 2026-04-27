class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.20.0/agent-macos-aarch64.tar.gz"
      sha256 "f4a0891981281bc12244fb88bc728d5f6c6c040fa027643f72b2d5238f264985"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.20.0/agent-macos-x86_64.tar.gz"
      sha256 "49c7f654645c4a0c7bc220c4324c07e250a1038b4c2fc16725accc9f5108b798"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.20.0/agent-linux-aarch64.tar.gz"
      sha256 "64aa094f7e852dec6b1bf3eb9cb72994a276e82bf71bd7dc0cf5eaad36223b3a"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.20.0/agent-linux-x86_64.tar.gz"
      sha256 "c365564d420c9597ac0adc3f96e5273691359e91bded07f7c2c55effb75599c5"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.20.0", shell_output("#{bin}/agent --version")
  end
end
