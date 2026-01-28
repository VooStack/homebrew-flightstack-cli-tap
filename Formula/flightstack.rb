class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.64/flightstack-1.2.64-macos-arm64.tar.gz"
      sha256 "e6cc4f21f057559fe34edc376355c6c7fd1b95c18cf0305670541943c740110e"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.64/flightstack-1.2.64-macos-x64.tar.gz"
      sha256 "8f0dfcc128449d98be4e43b1b3ce550df6149b95a26502a4bea14544233f39ff"
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
