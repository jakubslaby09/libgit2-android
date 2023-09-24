# What the fork?
This is my fork of [openssl](https://github.com/openssl/openssl/).

## Building with Android NDK
1. If you haven't already, download the [NDK](https://developer.android.com/ndk/downloads) and extract it
2. Make sure `CMAKE_ANDROID_NDK` in the [toolchain file](android-toolchain.cmake) is set to the NDK directory
3. If you want to, change the android API version (`CMAKE_SYSTEM_VERSION`) or architecture (`CMAKE_ANDROID_ARCH_ABI`) in that toolchain file
4. Run cmake using the toolchain file
   ```sh
   mkdir build
   cd build
   cmake -DCMAKE_TOOLCHAIN_FILE=../android-toolchain.cmake ..
   ```
5. Start the build and hope for the best
   ```sh
   cmake --build .
   ```