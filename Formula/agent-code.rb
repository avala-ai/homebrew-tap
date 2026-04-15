class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.15.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.1/agent-macos-aarch64.tar.gz"
      sha256 "965ec95214dca34158d79cdca727499d5316de2240cd87d7de755e9ee311af51"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.1/agent-macos-x86_64.tar.gz"
      sha256 "0a60db3231a9f50236c940ceaa034d9866d15a01c014b64a3746470ad75106c4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.1/agent-linux-aarch64.tar.gz"
      sha256 "06fbfaa778b04759872d5658ca661d7b10596110620ffaf13c8db969b0311720"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.1/agent-linux-x86_64.tar.gz"
      sha256 "f0044d404b388b72e245639fcb3ee88f05f472838ba6df04b27b5d29cf2425e3"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.15.1", shell_output("#{bin}/agent --version")
  end
end
