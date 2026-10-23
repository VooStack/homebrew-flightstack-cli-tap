class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.11/flightstack-1.5.11-macos-arm64.tar.gz"
      sha256 "03957880a39c0795c61bb388a4fb4dd1584a72bdcb5e1c5206cbaed887888ac6"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.11/flightstack-1.5.11-macos-x64.tar.gz"
      sha256 "9ea245ab70f9984604f84cc7d18b841da3919791ea58e21116f9609ca9fbf757"
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
