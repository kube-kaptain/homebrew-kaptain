require_relative "../version"

class KaptainUtil < Formula
  desc "Kaptain utility scripts for listing and cleaning secrets and config"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-util-#{version}.zip"
  sha256 "62237a3c1c1a648d5009501f9948528968c8396667a5808b2b137831bff18373"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-list-secrets", "--help"
  end
end
