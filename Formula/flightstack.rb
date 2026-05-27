class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-arm64.tar.gz"
      sha256 "a5d686bdd1d38990c99015685358af9f2cee61f2301a2ba3ee759bd9b7237f23"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.3/flightstack-1.5.3-macos-x64.tar.gz"
      sha256 "f2cd33f5023f9132256ab0ef0a939e38466a5c1a3d96433f3cf9cf10d1299d0e"
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
