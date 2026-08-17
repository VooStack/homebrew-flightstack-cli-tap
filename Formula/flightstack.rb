class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-arm64.tar.gz"
      sha256 "652601e2ddcfb2f0633a9a19508ee96205abf6912b7f7a17fc02ec04b888db63"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-x64.tar.gz"
      sha256 "8c416452a2b3535f69e602c08514fa22429353675c419ac1230a1dac326aedde"
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
