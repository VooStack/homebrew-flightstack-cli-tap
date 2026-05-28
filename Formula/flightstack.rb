class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-arm64.tar.gz"
      sha256 "937ad6c6cc31b1d802843ac8490c822b35ac98ad4bcadbf2551a847eefd3f42a"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-x64.tar.gz"
      sha256 "062b0d3dc9da99f736029ddec84fc0b0e15a6ca3ff5a16f638b71bddc5d44c3d"
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
