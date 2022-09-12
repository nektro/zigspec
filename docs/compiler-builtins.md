# Compiler Builtins

Builtin functions are provided by the compiler and are prefixed with `@`. The `comptime` keyword on a parameter means that the parameter must be known at compile time.

Issue(tabatkins/bikeshed#861): TODO figure out how to workaround ID conflict between `@frame` and `@Frame`

* <dfn>@addWithOverflow</dfn>

* <dfn>@alignCast</dfn>

* <dfn>@alignOf</dfn>

* <dfn>@as</dfn>

* <dfn>@asyncCall</dfn>

* <dfn>@atomicLoad</dfn>

* <dfn>@atomicRmw</dfn>

* <dfn>@atomicStore</dfn>

* <dfn>@bitCast</dfn>

* <dfn>@bitOffsetOf</dfn>

* <dfn>@bitReverse</dfn>

* <dfn>@bitSizeOf</dfn>

* <dfn>@boolToInt</dfn>

* <dfn>@breakpoint</dfn>

* <dfn>@byteSwap</dfn>

* <dfn>@call</dfn>

* <dfn>@cDefine</dfn>

* <dfn>@ceil</dfn>

* <dfn>@cImport</dfn>

* <dfn>@cInclude</dfn>

* <dfn>@clz</dfn>

* <dfn>@cmpxchgStrong</dfn>

* <dfn>@cmpxchgWeak</dfn>

* <dfn>@compileError</dfn>

* <dfn>@compileLog</dfn>

* <dfn>@cos</dfn>

* <dfn>@ctz</dfn>

* <dfn>@cUndef</dfn>

* <dfn>@divExact</dfn>

* <dfn>@divFloor</dfn>

* <dfn>@divTrunc</dfn>

* <dfn>@embedFile</dfn>

* <dfn>@enumToInt</dfn>

* <dfn>@errorName</dfn>

* <dfn>@errorReturnTrace</dfn>

* <dfn>@errorToInt</dfn>

* <dfn>@errSetCast</dfn>

* <dfn>@exp</dfn>

* <dfn>@exp2</dfn>

* <dfn>@export</dfn>

* <dfn>@extern</dfn>

* <dfn>@fabs</dfn>

* <dfn>@fence</dfn>

* <dfn>@field</dfn>

* <dfn>@fieldParentPtr</dfn>

* <dfn>@floatCast</dfn>

* <dfn>@floatToInt</dfn>

* <dfn>@floor</dfn>

<!-- * <dfn>@frame</dfn> -->

* <dfn>@Frame</dfn>

* <dfn>@frameAddress</dfn>

* <dfn>@frameSize</dfn>

* <dfn>@hasDecl</dfn>

* <dfn>@hasField</dfn>

* <dfn>@import</dfn>

* <dfn>@intCast</dfn>

* <dfn>@intToEnum</dfn>

* <dfn>@intToError</dfn>

* <dfn>@intToFloat</dfn>

* <dfn>@intToPtr</dfn>

* <dfn>@log</dfn>

* <dfn>@log10</dfn>

* <dfn>@log2</dfn>

* <dfn>@maximum</dfn>

* <dfn>@memcpy</dfn>

* <dfn>@memset</dfn>

* <dfn>@minimum</dfn>

* <dfn>@mod</dfn>

* <dfn>@mulAdd</dfn>

* <dfn>@mulWithOverflow</dfn>

* <dfn>@offsetOf</dfn>

* <dfn>@panic</dfn>

* <dfn>@popCount</dfn>

* <dfn>@prefetch</dfn>

* <dfn>@ptrCast</dfn>

* <dfn>@ptrToInt</dfn>

* <dfn>@reduce</dfn>

* <dfn>@rem</dfn>

* <dfn>@returnAddress</dfn>

* <dfn>@round</dfn>

* <dfn>@select</dfn>

* <dfn>@setAlignStack</dfn>

* <dfn>@setCold</dfn>

* <dfn>@setEvalBranchQuota</dfn>

* <dfn>@setFloatMode</dfn>

* <dfn>@setRuntimeSafety</dfn>

* <dfn>@shlExact</dfn>

* <dfn>@shlWithOverflow</dfn>

* <dfn>@shrExact</dfn>

* <dfn>@shuffle</dfn>

* <dfn>@sin</dfn>

* <dfn>@sizeOf</dfn>

* <dfn>@splat</dfn>

* <dfn>@sqrt</dfn>

* <dfn>@src</dfn>

* <dfn>@subWithOverflow</dfn>

* <dfn>@tagName</dfn>

* <dfn>@tan</dfn>

* <dfn>@This</dfn>

* <dfn>@trunc</dfn>

* <dfn>@truncate</dfn>

* <dfn>@Type</dfn>

* <dfn>@typeInfo</dfn>

* <dfn>@typeName</dfn>

* <dfn>@TypeOf</dfn>

* <dfn>@unionInit</dfn>

* <dfn>@Vector</dfn>

* <dfn>@wasmMemoryGrow</dfn>

* <dfn>@wasmMemorySize</dfn>
