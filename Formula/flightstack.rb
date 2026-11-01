class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.8/flightstack-1.6.8-macos-arm64.tar.gz"
      sha256 "cdba9a1fac87da9ad6b5b94a269167a91ec704b13b23e85d651bb66aab100348"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.8/flightstack-1.6.8-macos-x64.tar.gz"
      sha256 "1807c687a00422dcbba78b5edf9eeafd1d0a7f46f0be4453f29c30c2f244864a"
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
