require_relative "../version"

class KaptainUtil < Formula
  desc "Kaptain utility scripts for listing and cleaning secrets and config"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-util-#{version}.zip"
  sha256 "5b4c9e4b93d9eeca8c42588aaf91c618fa8b591351167fb9b037160681aa2486"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-list-secrets", "--help"
  end
end
