class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.4/flightstack-1.5.4-macos-arm64.tar.gz"
      sha256 "6c570afb925b046b2b93f2680e498d5be428a27238e9e735cf0831ab9023d056"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.4/flightstack-1.5.4-macos-x64.tar.gz"
      sha256 "3987877e83bfaaf4c654c467566fa339c87d3f821418d783068dfaac870863b5"
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
