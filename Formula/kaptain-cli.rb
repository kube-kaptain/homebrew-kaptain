require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "e27c1de4700bdea1713b6ab5b96b68c22e51e2a70a320211d8cbc60e0efbf649"
  license "MIT"

  def install
    bin.install "kaptain"
    bin.install "kaptain-help"
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
