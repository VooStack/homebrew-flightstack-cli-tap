class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.8/flightstack-1.5.8-macos-arm64.tar.gz"
      sha256 "3ba618328bc78bb1802ff98b02b87f4189807c9978e26d23ec0220d6e8e4769a"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.8/flightstack-1.5.8-macos-x64.tar.gz"
      sha256 "5e28c6e295ae041b5db3cf02920859013071ee69a59ab6adbccf20607a9b5070"
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
