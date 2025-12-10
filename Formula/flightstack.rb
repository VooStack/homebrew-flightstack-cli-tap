class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.20"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.20/flightstack-1.2.20-macos-arm64.tar.gz"
      sha256 "6e9baa2737931e51232d90958f902ad6074b19f1e1615138ebe2753947ff93ea"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.20/flightstack-1.2.20-macos-x64.tar.gz"
      sha256 "7c226ff1fab26ddbb4623d7184e11c3b7b9c0dd543fff309cb5dfc61d713e74c"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
