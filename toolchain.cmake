set(CMAKE_SYSTEM_NAME Windows)

set(CMAKE_INSTALL_PREFIX D:/Git/ceph/.build/cmake/.run)
set(OPENSSL_ROOT_DIR     C:/Tools/OpenSSL-Win64)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(WITH_SYSTEM_BOOST           ON)

set(WITH_SYSTEM_ROCKSDB         OFF)
set(WITH_EMBEDDED_ROCKSDB       OFF)
 
set(WITH_KRBD                   OFF)
set(WITH_RBD                    OFF)
set(WITH_RADOSGW                OFF)
set(WITH_MANPAGE                OFF)
set(WITH_BABELTRACE             OFF)
set(WITH_MGR_DASHBOARD_FRONTEND OFF)
set(WITH_RDMA                   OFF)
set(WITH_SYSTEM_BACKTRACE       OFF)
set(WITH_OPENLDAP               OFF)
set(WITH_FUSE                   OFF)
set(WITH_BLUESTORE              OFF)
set(WITH_SNAPPY                 OFF)
set(WITH_LIBCEPHSQLITE          OFF)
set(WITH_LTTNG                  OFF)
set(WITH_LZMA                   OFF)
set(WITH_THRIFT                 OFF)
set(WITH_JAEGER                 OFF)
set(WITH_RADOSGW_LUA_PACKAGES   OFF)
set(WITH_RADOSGW                OFF)
set(WITH_CEPHFS                 OFF)
set(WITH_LZ4                    OFF)

# Set top-level directories for outputs
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
# Custom directory for intermediate files (if needed)
set(CMAKE_OBJECT_PATH              "${CMAKE_BINARY_DIR}/obj")
# Note: Object files are still managed under CMakeFiles unless explicitly overridden

set(OPENSSL_CRYPTO_LIBRARY "$(OPENSSL_ROOT_DIR)/lib/VC/x64/MT/libcrypto.lib")
set(OPENSSL_SSL_LIBRARY    "$(OPENSSL_ROOT_DIR)/lib/VC/x64/MT/libssl.lib")
set(OPENSSL_INCLUDE_DIR    "$(OPENSSL_ROOT_DIR)/include")

set(ZLIB_LIBRARY           "C:/Tools/zlib-nuget/zlib-msvc14-x64.1.2.11.7795/build/native/lib_release")
set(ZLIB_INCLUDE_DIR       "C:/Tools/zlib-nuget/zlib-msvc14-x64.1.2.11.7795/build/native/include")
