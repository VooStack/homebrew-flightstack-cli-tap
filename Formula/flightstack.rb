class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.8/flightstack-1.3.8-macos-arm64.tar.gz"
      sha256 "0588cb0b7a2ffba80da92450f91ab805aa9ccaaf115d81a06cacd8088bab3e28"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.8/flightstack-1.3.8-macos-x64.tar.gz"
      sha256 "ac115f3461db414b90a6b99b5b1bf8a7d0070034c637290f22c576f069fda185"
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
