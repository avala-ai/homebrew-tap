class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.25.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.0/agent-macos-aarch64.tar.gz"
      sha256 "4ab7c51e0113cda6a32882e5db7b1f9367767318fe5832975fba1ad9ad9d213e"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.0/agent-macos-x86_64.tar.gz"
      sha256 "3664a7f4a6547e825d2912bb93f19222857a29b9cb9e069661b831fb41e0574b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.0/agent-linux-aarch64.tar.gz"
      sha256 "4969dbbe2311a17e31b949f35df65d02cf93e01cc8ce91ea76fadc2cd6da4c78"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.0/agent-linux-x86_64.tar.gz"
      sha256 "7e478faab38de834a7d46bb6e160404aaada4e02a2c71812c638662d3e98d354"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.25.0", shell_output("#{bin}/agent --version")
  end
end
