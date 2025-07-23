use tezos_smart_rollup::{entrypoint, host::Runtime, prelude::debug_msg};

// kernel entry
#[entrypoint::main]
pub fn entry(rt: &mut impl Runtime) {
    debug_msg!(rt, "Starting Jstz kernel\n");
    jstz_kernel::entry(rt);
}
