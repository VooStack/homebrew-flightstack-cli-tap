class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.5/flightstack-1.2.5-macos-arm64.tar.gz"
      sha256 "2f0186e7d6f692cf5114409d90d19ad7f138df67c16551e2f43d68621712fc16"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.5/flightstack-1.2.5-macos-x64.tar.gz"
      sha256 "e4f3b1dfb89353f1922807787f23d7951420629d77564a19f06798c8eabc020c"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
