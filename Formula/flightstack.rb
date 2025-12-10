class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.19/flightstack-1.2.19-macos-arm64.tar.gz"
      sha256 "eb253245fbd070e20b3f1ae5a9193d486a489e27356f7f94965922ee6ae205ab"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.19/flightstack-1.2.19-macos-x64.tar.gz"
      sha256 "4af35827c63a1ace59493b46bc8106e4ed6c74614b91d32a95438741df4b93dc"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
