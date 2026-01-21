class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.58/flightstack-1.2.58-macos-arm64.tar.gz"
      sha256 "5e6d772c092686332c2e9356ad4ab39d5573660d3424d18477f5e06406250de6"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.58/flightstack-1.2.58-macos-x64.tar.gz"
      sha256 "d9d33ef1c82958d3956e617ad3a84fbb0b47231c5a824ec941da7d91bf3da3e0"
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
