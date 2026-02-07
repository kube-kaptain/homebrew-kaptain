require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "2e46eb091234bc4f338a0e187d7eb3712fb4880c35324502fba8e324c970cca9"
  license "MIT"

  def install
    bin.install "kaptain"
    bin.install "kaptain-help"
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
