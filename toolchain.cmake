set(CMAKE_SYSTEM_NAME Windows)

#set(CMAKE_C_COMPILER C:/Tools/msys64/mingw64/bin/gcc.exe)
#set(CMAKE_CXX_COMPILER C:/Tools/msys64/mingw64/bin/g++.exe)
#set(CMAKE_MAKE_PROGRAM C:/Tools/msys64/mingw64/bin/cmake.exe)
#set(CMAKE_FIND_ROOT_PATH C:/Tools/msys64/mingw64)

set(CMAKE_INSTALL_PREFIX D:/Git/ceph/.build/cmake/.run)
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

# Set top-level directories for outputs
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")
# Custom directory for intermediate files (if needed)
set(CMAKE_OBJECT_PATH              "${CMAKE_BINARY_DIR}/obj")
# Note: Object files are still managed under CMakeFiles unless explicitly overridden

set(LIBLZMA_LIBRARY                "/d/Git/xz/Release/liblzma.dll")
set(LIBLZMA_INCLUDE_DIR            "/mingw64/include")

# Define a target (e.g., executable)
#add_executable(ceph_calin main.c)
