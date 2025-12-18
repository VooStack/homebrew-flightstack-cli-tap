class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.33/flightstack-1.2.33-macos-arm64.tar.gz"
      sha256 "64f1dcd3a88a293ea0ca805f22bbba3172633a5da21bf8591c041e6c7371988c"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.33/flightstack-1.2.33-macos-x64.tar.gz"
      sha256 "4d588e114cf252a6eaaca4f14d230cedc4baf3d33d7198039d63f9ffdf35dc88"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
