module BitstampClient
  class GenSignature

    def self.call(key:, secret:, nonce:, customer_id:)
      digest = OpenSSL::Digest.new('sha256')
      data = nonce.to_s + customer_id + key
      hex = OpenSSL::HMAC.hexdigest(digest, secret, data)
      hex.upcase
    end

  end
end
