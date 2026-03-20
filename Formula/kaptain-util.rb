require_relative "../version"

class KaptainUtil < Formula
  desc "Kaptain utility scripts for listing and cleaning secrets and config"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-util-#{version}.zip"
  sha256 "165198147ac31c33f786a84f94b96fd7c422bf09315a0119a2259980d9134e8c"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-list-secrets", "--help"
  end
end
