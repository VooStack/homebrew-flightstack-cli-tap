class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.42"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.42/flightstack-1.2.42-macos-arm64.tar.gz"
      sha256 "1f4fe688c77511c045ad35f7c333836608c4118211a2b2cd0c7dc691522e2b9a"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.42/flightstack-1.2.42-macos-x64.tar.gz"
      sha256 "15433ea186dcebf1809413019747f1dc7c84ce15cdee863f32f5e0c3de290dbf"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
