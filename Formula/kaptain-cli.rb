require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "f34678593869e1546fc99fe471f34ff0b3bb0df7541194f6981774467abb24f0"
  license "MIT"

  def install
    bin.install "kaptain"
    bin.install "kaptain-help"
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
