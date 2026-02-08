require_relative "../version"

class KaptainUserScripts < Formula
  desc "Kaptain user scripts - complete standalone package"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-#{version}.zip"
  sha256 "7f30159dcc40edfd7706c7601b52dc39167d28b552a6581df1345cfa320e35de"
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
