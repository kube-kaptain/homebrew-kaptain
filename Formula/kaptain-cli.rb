require_relative "../version"

class KaptainCli < Formula
  desc "Kaptain CLI wrapper for Kubernetes deployment workflows"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-cli-#{version}.zip"
  sha256 "8f0f661102b597f9aef03205fb63ab876aa22671349cb6ddee63db993b9990f8"
  license "MIT"

  resource "completion" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.bash"
    sha256 "06ba2808319dfa08a99e09f2e187608f3f511c5ea27bed81da1022f44675eca3"
  end

  def install
    bin.install "kaptain"
    bin.install "kaptain-list"
    bin.install "kaptain-help"
    bin.install "kaptain-clean"

    resource("completion").stage do
      bash_completion.install "kaptain-completion-#{version}.bash" => "kaptain"
    end
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
