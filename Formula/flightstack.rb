class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.2/flightstack-1.6.2-macos-arm64.tar.gz"
      sha256 "229e7b5aef1188b3d6754962d5431b03e42a776bf858e40ecb33dad0d9e483ad"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.2/flightstack-1.6.2-macos-x64.tar.gz"
      sha256 "93589d3bea47189162b086899398edb136c68ff18e4a714abece8c2b028cd20b"
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
