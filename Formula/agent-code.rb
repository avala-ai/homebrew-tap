class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.0/agent-macos-aarch64.tar.gz"
      sha256 "3776ee3a8f75551f3c500a7a3a446f0019665f9a840f80335a757c6a03b633c1"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.0/agent-macos-x86_64.tar.gz"
      sha256 "eb8651d3d9837006079ad38dc5c9cd7ce8097b539bfdeb931523df2700fe979f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.0/agent-linux-aarch64.tar.gz"
      sha256 "7274d009eea98a8bd8584ccc3d76a58509bc665a6a0fd09c3b9c04c46e37c4e7"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.0/agent-linux-x86_64.tar.gz"
      sha256 "86528af900cf094d77791c0ee9d9fba3d6a688f7190b5ff585e58cb72a03feb2"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.15.0", shell_output("#{bin}/agent --version")
  end
end
