#include "common/options.h"


std::vector<Option> get_crimson_options() {
  return std::vector<Option>({
    Option("crimson_osd_objectstore", Option::TYPE_STR, Option::LEVEL_ADVANCED)
    .set_description("backend type for a Crimson OSD (e.g seastore or bluestore)")
    .set_default("bluestore")
    .set_enum_allowed({"bluestore", "seastore", "cyanstore"})
    .set_flag(Option::FLAG_CREATE),

    Option("crimson_osd_obc_lru_size", Option::TYPE_UINT, Option::LEVEL_ADVANCED)
    .set_description("Number of obcs to cache")
    .set_default(512),

    Option("crimson_osd_scheduler_concurrency", Option::TYPE_UINT, Option::LEVEL_ADVANCED)
    .set_description("The maximum number concurrent IO operations, 0 for unlimited")
    .set_default(0),

    Option("crimson_alien_op_num_threads", Option::TYPE_UINT, Option::LEVEL_ADVANCED)
    .set_description("The number of threads for serving alienized ObjectStore")
    .set_default(6)
    .set_flag(Option::FLAG_STARTUP),

    Option("crimson_seastar_cpu_cores", Option::TYPE_STR, Option::LEVEL_ADVANCED)
    .set_description("CPU cores on which seastar reactor threads will run in cpuset(7) format, smp::count is deduced from this option")
    .set_flag(Option::FLAG_STARTUP),

    Option("crimson_alien_thread_cpu_cores", Option::TYPE_STR, Option::LEVEL_ADVANCED)
    .set_description("CPU cores on which alienstore threads will run in cpuset(7) format")
    .set_flag(Option::FLAG_STARTUP),

    Option("crimson_seastar_num_threads", Option::TYPE_UINT, Option::LEVEL_ADVANCED)
    .set_description("The number of threads for serving seastar reactors without CPU pinning, overridden if crimson_seastar_cpu_cores is set")
    .set_default(0)
    .set_min_max(0, 32)
    .set_flag(Option::FLAG_STARTUP),

    Option("crimson_reactor_task_quota_ms", Option::TYPE_FLOAT, Option::LEVEL_ADVANCED)
    .set_description("The maximum time (ms) Seastar reactors will wait between polls.")
    .set_long_description("The maximum time (ms) Seastar reactors will wait between polls. Shorter time between pools will result in larger CPU utilization.")
    .set_default(0.5)
    .set_flag(Option::FLAG_STARTUP),

    Option("crimson_reactor_idle_poll_time_us", Option::TYPE_UINT, Option::LEVEL_ADVANCED)
    .set_description("Seastar's reactor idle polling time (ms) before going back to sleep.")
    .set_long_description("Seastar's reactor idle polling time (ms) before going back to sleep. Longer reactor poll time will result in larger CPU utilization.")
    .set_default(200)
    .set_flag(Option::FLAG_STARTUP),

    Option("crimson_reactor_io_latency_goal_ms", Option::TYPE_FLOAT, Option::LEVEL_ADVANCED)
    .set_description("The maximum time (ms) Seastar's reactor IO operations must take. If not set(0 mean not set), defaults to 1.5 * crimson_reactor_task_quota_ms")
    .set_long_description("The maximum time (ms) Seastar's reactor IO operations must take. If not set, defaults to 1.5 * crimson_reactor_task_quota_ms. Increasing this value will allow more IO requests to be dispatched concurrently.")
    .set_default(0.0)
    .set_flag(Option::FLAG_STARTUP),

    Option("crimson_osd_stat_interval", Option::TYPE_INT, Option::LEVEL_ADVANCED)
    .set_description("Report OSD status periodically in seconds, 0 to disable")
    .set_default(0),

    Option("seastore_segment_size", Option::TYPE_SIZE, Option::LEVEL_ADVANCED)
    .set_description("Segment size to use for SegmentManager")
    .set_default(64_M),

    Option("seastore_device_size", Option::TYPE_SIZE, Option::LEVEL_DEV)
    .set_description("Total size to use for SegmentManager block file if created")
    .set_default(50_G),

    Option("seastore_block_create", Option::TYPE_BOOL, Option::LEVEL_DEV)
    .set_description("Create SegmentManager file if it doesn't exist")
    .set_default(true)
    .add_see_also({"seastore_device_size"}),

    Option("seastore_journal_batch_capacity", Option::TYPE_UINT, Option::LEVEL_DEV)
    .set_description("The number limit of records in a journal batch")
    .set_default(16),

    Option("seastore_journal_batch_flush_size", Option::TYPE_SIZE, Option::LEVEL_DEV)
    .set_description("The size threshold to force flush a journal batch")
    .set_default(16_M),

    Option("seastore_journal_iodepth_limit", Option::TYPE_UINT, Option::LEVEL_DEV)
    .set_description("The io depth limit to submit journal records")
    .set_default(5),

    Option("seastore_journal_batch_preferred_fullness", Option::TYPE_FLOAT, Option::LEVEL_DEV)
    .set_description("The record fullness threshold to flush a journal batch")
    .set_default(0.95),

    Option("seastore_default_max_object_size", Option::TYPE_UINT, Option::LEVEL_DEV)
    .set_description("default logical address space reservation for seastore objects' data")
    .set_default(16777216),

    Option("seastore_default_object_metadata_reservation", Option::TYPE_UINT, Option::LEVEL_DEV)
    .set_description("default logical address space reservation for seastore objects' metadata")
    .set_default(16777216),

    Option("seastore_full_integrity_check", Option::TYPE_BOOL, Option::LEVEL_DEV)
    .set_description("Whether seastore need to fully check the integrity of each extent, non-full integrity check means the integrity check might be skipped during extent remapping for better performance, disable with caution")
    .set_default(false),

    Option("seastore_max_data_allocation_size", Option::TYPE_SIZE, Option::LEVEL_ADVANCED)
    .set_description("Max size in bytes that an extent can be, 0 to disable")
    .set_default(0),

    Option("seastore_cache_lru_size", Option::TYPE_SIZE, Option::LEVEL_ADVANCED)
    .set_description("Size in bytes of extents to keep in cache (per reactor).")
    .set_default(2_G),

    Option("seastore_obj_data_write_amplification", Option::TYPE_FLOAT, Option::LEVEL_ADVANCED)
    .set_description("split extent if ratio of total extent size to write size exceeds this value")
    .set_default(1.25),

    Option("seastore_max_concurrent_transactions", Option::TYPE_UINT, Option::LEVEL_ADVANCED)
    .set_description("maximum concurrent transactions that seastore allows (per reactor)")
    .set_default(128),

    Option("seastore_main_device_type", Option::TYPE_STR, Option::LEVEL_DEV)
    .set_description("The main device type seastore uses (SSD or RANDOM_BLOCK_SSD)")
    .set_default("SSD"),

    Option("seastore_cbjournal_size", Option::TYPE_SIZE, Option::LEVEL_DEV)
    .set_description("Total size to use for CircularBoundedJournal if created, it is valid only if seastore_main_device_type is RANDOM_BLOCK")
    .set_default(5_G),

    Option("seastore_multiple_tiers_stop_evict_ratio", Option::TYPE_FLOAT, Option::LEVEL_ADVANCED)
    .set_description("When the used ratio of main tier is less than this value, then stop evict cold data to the cold tier.")
    .set_default(0.5),

    Option("seastore_multiple_tiers_default_evict_ratio", Option::TYPE_FLOAT, Option::LEVEL_ADVANCED)
    .set_description("Begin evicting cold data to the cold tier when the used ratio of the main tier reaches this value.")
    .set_default(0.6),

    Option("seastore_multiple_tiers_fast_evict_ratio", Option::TYPE_FLOAT, Option::LEVEL_ADVANCED)
    .set_description("Begin fast eviction when the used ratio of the main tier reaches this value.")
    .set_default(0.7),

    Option("seastore_data_delta_based_overwrite", Option::TYPE_SIZE, Option::LEVEL_DEV)
    .set_description("overwrite the existing data block based on delta if the overwrite size is equal to or less than the value, otherwise do overwrite based on remapping, set to 0 to enforce the remap-based overwrite.")
    .set_default(0),

    Option("seastore_disable_end_to_end_data_protection", Option::TYPE_BOOL, Option::LEVEL_DEV)
    .set_description("When false, upon mkfs, try to discover whether the nvme device supports internal checksum feature without using sever CPU then enable if available, set to true to disable unconditionally.")
    .set_default(true),


  });
}
