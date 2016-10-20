class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://bintray.com/nbari/ssh-vault/download_file?file_path=ssh-vault_0.7.0_darwin_amd64.zip"
  sha256 "7ced43a72a226889a0d98f25c7bebe316d2997f6d3b3451747f24aabf376914b"

  def install
    bin.install "ssh-vault"
  end
end
