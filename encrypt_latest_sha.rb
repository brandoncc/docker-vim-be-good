require "rbnacl"
require "base64"
key = Base64.decode64(ARGV[1])
public_key = RbNaCl::PublicKey.new(key)

box = RbNaCl::Boxes::Sealed.from_public_key(public_key)
encrypted_secret = box.encrypt(ARGV[0])

# Print the base64 encoded secret
puts Base64.strict_encode64(encrypted_secret)
