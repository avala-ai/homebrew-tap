class AgentCode < Formula
  desc "AI-powered coding agent for the terminal, written in pure Rust"
  homepage "https://github.com/avala-ai/agent-code"
  version "0.15.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.3/agent-macos-aarch64.tar.gz"
      sha256 "6ec7d4198b6f00e0d3e5bf5e9bafaaeff07ffc8bfb8378c3d3d15d151fb4852c"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.3/agent-macos-x86_64.tar.gz"
      sha256 "bead683c995671f85b94e3e4ca164fe2b4e24f4a1af3f65ce61b022e90080c92"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.3/agent-linux-aarch64.tar.gz"
      sha256 "de805fcc06c2815c842d0a4030c6295804668046ddaf50590d6b71e7d50051fc"
    else
      url "https://github.com/avala-ai/agent-code/releases/download/v0.15.3/agent-linux-x86_64.tar.gz"
      sha256 "ae62b826a616593c9ba7677a47a5ba56d3369a6e2e9f92cbb2c5a1546ad38180"
    end
  end

  def install
    bin.install "agent"
  end

  test do
    assert_match "agent 0.15.3", shell_output("#{bin}/agent --version")
  end
end
