class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.1/flightstack-1.6.1-macos-arm64.tar.gz"
      sha256 "6b8187732fd871865cf888caeed185d67c024d332d428a9cc6fbc34e34dbdf99"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.6.1/flightstack-1.6.1-macos-x64.tar.gz"
      sha256 "037ac6093bbaf9a332edb36e76632afaad69c8156ba7622f795736ad4a703805"
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
