class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.13/flightstack-1.2.13-macos-arm64.tar.gz"
      sha256 "319fb8252f4887ac5dbbef3a5314a2fb3373ec0f0fe58956dd796f8ebd8d9b07"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.13/flightstack-1.2.13-macos-x64.tar.gz"
      sha256 "5c20d5c6864a49b91045f4a85117f017405a33c40c503566b450ed51355a90e2"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
