require_relative "../version"

class KaptainUserScripts < Formula
  desc "Kaptain user scripts - complete standalone package"
  homepage "https://github.com/kube-kaptain/kaptain-user-scripts"
  version KAPTAIN_VERSION
  url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{version}/kaptain-user-scripts-#{version}.zip"
  sha256 "11a9d49cd44719d160e825f5a6844f66734125b0d8a8d7f0a2540cc5339cac12"
  license "MIT"

  depends_on "age"
  depends_on "openssl"

  resource "completion-bash" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.bash"
    sha256 "ee375742f19a2d5111835784bd8709548cab3c84fcbd09d89a4f2fd5983c73c9"
  end

  resource "completion-zsh" do
    url "https://github.com/kube-kaptain/kaptain-user-scripts/releases/download/#{KAPTAIN_VERSION}/kaptain-completion-#{KAPTAIN_VERSION}.zsh"
    sha256 "b38010908cfaff444b3cf12438d104e353e49af39e5f4961fb6468b166cdf48b"
  end

  def install
    bin.install "kaptain"
    bin.install Dir["kaptain-*"]

    resource("completion-bash").stage do
      bash_completion.install "kaptain-completion-#{version}.bash" => "kaptain"
    end

    resource("completion-zsh").stage do
      zsh_completion.install "kaptain-completion-#{version}.zsh" => "_kaptain"
    end
  end

  test do
    system "#{bin}/kaptain", "--help"
  end
end
