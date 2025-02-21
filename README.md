# What the fork?
This is my fork of [libgit2](https://github.com/libgit2/libgit2).
If anyone else wants to use this fork, keep in mind that there is a **dangerous workaround** in [`src/libgit2/repository.c`](src/libgit2/repository.c). If you do not need it, use the [official repo](https://github.com/libgit2/libgit2).

## Building with Android NDK
0. Read the [warning above](#what-the-fork)!
1. If you haven't already, download the [NDK](https://developer.android.com/ndk/downloads) and extract it
2. Make sure `CMAKE_ANDROID_NDK` in the [toolchain file](android-toolchain.cmake) is set to the NDK directory
3. If you want to, change the android API version (`CMAKE_SYSTEM_VERSION`) or architecture (`CMAKE_ANDROID_ARCH_ABI`) in that toolchain file
4. Set the env variable `ANDROID_NDK_ROOT` to your NDK directory and build openssl
   ```sh
   cd openssl
   PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$PATH
   ./Configure android-arm64 -D__ANDROID_API__=34 # if you need to, you can change the API verson here
   make -s -Wno-macro-redefined
   cd ..
   ```
5. Run cmake using the toolchain file
   ```sh
   mkdir build
   cd build
   cmake -DCMAKE_TOOLCHAIN_FILE=../android-toolchain.cmake ..
   ```
6. Start the build and hope for the best
   ```sh
   cmake --build .
   ```
