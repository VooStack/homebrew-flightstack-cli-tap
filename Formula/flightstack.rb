class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.7/flightstack-1.6.7-macos-arm64.tar.gz"
      sha256 "4546024b3688e840a6d4df3a5fb6a81dc4b57ebb22e2e4ff978bc4e271f30b7a"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.7/flightstack-1.6.7-macos-x64.tar.gz"
      sha256 "48079ca19ca650db82901118a65dff5319db65cd29e97cc1c9eeeaf0f82a1206"
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
