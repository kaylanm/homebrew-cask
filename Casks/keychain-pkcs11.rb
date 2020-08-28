cask "keychain-pkcs11" do
  version "0.9.5"
  sha256 "50398b6ca7d7945d955f7725603506057d5bdb303bf3cbc0171ed6bb23bed872"

  url "https://github.com/kenh/keychain-pkcs11/releases/download/v#{version}/keychain-pkcs11-#{version}.pkg"
  appcast "https://github.com/kenh/keychain-pkcs11/releases.atom"
  name "Keychain-PKCS11"
  desc "This is a library designed to bridge the gap between the Apple Security Framework and applications which support using a PKCS#11 interface to access cryptographic hardware."
  homepage "https://github.com/kenh/keychain-pkcs11"

  depends_on macos: ">= :high_sierra"

  pkg "keychain-pkcs11-#{version}.pkg"

  uninstall pkgutil: [
    "mil.navy.nrl.cmf.pkcs11.dylib",
  ]
end
