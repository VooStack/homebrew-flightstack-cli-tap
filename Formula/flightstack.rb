class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-arm64.tar.gz"
      sha256 "376f430afcca36ccfe0e07fab3d7cbd5800cd2f1fb291e88244ede4871d43ad9"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-x64.tar.gz"
      sha256 "2483059f60559cb14343fa5ffea73d27f8295fe867748351090e14bd67176336"
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
