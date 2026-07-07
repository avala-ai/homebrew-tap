class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.25.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.2/agent-macos-aarch64.tar.gz"
      sha256 "5bf6a7cb01d643cc273ce0995d2074aa20b77b4e320ad61d9700b89dcfa83a1e"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.2/agent-macos-x86_64.tar.gz"
      sha256 "d3e9a827e69fa69980579ce23bd216167ae465fbc30ca280cd743cec423cd3ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.2/agent-linux-aarch64.tar.gz"
      sha256 "55ef5c48ced71ac7f7a941bf673a2de83940249864f12ad8111c8ea0b2d6ada7"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.25.2/agent-linux-x86_64.tar.gz"
      sha256 "69df420dbc042a0eb8225f1f7f899d1289afcea121bad550fda6a32dc8f83c4d"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.25.2", shell_output("#{bin}/agent --version")
  end
end
