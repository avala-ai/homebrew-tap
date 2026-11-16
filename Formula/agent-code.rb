class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.31.0/agent-macos-aarch64.tar.gz"
      sha256 "3385c7596c5f85457ccee41b07237eecccafd429972d540c00937f068db02b8b"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.31.0/agent-macos-x86_64.tar.gz"
      sha256 "f960f855beaca2144ce205353161e15d53fdd346b0ff1e6996993b4474dee8f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.31.0/agent-linux-aarch64.tar.gz"
      sha256 "060887eaa0d72f7f4e4a6c57ab1d3ed911f3e82f391908cdfd7e0c5c2f95c85a"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.31.0/agent-linux-x86_64.tar.gz"
      sha256 "82b1026d56407837b7024d7a04659b9d6013ecd96f208a61c095913203d5bb89"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.31.0", shell_output("#{bin}/agent --version")
  end
end
