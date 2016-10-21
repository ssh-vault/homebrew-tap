class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://bintray.com/nbari/ssh-vault/download_file?file_path=ssh-vault_0.7.2_darwin_amd64.zip"
  sha256 "87bb4fad60158f0ef62fa57a0fcd5c2770af42e508b1004706c9e84c73ca7454"
  version "0.7.2"

  def install
    bin.install "ssh-vault"
  end
end
