class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.22.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.22.1/agent-macos-aarch64.tar.gz"
      sha256 "44135633cc2a7f4730fa49913e6b596aa38a034a96a0d635507fb7b2bdaca444"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.22.1/agent-macos-x86_64.tar.gz"
      sha256 "4b7b9e539daeb7d92468796189b3b8a458237394549dd59e594bc1195fedcc80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.22.1/agent-linux-aarch64.tar.gz"
      sha256 "6d95ec29ac761cce86273767d8f99e671eb17db9848eb31dd19703d45e9874a8"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.22.1/agent-linux-x86_64.tar.gz"
      sha256 "b3a808ffafd260b753bd7340c20cf3d4abede66dbc14ae265d01608443aee904"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.22.1", shell_output("#{bin}/agent --version")
  end
end
