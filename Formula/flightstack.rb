class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-arm64.tar.gz"
      sha256 "16f42966e1e75e230c8385e664fa59b9943588168a741ab9590be2fadcd043e7"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.5.2/flightstack-1.5.2-macos-x64.tar.gz"
      sha256 "7f149fd1cd6cb0fcbce88e1c131e460575d803ed130c1614ce19254a7c7a81d8"
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
