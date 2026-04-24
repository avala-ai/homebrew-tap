class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.19.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.19.0/agent-macos-aarch64.tar.gz"
      sha256 "99d479c98c348795e69906591e4a2688e94477d7ea65cb4e8b520c4bc0484e65"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.19.0/agent-macos-x86_64.tar.gz"
      sha256 "8374d2e2bec05da3e8905630981a4e0d6365d731cc5f8b00a34e1cefc63a6f0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.19.0/agent-linux-aarch64.tar.gz"
      sha256 "6ac25650004bbe2a01e1b00de51f705762df80e85538bcd51aa7456b37761ecd"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.19.0/agent-linux-x86_64.tar.gz"
      sha256 "0b5be7dcce0573ed6c5838b4ac15a6d2941a6d5bf729a98207e154b8c2b311fd"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.19.0", shell_output("#{bin}/agent --version")
  end
end
