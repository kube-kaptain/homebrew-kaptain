require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "10e1b2c8bb48c64b8a3e87b595a6c74c1b59d635b22c2a3a0c213d51cd92aa1c"
  license "MIT"

  def install
    bin.install "kaptain"
    bin.install "kaptain-help"
    bin.install "kaptain-clean"
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
