require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "710b8abfcbf5d704d55018dbda384fc88508db35067a55c6d3593e3023bde05c"
  license "MIT"

  def install
    bin.install "kaptain"
    bin.install "kaptain-help"
    bin.install "kaptain-clean"
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
