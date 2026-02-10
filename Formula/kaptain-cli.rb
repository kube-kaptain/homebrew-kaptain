require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "7df13f71da994f7991920d89fa264fb5808acf75bfafbdfeecdb0680baea1c2d"
  license "MIT"

  def install
    bin.install "kaptain"
    bin.install "kaptain-list"
    bin.install "kaptain-help"
    bin.install "kaptain-clean"
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
