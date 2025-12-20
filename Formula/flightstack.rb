class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.35"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.35/flightstack-1.2.35-macos-arm64.tar.gz"
      sha256 "a33c60aa5a5391c15ce7fda603463ebc8451e4d9ce33eb2114d1528d7a7c426d"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.35/flightstack-1.2.35-macos-x64.tar.gz"
      sha256 "1c0b6eebbae413497317f8c88093a4c76d414077567f422be08a5bb31deb50ab"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
