class SshVault < Formula
  desc "encrypt/decrypt using ssh keys"
  homepage "https://ssh-vault.com/"
  url "https://bintray.com/nbari/ssh-vault/download_file?file_path=ssh-vault_0.7.0_darwin_amd64.zip"
  sha256 "2db443fa5544324c8284a55f56e373010387e03f37c91bf68098f32eda23204b"

  def install
    bin.install "ssh-vault"
  end
end
