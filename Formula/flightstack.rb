class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.2/flightstack-1.2.2-macos-arm64.tar.gz"
      sha256 "7a7bb8830920cb8fd772dcf38be62a06d876bc261ca205bb0e6155ce333f6776"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.2/flightstack-1.2.2-macos-x64.tar.gz"
      sha256 "858d480b1c779315f538881c84c7b93e8aaa52947d208ac792a0ba8029fe1ccd"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
