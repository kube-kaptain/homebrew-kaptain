require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "987f7682e0f205de1f9a149227013335a9d5d2b98e71452a4960500c1475fd08"
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
