class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://bintray.com/nbari/ssh-vault/download_file?file_path=ssh-vault_0.8.1_darwin_amd64.zip"
  sha256 "f2df6c8689667d86b130b37872ed61a1d58acd3204af885e3d29bb92d19e4667"
  version "0.8.1"

  def install
    bin.install "ssh-vault"
  end
end
