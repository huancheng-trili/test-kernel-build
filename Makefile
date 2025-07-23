.PHONY: riscv
riscv:
	@unset NIX_LDFLAGS && RUSTY_V8_ARCHIVE=$$RISCV_V8_ARCHIVE_DIR/librusty_v8.a \
		RUSTY_V8_SRC_BINDING_PATH=$$RISCV_V8_ARCHIVE_DIR/src_binding.rs \
		cargo build \
		--release \
		--features riscv \
		--target riscv64gc-unknown-linux-musl
