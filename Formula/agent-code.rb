class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.29.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.29.0/agent-macos-aarch64.tar.gz"
      sha256 "87524a32f00b558bc59b1b9b42347e52c4e6b324135d2da4d166529308019eca"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.29.0/agent-macos-x86_64.tar.gz"
      sha256 "edefa42327c47c1c9e765be997562882b87d8a7ac8b87afd9b70e7abd140c9b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.29.0/agent-linux-aarch64.tar.gz"
      sha256 "b30e0e2b818db405b556b75920209203660528d0a659a58529527caff1cf83fb"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.29.0/agent-linux-x86_64.tar.gz"
      sha256 "bff4c3b0471ccac03648f471a1943491d5dd2923f04a510c8b2305ffa572dedc"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.29.0", shell_output("#{bin}/agent --version")
  end
end
