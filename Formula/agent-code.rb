class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.16.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.16.1/agent-macos-aarch64.tar.gz"
      sha256 "b7762b0a38ebf055298a4fabdbc2567d6ab11f810db02e31fcb99d161875839a"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.16.1/agent-macos-x86_64.tar.gz"
      sha256 "f6fa60947465eb5b6b7b8cbfd31112fd86c131dfb271cc798eefda9633d9a78f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.16.1/agent-linux-aarch64.tar.gz"
      sha256 "988dba97e20518d7624f9ee1390e9e6486a9f77ee7c3c846618f09679477e940"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.16.1/agent-linux-x86_64.tar.gz"
      sha256 "f31d08112567dc2b451815bcef1e92455ee84c65a063970f866e666c946d40fe"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.16.1", shell_output("#{bin}/agent --version")
  end
end
