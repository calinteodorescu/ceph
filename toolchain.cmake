set(CMAKE_SYSTEM_NAME Windows)

set(CMAKE_INSTALL_PREFIX     D:/Git/ceph/.build/cmake/.run)
set(NUGET_PACKAGES_DIRECTORY C:/Tools/NuGet.Packages/packages)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(WITH_SYSTEM_BOOST           ON)

set(WITH_SYSTEM_ROCKSDB         OFF)
set(WITH_EMBEDDED_ROCKSDB       OFF)
 
set(WITH_BABELTRACE             OFF)
set(WITH_BLUESTORE              OFF)
set(WITH_CEPHFS                 OFF)
set(WITH_FUSE                   OFF)
set(WITH_JAEGER                 OFF)
set(WITH_KRBD                   OFF)
set(WITH_LIBCEPHSQLITE          OFF)
set(WITH_LTTNG                  OFF)
set(WITH_LZ4                    OFF)
set(WITH_LZMA                   OFF)
set(WITH_MANPAGE                OFF)
set(WITH_MGR_DASHBOARD_FRONTEND OFF)
set(WITH_OPENLDAP               OFF)
set(WITH_RADOSGW                OFF)
set(WITH_RADOSGW_LUA_PACKAGES   OFF)
set(WITH_RBD                    OFF)
set(WITH_RDMA                   OFF)
set(WITH_SNAPPY                 OFF)
set(WITH_SYSTEM_BACKTRACE       OFF)
set(WITH_THRIFT                 OFF)

# Set top-level directories for outputs
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
# Custom directory for intermediate files (if needed)
set(CMAKE_OBJECT_PATH              "${CMAKE_BINARY_DIR}/obj")
# Note: Object files are still managed under CMakeFiles unless explicitly overridden

set(OPENSSL_ROOT_DIR       "$(NUGET_PACKAGES_DIRECTORY)/openssl-native.3.0.16")
set(OPENSSL_CRYPTO_LIBRARY "$(OPENSSL_ROOT_DIR)/lib/win-x64/native/libcrypto.lib")
set(OPENSSL_SSL_LIBRARY    "$(OPENSSL_ROOT_DIR)/lib/win-x64/native/libssl.lib")
set(OPENSSL_INCLUDE_DIR    "$(OPENSSL_ROOT_DIR)/include")

set(SNAPPY_LIBRARIES       "$(NUGET_PACKAGES_DIRECTORY)/libsnappy.redist.1.1.7/build/native/lib/win/x64/win-x64-Release/v140")
set(SNAPPY_INCLUDE_DIR     "$(NUGET_PACKAGES_DIRECTORY)/libsnappy.redist.1.1.7/build/native/include")

set(ZLIB_LIBRARY           "$(NUGET_PACKAGES_DIRECTORY)/zlib-msvc-x64.1.2.11.8900/build/native/lib_release")
set(ZLIB_INCLUDE_DIR       "$(NUGET_PACKAGES_DIRECTORY)/zlib-msvc-x64.1.2.11.8900/build/native/include")

set(BZIP2_LIBRARIES        "$(NUGET_PACKAGES_DIRECTORY)/bzip2.v143.1.0.6.10/build/native/lib/x64/MT-Release") 
set(BZIP2_INCLUDE_DIR      "$(NUGET_PACKAGES_DIRECTORY)/bzip2.v143.1.0.6.10/build/native/include")    

set(Iconv_LIBRARY          "$(NUGET_PACKAGES_DIRECTORY)/libiconv.lib.1.16.0.6/build/native/lib/x64/v142_mt/Release")
set(Iconv_INCLUDE_DIR      "$(NUGET_PACKAGES_DIRECTORY)/libiconv.lib.1.16.0.6/build/native/include")

set(ICU_LIBRARY           "$(NUGET_PACKAGES_DIRECTORY)/Icu4c.Win.Fw.Lib.70.1.153/build/native/lib/win-x64")
set(ICU_INCLUDE_DIR       "$(NUGET_PACKAGES_DIRECTORY)/Icu4c.Win.Fw.Lib.70.1.153/build/native/include")
