Pod::Spec.new do |spec|
  spec.name = 'HSCryptoKit'
  spec.version = '1.0.1'
  spec.summary = 'Crypto library for Swift'
  spec.description = <<-DESC
                       HSCryptoKit includes crypto functions that can be used in pure Swift. It supports openssl, secp256k1, base58, sha3 keccak256.
                       ```
                    DESC
  spec.homepage = 'https://github.com/horizontalsystems/crypto-kit-ios'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'Horizontal Systems' => 'hello@horizontalsystems.io' }
  spec.social_media_url = 'http://horizontalsystems.io/'

  spec.requires_arc = true
  spec.source = { git: 'https://github.com/horizontalsystems/crypto-kit-ios.git', tag: "#{spec.version}" }
  spec.source_files = 'HSCryptoKit/**/*.{h,m,swift}'
  spec.module_map = 'HSCryptoKit/HSCryptoKit.modulemap'
  spec.ios.deployment_target = '11.0'
  spec.swift_version = '4.1'

  spec.pod_target_xcconfig = { 'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
                               'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                               'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}/HSCryptoKit/Libraries',
                               'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/HSCryptoKit/Libraries/openssl/include" "${PODS_ROOT}/HSCryptoKit/Libraries/secp256k1/include"',
                               'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/HSCryptoKit/Libraries/openssl/lib" "${PODS_ROOT}/HSCryptoKit/Libraries/secp256k1/lib"' }
  spec.preserve_paths = ['Setup', 'Libraries']
  # spec.prepare_command = 'sh HSCryptoKit/Setup/build_libraries.sh'

end
