require_relative "../version"

class KaptainUserScripts < Formula
  desc "Kaptain user scripts - complete standalone package"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-#{version}.zip"
  sha256 "30d41a8c9935a3429d7ee0a369be7242395a8572754dc6168aea9d5f27510c9d"
  license "MIT"

  depends_on "age"
  depends_on "openssl"

  def install
    bin.install "kaptain"
    bin.install Dir["kaptain-*"]
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
