class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://bintray.com/nbari/ssh-vault/download_file?file_path=ssh-vault_0.7.1_darwin_amd64.zip"
  sha256 "12f3ea9840783f57189983970ba9ff2c2345cdc5bd6b45f8f54ca249a9709194"
  version "0.7.1"

  def install
    bin.install "ssh-vault"
  end
end
