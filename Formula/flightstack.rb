class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.6/flightstack-1.5.6-macos-arm64.tar.gz"
      sha256 "b194c29b6571f6eb9a6a3f0b96954c6029c1c25f043016f40e0e0c81bc4c312e"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.6/flightstack-1.5.6-macos-x64.tar.gz"
      sha256 "f33ff94609528247d5bf5ec5e41640598051ce2c5377e4b1ba0f7ca33cc5f9d8"
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
