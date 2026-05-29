require_relative "../version"

class KaptainUtil < Formula
  desc "Kaptain utility scripts for listing and cleaning secrets and config"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-util-#{version}.zip"
  sha256 "706457cac88c3a8acff6e98d1684a10bf0da3f86e9c95222625142d03b490799"
  license "MIT"

  def install
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain-list-secrets", "--help"
  end
end
