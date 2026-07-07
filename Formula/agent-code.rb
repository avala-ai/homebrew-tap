class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.25.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.1/agent-macos-aarch64.tar.gz"
      sha256 "5e6d7cc6cccd0af2e9b8c65e1760d8266c23196496bf477eacb5e2a89e13107e"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.1/agent-macos-x86_64.tar.gz"
      sha256 "39af30ec9f9a30347389bf390b3e874be9e32386cb91ed24468ff5735c93b951"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.1/agent-linux-aarch64.tar.gz"
      sha256 "92ac56a6311d3223daf54b0435c1da9e3357e912cfef66d9a2e12d95f0241a82"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.1/agent-linux-x86_64.tar.gz"
      sha256 "8e53de2f0789e44e70dc59c126e1ea36355926ebac5712f0669fb89abaa0dee5"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.25.1", shell_output("#{bin}/agent --version")
  end
end
