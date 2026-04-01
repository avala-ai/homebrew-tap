class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.6.1/agent-macos-aarch64.tar.gz"
      sha256 "2b533d52ad9acadcd983886bb131eda10d777b6c83a71bf9099e64d7f6c9c1a1"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.6.1/agent-macos-x86_64.tar.gz"
      sha256 "08b2a5076d4ac7e2f3a34c4a19e15ff86ecdd20c9c42b6a295bae7ee26967d47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.6.1/agent-linux-aarch64.tar.gz"
      sha256 "644730373fe2ac1d61f9ddaa475c62683df6cead79d42131b5266bf63c576154"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.6.1/agent-linux-x86_64.tar.gz"
      sha256 "91f0f0def49f3f4dbe2a6260756ad0593c4f279f434bfa5c4ac713674d52cd48"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.6.1", shell_output("#{bin}/agent --version")
  end
end
