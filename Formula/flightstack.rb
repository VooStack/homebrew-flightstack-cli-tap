class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.49"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.49/flightstack-1.2.49-macos-arm64.tar.gz"
      sha256 "edc77bcfc957bbcd1fcc0045be0db34daea1f52a550383acd83dceac6bb078a2"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.49/flightstack-1.2.49-macos-x64.tar.gz"
      sha256 "fa40d98162e0fd6ed56e91492f4cb6d29443ad1d846d24983ef9a2b94bf1c71b"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
