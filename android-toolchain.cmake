set(CMAKE_SYSTEM_NAME Android)
set(CMAKE_SYSTEM_VERSION 34)
set(CMAKE_ANDROID_ARCH_ABI arm64-v8a)
set(CMAKE_ANDROID_NDK /opt/android-ndk)

set(OPENSSL_INCLUDE_DIR openssl/include)
set(OPENSSL_CRYPTO_LIBRARY openssl/libcrypto.so)
set(OPENSSL_SSL_LIBRARY openssl/libssl.so)
list(APPEND CMAKE_FIND_ROOT_PATH openssl/include)

add_definitions(-Wno-int-conversion)
add_compile_options(-Wno-int-conversion)
add_compile_options(-Wno-implicit-function-declaration)
