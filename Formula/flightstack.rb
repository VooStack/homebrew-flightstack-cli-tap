class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.19/flightstack-1.3.19-macos-arm64.tar.gz"
      sha256 "f61e9d38c382dd822e3ad9790cac3980b83d317ab401ec5eef310509dda2a188"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.19/flightstack-1.3.19-macos-x64.tar.gz"
      sha256 "cf809cd90153c50d0d0044061deb779a7260c95edf7f882b760db7d2ddd13ceb"
    end
  end

  def install
    bin.install "flightstack"
    bin.install "flightstack-agent"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
