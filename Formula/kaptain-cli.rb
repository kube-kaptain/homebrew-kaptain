require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "5cfdccf86bd5f595c9973e131258f3ebf4d59a9c7c1361deeaea31e23b7f5d81"
  license "MIT"

  def install
    bin.install "kaptain"
    bin.install "kaptain-help"
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
