# The `builtin` Package

A special package made available to all source files. Declarations in this package fall under two categories: those identifying meta information about the currently executing compiler implementation and those identifying information about the compilation unit currently being processed.

## Compiler information

: `zig_version`
:: A `std.SemanticVersion` representing the version of the currently executing compiler implementation.

: `zig_backend`
:: A `std.builtin.CompilerBackend` identifying the currently executing compiler implementation.

: `have_error_return_tracing`
:: = true;

: `valgrind_support`
:: A [=Boolean=] value representing whether the currently executing compiler implementation supports [Valgrind's](https://valgrind.org/) Memcheck tool for detecting improper access of Undefined memory.

## Compilation information

: `output_mode`

: `link_mode`

: `is_test`

: `single_threaded`

: `abi`

: `cpu`

: `os`

: `target`

: `object_format`

: `mode`

: `link_libc`

: `link_libcpp`

: `sanitize_thread`

: `position_independent_code`

: `position_independent_executable`

: `strip_debug_info`

: `code_model`
