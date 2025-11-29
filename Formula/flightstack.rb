class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.0/flightstack-1.2.0-macos-arm64.tar.gz"
      sha256 "0603aee9e88c758cbac6c179f5b82531d17dc0e789ad6c57ea65660519372ffc"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.0/flightstack-1.2.0-macos-x64.tar.gz"
      sha256 "4ef9050767e4371a60f08ebff61c2064a9b02f2ff9c00b2189891ec5eedaa424"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
