Pod::Spec.new do |spec|
  spec.name = 'HSCryptoKit'
  spec.version = '0.1.0'
  spec.summary = 'Crypto library for Swift'
  spec.description = <<-DESC
                       CryptoKit implements openssl and secp256k1 protocols in Swift.
                       ```
                    DESC
  spec.homepage = 'https://github.com/horizontalsystems/crypto-kit-ios'
  spec.license = { :type => 'Apache 2.0', :file => 'LICENSE' }
  spec.author = { 'Horizontal Systems' => 'grouvilimited@gmail.com' }
  spec.social_media_url = 'http://horizontalsystems.io/'

  spec.requires_arc = true
  spec.source = { git: 'https://github.com/horizontalsystems/crypto-kit-ios.git', tag: "v#{spec.version}" }
  spec.source_files = 'CryptoKit/**/*.{h,m,swift}'
  spec.module_map = 'CryptoKit/CryptoKit.modulemap'
  spec.ios.deployment_target = '11.0'
  spec.swift_version = '4.1'

  spec.pod_target_xcconfig = { 'SWIFT_WHOLE_MODULE_OPTIMIZATION' => 'YES',
                               'APPLICATION_EXTENSION_API_ONLY' => 'YES',
                               'SWIFT_INCLUDE_PATHS' => '${PODS_ROOT}/HSCryptoKit/Libraries',
                               'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/HSCryptoKit/Libraries/openssl/include" "${PODS_ROOT}/HSCryptoKit/Libraries/secp256k1/include"',
                               'LIBRARY_SEARCH_PATHS' => '"${PODS_ROOT}/HSCryptoKit/Libraries/openssl/lib" "${PODS_ROOT}/HSCryptoKit/Libraries/secp256k1/lib"' }
  spec.preserve_paths = ['setup', 'Libraries']
  # spec.prepare_command = 'sh WalletKit/setup/build_libraries.sh'

end
