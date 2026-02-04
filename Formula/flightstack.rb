class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.2/flightstack-1.3.2-macos-arm64.tar.gz"
      sha256 "a892b9dd3aa89890f4cc9be31c6f74212aabdebe4fb594c94fdbfbd28cf3df0a"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.2/flightstack-1.3.2-macos-x64.tar.gz"
      sha256 "4f6d222b84fe950ef77ae1eed4ffc674a00b3abb7a8eafbfb7c2ba873ded6a02"
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
