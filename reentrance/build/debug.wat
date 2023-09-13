(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i64_=>_none (func (param i32 i64)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i32_=>_i32 (func (param i32 i64 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_i32_i32_i64_i64_i32_i64_i32_i32_i32_i64_i32_i32_i64_i64_i32_i32_i32_=>_i32 (func (param i32 i32 i64 i32 i32 i64 i64 i32 i64 i32 i32 i32 i64 i32 i32 i64 i64 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i64_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i64 i32) (result i32)))
 (type $i32_i32_i64_=>_i32 (func (param i32 i32 i64) (result i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $i32_i64_i32_i32_=>_i32 (func (param i32 i64 i32 i32) (result i32)))
 (type $i64_i32_i32_=>_i32 (func (param i64 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "hostapi" "__HostApi__.getProperty" (func $assembly/lib/host/hostapi/__HostApi__.getProperty (param i32) (result i32)))
 (import "hostapi" "__HostApi__.getContext" (func $assembly/lib/host/hostapi/__HostApi__.getContext (param i32) (result i32)))
 (import "hostapi" "__HostApi__.hash" (func $assembly/lib/host/hostapi/__HostApi__.hash (param i32 i32) (result i32)))
 (import "utils" "__Util__.toHexString" (func $assembly/lib/utils/__Util__.toHexString (param i32) (result i32)))
 (import "utils" "__Util__.fromHexString" (func $assembly/lib/utils/__Util__.fromHexString (param i32) (result i32)))
 (import "hostapi" "__HostApi__.setContext" (func $assembly/lib/host/hostapi/__HostApi__.setContext (param i32 i32) (result i32)))
 (import "hostapi" "__HostApi__.currentBalance" (func $assembly/lib/host/hostapi/__HostApi__.currentBalance (param i32) (result i32)))
 (import "debug" "__debug__.log" (func $assembly/lib/host/debug/__debug__.log (param i32)))
 (import "hostapi" "__HostApi__.getStateChanges" (func $assembly/lib/host/hostapi/__HostApi__.getStateChanges (param i32 i32 i32) (result i32)))
 (global $~lib/as-proto/assembly/WireType/WireType.VARINT i32 (i32.const 0))
 (global $~lib/as-proto/assembly/WireType/WireType.FIXED_64 i32 (i32.const 1))
 (global $~lib/as-proto/assembly/WireType/WireType.LENGTH_DELIMITED i32 (i32.const 2))
 (global $~lib/as-proto/assembly/WireType/WireType.START_GROUP i32 (i32.const 3))
 (global $~lib/as-proto/assembly/WireType/WireType.END_GROUP i32 (i32.const 4))
 (global $~lib/as-proto/assembly/WireType/WireType.FIXED_32 i32 (i32.const 5))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/as-proto/assembly/Protobuf/WRITER (mut i32) (i32.const 0))
 (global $~lib/as-proto/assembly/Protobuf/READER (mut i32) (i32.const 0))
 (global $assembly/lib/types/message/scheduler/v1/ScheduleStatus/ScheduleStatus.Close i32 (i32.const 0))
 (global $assembly/lib/types/message/scheduler/v1/ScheduleStatus/ScheduleStatus.Open i32 (i32.const 1))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.INT16 i32 (i32.const 0))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.INT32 i32 (i32.const 1))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.INT64 i32 (i32.const 2))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.INT256 i32 (i32.const 3))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.UINT16 i32 (i32.const 4))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.UINT32 i32 (i32.const 5))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.UINT64 i32 (i32.const 6))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.UINT256 i32 (i32.const 7))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.BOOL i32 (i32.const 8))
 (global $assembly/lib/types/message/aspect/v1/ValueKind/ValueKind.STRING i32 (i32.const 9))
 (global $assembly/lib/host/hostapi/crypto.Hasher.Keccak i32 (i32.const 0))
 (global $assembly/lib/abi/ethereum/coders/ethereum.Type.Number i32 (i32.const 0))
 (global $assembly/lib/abi/ethereum/coders/ethereum.Type.BytesN i32 (i32.const 1))
 (global $assembly/lib/abi/ethereum/coders/ethereum.Type.Address i32 (i32.const 2))
 (global $assembly/lib/abi/ethereum/coders/ethereum.Type.Boolean i32 (i32.const 3))
 (global $assembly/lib/abi/ethereum/coders/ethereum.Type.Array i32 (i32.const 4))
 (global $assembly/lib/abi/ethereum/coders/ethereum.Type.Tuple i32 (i32.const 5))
 (global $assembly/lib/abi/ethereum/coders/ethereum.Type.Bytes i32 (i32.const 6))
 (global $assembly/lib/abi/ethereum/coders/ethereum.Type.String i32 (i32.const 7))
 (global $assembly/lib/types/basic_types/typeIndex.Empty i32 (i32.const 0))
 (global $assembly/lib/types/basic_types/typeIndex.TypeInt8 i32 (i32.const 1))
 (global $assembly/lib/types/basic_types/typeIndex.TypeInt16 i32 (i32.const 2))
 (global $assembly/lib/types/basic_types/typeIndex.TypeInt32 i32 (i32.const 3))
 (global $assembly/lib/types/basic_types/typeIndex.TypeInt64 i32 (i32.const 4))
 (global $assembly/lib/types/basic_types/typeIndex.TypeUint8 i32 (i32.const 5))
 (global $assembly/lib/types/basic_types/typeIndex.TypeUint16 i32 (i32.const 6))
 (global $assembly/lib/types/basic_types/typeIndex.TypeUint32 i32 (i32.const 7))
 (global $assembly/lib/types/basic_types/typeIndex.TypeUint64 i32 (i32.const 8))
 (global $assembly/lib/types/basic_types/typeIndex.TypeBool i32 (i32.const 9))
 (global $assembly/lib/types/basic_types/typeIndex.TypeString i32 (i32.const 10))
 (global $assembly/lib/types/basic_types/typeIndex.TypeByteArray i32 (i32.const 11))
 (global $assembly/lib/types/bigint/BigInt.p i32 (i32.const 28))
 (global $assembly/lib/types/bigint/BigInt.actualBits i32 (i32.const 32))
 (global $assembly/lib/types/bigint/BigInt.maxComba i32 (i32.const 256))
 (global $assembly/lib/types/bigint/BigInt.digitMask i32 (i32.const 268435455))
 (global $assembly/lib/types/bigint/BigInt.precision i32 (i32.const 5))
 (global $assembly/index/firstAspect (mut i32) (i32.const 0))
 (global $assembly/index/entry (mut i32) (i32.const 0))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~lib/rt/__rtti_base i32 (i32.const 7168))
 (global $~lib/memory/__data_end i32 (i32.const 7404))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 40172))
 (global $~lib/memory/__heap_base i32 (i32.const 40172))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $1 (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 412) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 444) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 476) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 508) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $12 (i32.const 556) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $13 (i32.const 620) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 652) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data $15 (i32.const 700) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00p\00e\00c\00t\00 \00c\00o\00d\00e\00\00\00\00\00\00\00")
 (data $16 (i32.const 764) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00/\00e\00n\00t\00r\00y\00.\00t\00s\00\00\00")
 (data $17 (i32.const 828) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00o\00n\00C\00o\00n\00t\00r\00a\00c\00t\00B\00i\00n\00d\00i\00n\00g\00\00\00\00\00\00\00\00\00\00\00")
 (data $18 (i32.const 892) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00i\00s\00O\00w\00n\00e\00r\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $19 (i32.const 940) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $20 (i32.const 1004) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $21 (i32.const 1036) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $22 (i32.const 1068) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $23 (i32.const 1116) "\1c\00\00\00\00\00\00\00\00\00\00\00\1b\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data $24 (i32.const 1148) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\16\00\00\00o\00n\00T\00x\00R\00e\00c\00e\00i\00v\00e\00\00\00\00\00\00\00")
 (data $25 (i32.const 1196) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00o\00n\00B\00l\00o\00c\00k\00I\00n\00i\00t\00i\00a\00l\00i\00z\00e\00\00\00\00\00\00\00\00\00\00\00")
 (data $26 (i32.const 1260) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00o\00n\00T\00x\00V\00e\00r\00i\00f\00y\00\00\00\00\00\00\00\00\00")
 (data $27 (i32.const 1308) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00o\00n\00A\00c\00c\00o\00u\00n\00t\00V\00e\00r\00i\00f\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $28 (i32.const 1372) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\18\00\00\00o\00n\00G\00a\00s\00P\00a\00y\00m\00e\00n\00t\00\00\00\00\00")
 (data $29 (i32.const 1420) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\18\00\00\00p\00r\00e\00T\00x\00E\00x\00e\00c\00u\00t\00e\00\00\00\00\00")
 (data $30 (i32.const 1468) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $31 (i32.const 1532) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00p\00o\00s\00t\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $32 (i32.const 1596) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00p\00o\00s\00t\00T\00x\00E\00x\00e\00c\00u\00t\00e\00\00\00")
 (data $33 (i32.const 1644) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00o\00n\00T\00x\00C\00o\00m\00m\00i\00t\00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 1692) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00o\00n\00B\00l\00o\00c\00k\00F\00i\00n\00a\00l\00i\00z\00e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $35 (i32.const 1756) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00m\00e\00t\00h\00o\00d\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $36 (i32.const 1804) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00:\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00o\00r\00 \00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d\00\00\00")
 (data $37 (i32.const 1884) "\1c\00\00\00\00\00\00\00\00\00\00\00*\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data $38 (i32.const 1916) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00b\00i\00n\00d\00i\00n\00g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $39 (i32.const 1964) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e\00\00\00\00\00\00\00\00\00")
 (data $40 (i32.const 2028) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\n\00\00\00o\00w\00n\00e\00r\00\00\00")
 (data $41 (i32.const 2060) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00p\00r\00o\00t\00o\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00F\00i\00x\00e\00d\00R\00e\00a\00d\00e\00r\00.\00t\00s\00")
 (data $42 (i32.const 2172) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00w\00i\00r\00e\00 \00t\00y\00p\00e\00 \00\00\00\00\00\00\00\00\00")
 (data $43 (i32.const 2236) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $44 (i32.const 2364) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $45 (i32.const 2428) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $46 (i32.const 2460) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $47 (i32.const 2860) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $48 (i32.const 3916) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $49 (i32.const 4012) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $50 (i32.const 4140) "l\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00P\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00p\00e\00c\00t\00/\00g\00u\00a\00r\00d\00_\00b\00y\00_\00t\00r\00a\00c\00e\00_\00a\00s\00p\00e\00c\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $51 (i32.const 4252) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00o\00r\00i\00g\00i\00n\00a\00l\00_\00b\00a\00l\00a\00n\00c\00e\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $52 (i32.const 4316) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\000\00x\00\00\00\00\00\00\00\00\00")
 (data $53 (i32.const 4348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00d\00d\00r\00e\00s\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $54 (i32.const 4412) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00F\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00/\00a\00b\00i\00/\00e\00t\00h\00e\00r\00e\00u\00m\00/\00c\00o\00d\00e\00r\00s\00.\00t\00s\00\00\00\00\00\00\00")
 (data $55 (i32.const 4508) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00@\00\00\00n\00u\00m\00b\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00t\00w\00e\00e\00n\00 \008\00 \00~\00 \002\005\006\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $56 (i32.const 4604) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00B\00\00\00n\00u\00m\00b\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00o\00f\00 \008\00\00\00\00\00\00\00\00\00\00\00")
 (data $57 (i32.const 4700) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00i\00n\00p\00u\00t\00 \00")
 (data $58 (i32.const 4732) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00 \00h\00a\00s\00 \00o\00d\00d\00 \00l\00e\00n\00g\00t\00h\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $59 (i32.const 4796) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00x\00\00\00\00\00\00\00\00\00\00\00")
 (data $60 (i32.const 4828) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\004\00\00\00i\00n\00p\00u\00t\00 \00d\00a\00t\00a\00 \00l\00e\00n\00g\00t\00h\00 \00t\00o\00o\00 \00l\00o\00n\00g\00\00\00\00\00\00\00\00\00")
 (data $61 (i32.const 4908) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00B\00i\00g\00I\00n\00t\00 \00o\00n\00l\00y\00 \00r\00e\00a\00d\00s\00 \00s\00t\00r\00i\00n\00g\00s\00 \00o\00f\00 \00r\00a\00d\00i\00x\00 \002\00 \00t\00h\00r\00o\00u\00g\00h\00 \001\006\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $62 (i32.const 5036) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\008\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00/\00t\00y\00p\00e\00s\00/\00b\00i\00g\00i\00n\00t\00.\00t\00s\00\00\00\00\00")
 (data $63 (i32.const 5116) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00-\00\00\00\00\00\00\00\00\00\00\00")
 (data $64 (i32.const 5148) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00C\00h\00a\00r\00a\00c\00t\00e\00r\00 \00\00\00\00\00\00\00\00\00")
 (data $65 (i32.const 5196) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\008\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00f\00o\00r\00 \00r\00a\00d\00i\00x\00 \00\00\00\00\00")
 (data $66 (i32.const 5276) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00(\00\00\00\00\00\00\00\00\00\00\00")
 (data $67 (i32.const 5308) "\1c\00\00\00\00\00\00\00\00\00\00\004\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data $68 (i32.const 5340) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00,\00\00\00\00\00\00\00\00\00\00\00")
 (data $69 (i32.const 5372) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00)\00\00\00\00\00\00\00\00\00\00\00")
 (data $70 (i32.const 5404) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $71 (i32.const 5532) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\00n\00u\00m\00b\00e\00r\00 \00b\00i\00t\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00t\00w\00e\00e\00n\00 \008\00 \00~\00 \002\005\006\00\00\00\00\00")
 (data $72 (i32.const 5628) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00J\00\00\00n\00u\00m\00b\00e\00r\00 \00b\00i\00t\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00o\00f\00 \008\00\00\00")
 (data $73 (i32.const 5724) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00h\00e\00x\00 \00s\00t\00r\00i\00n\00g\00\00\00\00\00\00\00\00\00")
 (data $74 (i32.const 5788) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00/\00u\00t\00i\00l\00s\00.\00t\00s\00\00\00")
 (data $75 (i32.const 5852) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\"\00\00\00H\00o\00n\00e\00y\00P\00o\00t\00.\00b\00a\00l\00a\00n\00c\00e\00s\00\00\00\00\00\00\00\00\00\00\00")
 (data $76 (i32.const 5916) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00`\00\00\00B\00i\00g\00I\00n\00t\00 \00o\00n\00l\00y\00 \00p\00r\00i\00n\00t\00s\00 \00s\00t\00r\00i\00n\00g\00s\00 \00i\00n\00 \00r\00a\00d\00i\00x\00 \002\00 \00t\00h\00r\00o\00u\00g\00h\00 \001\006\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $77 (i32.const 6044) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $78 (i32.const 6076) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00D\00i\00v\00i\00d\00e\00 \00b\00y\00 \00z\00e\00r\00o\00")
 (data $79 (i32.const 6124) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\000\00\00\00s\00u\00m\00_\00b\00a\00l\00a\00n\00c\00e\00_\00c\00h\00a\00n\00g\00e\00_\00v\00a\00l\00u\00e\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $80 (i32.const 6204) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\002\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00g\00e\00n\00e\00r\00i\00c\00 \00t\00y\00p\00e\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data $81 (i32.const 6284) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0c\00\00\00B\00i\00g\00I\00n\00t\00")
 (data $82 (i32.const 6316) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\18\00\00\00H\00o\00n\00e\00y\00P\00o\00t\00A\00d\00d\00r\00\00\00\00\00")
 (data $83 (i32.const 6364) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00o\00r\00i\00g\00i\00n\00a\00l\00_\00b\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00 \00\00\00")
 (data $84 (i32.const 6428) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00 \00d\00i\00f\00f\00_\00B\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00 \00\00\00\00\00\00\00\00\00")
 (data $85 (i32.const 6492) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00<\00\00\00 \00l\00a\00s\00t\00_\00c\00h\00a\00n\00g\00e\00_\00f\00r\00o\00m\00_\00b\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00 \00")
 (data $86 (i32.const 6572) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00 \00r\00e\00s\00u\00l\00t\00_\00b\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00 \00\00\00\00\00")
 (data $87 (i32.const 6636) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00@\00\00\00 \00h\00o\00n\00e\00y\00P\00o\00t\00A\00d\00d\00r\00 \00C\00u\00r\00r\00e\00n\00t\00B\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $88 (i32.const 6732) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00>\00\00\00 \00f\00r\00o\00m\00B\00a\00l\00a\00n\00c\00e\00 \00C\00u\00r\00r\00e\00n\00t\00B\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $89 (i32.const 6828) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\002\00\00\00b\00a\00l\00a\00n\00c\00e\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \00z\00e\00r\00o\00\00\00\00\00\00\00\00\00\00\00")
 (data $90 (i32.const 6908) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00i\00n\00t\00\00\00\00\00\00\00")
 (data $91 (i32.const 6940) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00u\00i\00n\00t\00\00\00\00\00")
 (data $92 (i32.const 6972) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\0e\00\00\00a\00d\00d\00r\00e\00s\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $93 (i32.const 7020) "L\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00.\00\00\00m\00e\00t\00h\00o\00d\00 \00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d\00.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $94 (i32.const 7100) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $95 (i32.const 7132) "\1c\00\00\00\00\00\00\00\00\00\00\009\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data $96 (i32.const 7168) ":\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02\01\00\00\02\t\00\00A\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00A\00\00\00A\00\00\00A\00\00\00 \00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00")
 (table $0 5 5 funcref)
 (elem $0 (i32.const 1) $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput.decode $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput.encode $assembly/lib/abi/ethereum/coders/ethereum.abiEncode~anonymous|0 $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges.decode)
 (export "execute" (func $assembly/index/execute))
 (export "isBlockLevel" (func $assembly/index/isBlockLevel))
 (export "isTransactionLevel" (func $assembly/index/isTransactionLevel))
 (export "allocate" (func $assembly/index/allocate))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store $0 offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 96
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load $0
  i32.gt_u
  if
   i32.const 224
   i32.const 288
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 96
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load $0
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store $0
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store $0
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store $0 offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load $0 offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store $0 offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load $0
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store $0
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store $0 offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load $0 offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store $0 offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size $0
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow $0
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store $0 offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store $0 offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store $0 offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 32
   i32.const 368
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load $0 offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 368
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load $0 offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size $0
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load $0 offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow $0
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size $0
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store $0 offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store $0 offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 32
   i32.const 96
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill $0
  local.get $ptr
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len (param $this i32) (param $len i32)
  local.get $this
  local.get $len
  i32.store $0
 )
 (func $~lib/rt/__newBuffer (param $size i32) (param $id i32) (param $data i32) (result i32)
  (local $buffer i32)
  local.get $size
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $buffer
  local.get $data
  if
   local.get $buffer
   local.get $data
   local.get $size
   memory.copy $0 $0
  end
  local.get $buffer
  return
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:pos (param $this i32) (param $pos i32)
  local.get $this
  local.get $pos
  i32.store $0 offset=4
  local.get $this
  local.get $pos
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlen (param $this i32) (param $varlen i32)
  local.get $this
  local.get $varlen
  i32.store $0 offset=8
  local.get $this
  local.get $varlen
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlenidx (param $this i32) (param $varlenidx i32)
  local.get $this
  local.get $varlenidx
  i32.store $0 offset=12
  local.get $this
  local.get $varlenidx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:sizer (param $this i32) (param $sizer i32)
  local.get $this
  local.get $sizer
  i32.store $0
  local.get $this
  local.get $sizer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:buffer (param $this i32) (param $buffer i32)
  local.get $this
  local.get $buffer
  i32.store $0
  local.get $this
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:dataStart (param $this i32) (param $dataStart i32)
  local.get $this
  local.get $dataStart
  i32.store $0 offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#set:byteLength (param $this i32) (param $byteLength i32)
  local.get $this
  local.get $byteLength
  i32.store $0 offset=8
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:buf (param $this i32) (param $buf i32)
  local.get $this
  local.get $buf
  i32.store $0 offset=8
  local.get $this
  local.get $buf
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:buf (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr (param $this i32) (param $ptr i32)
  local.get $this
  local.get $ptr
  i32.store $0 offset=4
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx (param $this i32) (param $varlenidx i32)
  local.get $this
  local.get $varlenidx
  i32.store $0 offset=12
 )
 (func $~lib/as-proto/assembly/Reader/Reader#set:ptr (param $this i32) (param $ptr i32)
  local.get $this
  local.get $ptr
  i32.store $0
 )
 (func $~lib/as-proto/assembly/Reader/Reader#set:end (param $this i32) (param $end i32)
  local.get $this
  local.get $end
  i32.store $0 offset=4
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#set:buf (param $this i32) (param $buf i32)
  local.get $this
  local.get $buf
  i32.store $0 offset=8
  local.get $this
  local.get $buf
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $start:~lib/as-proto/assembly/index
  call $start:~lib/as-proto/assembly/Protobuf
 )
 (func $start:assembly/lib/types/message/scheduler/v1/Schedule
  call $start:~lib/as-proto/assembly/index
 )
 (func $start:assembly/lib/types/index
  call $start:assembly/lib/types/message/scheduler/v1/Schedule
 )
 (func $start:assembly/lib/entry
  call $start:assembly/lib/types/index
 )
 (func $assembly/lib/entry/Entry#set:blockAspect (param $this i32) (param $blockAspect i32)
  local.get $this
  local.get $blockAspect
  i32.store $0
  local.get $this
  local.get $blockAspect
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/entry/Entry#set:transactionAspect (param $this i32) (param $transactionAspect i32)
  local.get $this
  local.get $transactionAspect
  i32.store $0 offset=4
  local.get $this
  local.get $transactionAspect
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/basic_types/AString#set:body (param $this i32) (param $body i32)
  local.get $this
  local.get $body
  i32.store $0 offset=4
  local.get $this
  local.get $body
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/basic_types/header#set:dataType (param $this i32) (param $dataType i32)
  local.get $this
  local.get $dataType
  i32.store16 $0
 )
 (func $assembly/lib/types/basic_types/header#set:dataLen (param $this i32) (param $dataLen i32)
  local.get $this
  local.get $dataLen
  i32.store $0 offset=4
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=16
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $assembly/lib/types/basic_types/AString#set:head (param $this i32) (param $head i32)
  local.get $this
  local.get $head
  i32.store $0
  local.get $this
  local.get $head
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/basic_types/AString#get:head (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembly/lib/types/basic_types/header#len (param $this i32) (result i32)
  i32.const 6
  return
 )
 (func $assembly/lib/types/basic_types/header#get:dataLen (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/rt/itcms/Object#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=16
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $4 i32)
  (local $5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $oldObj
   local.get $size
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $oldPtr
   return
  end
  local.get $size
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtId
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $4
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtSize
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy $0 $0
  local.get $newPtr
  return
 )
 (func $assembly/lib/types/basic_types/AString#get:body (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembly/lib/entry/Entry#get:blockAspect (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembly/lib/entry/Entry#get:transactionAspect (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/util/string/compareImpl (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load $0
     local.get $ptr2
     i64.load $0
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   if
    local.get $ptr1
    i32.load16_u $0
    local.set $a
    local.get $ptr2
    i32.load16_u $0
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
  return
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onContractBinding (param $this i32) (param $ctx i32) (param $contractAddr i32) (result i32)
  unreachable
 )
 (func $assembly/lib/types/basic_types/ABool#set:body (param $this i32) (param $body i32)
  local.get $this
  local.get $body
  i32.store8 $0 offset=4
 )
 (func $assembly/lib/types/basic_types/ABool#set:head (param $this i32) (param $head i32)
  local.get $this
  local.get $head
  i32.store $0
  local.get $this
  local.get $head
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/basic_types/ABool#get:head (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/memory/heap.alloc (param $size i32) (result i32)
  local.get $size
  call $~lib/rt/tlsf/__alloc
  return
 )
 (func $assembly/lib/utils/utils.alloc (param $size i32) (result i32)
  local.get $size
  call $~lib/memory/heap.alloc
  return
 )
 (func $assembly/lib/types/basic_types/header#get:dataType (param $this i32) (result i32)
  local.get $this
  i32.load16_s $0
 )
 (func $assembly/lib/types/basic_types/ABool#get:body (param $this i32) (result i32)
  local.get $this
  i32.load8_u $0 offset=4
 )
 (func $assembly/lib/interfaces/IAspectTransaction#isOwner (param $this i32) (param $ctx i32) (param $sender i32) (result i32)
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectBlock#isOwner (param $this i32) (param $ctx i32) (param $sender i32) (result i32)
  unreachable
 )
 (func $assembly/lib/types/basic_types/AUint8Array#set:body (param $this i32) (param $body i32)
  local.get $this
  local.get $body
  i32.store $0 offset=4
  local.get $this
  local.get $body
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/basic_types/AUint8Array#set:head (param $this i32) (param $head i32)
  local.get $this
  local.get $head
  i32.store $0
  local.get $this
  local.get $head
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/basic_types/AUint8Array#get:head (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembly/lib/types/basic_types/AUint8Array#get:body (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/as-proto/assembly/Reader/Reader#get:end (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/as-proto/assembly/Reader/Reader#get:ptr (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:currInnerTx (param $this i32) (param $currInnerTx i32)
  local.get $this
  local.get $currInnerTx
  i32.store $0 offset=12
  local.get $this
  local.get $currInnerTx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint32 (param $this i32) (result i32)
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#int64 (param $this i32) (result i64)
  unreachable
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:chainId (param $this i32) (param $chainId i32)
  local.get $this
  local.get $chainId
  i32.store $0
  local.get $this
  local.get $chainId
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:nonce (param $this i32) (param $nonce i64)
  local.get $this
  local.get $nonce
  i64.store $0 offset=8
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasTipCap (param $this i32) (param $gasTipCap i32)
  local.get $this
  local.get $gasTipCap
  i32.store $0 offset=16
  local.get $this
  local.get $gasTipCap
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasFeeCap (param $this i32) (param $gasFeeCap i32)
  local.get $this
  local.get $gasFeeCap
  i32.store $0 offset=20
  local.get $this
  local.get $gasFeeCap
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasLimit (param $this i32) (param $gasLimit i64)
  local.get $this
  local.get $gasLimit
  i64.store $0 offset=24
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasPrice (param $this i32) (param $gasPrice i64)
  local.get $this
  local.get $gasPrice
  i64.store $0 offset=32
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:to (param $this i32) (param $to i32)
  local.get $this
  local.get $to
  i32.store $0 offset=40
  local.get $this
  local.get $to
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:value (param $this i32) (param $value i64)
  local.get $this
  local.get $value
  i64.store $0 offset=48
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:input (param $this i32) (param $input i32)
  local.get $this
  local.get $input
  i32.store $0 offset=56
  local.get $this
  local.get $input
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:accessList (param $this i32) (param $accessList i32)
  local.get $this
  local.get $accessList
  i32.store $0 offset=60
  local.get $this
  local.get $accessList
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:blockHash (param $this i32) (param $blockHash i32)
  local.get $this
  local.get $blockHash
  i32.store $0 offset=64
  local.get $this
  local.get $blockHash
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:blockNumber (param $this i32) (param $blockNumber i64)
  local.get $this
  local.get $blockNumber
  i64.store $0 offset=72
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:from (param $this i32) (param $from i32)
  local.get $this
  local.get $from
  i32.store $0 offset=80
  local.get $this
  local.get $from
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:hash (param $this i32) (param $hash i32)
  local.get $this
  local.get $hash
  i32.store $0 offset=84
  local.get $this
  local.get $hash
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:transactionIndex (param $this i32) (param $transactionIndex i64)
  local.get $this
  local.get $transactionIndex
  i64.store $0 offset=88
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:type (param $this i32) (param $type i64)
  local.get $this
  local.get $type
  i64.store $0 offset=96
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:v (param $this i32) (param $v i32)
  local.get $this
  local.get $v
  i32.store $0 offset=104
  local.get $this
  local.get $v
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:r (param $this i32) (param $r i32)
  local.get $this
  local.get $r
  i32.store $0 offset=108
  local.get $this
  local.get $r
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:s (param $this i32) (param $s i32)
  local.get $this
  local.get $s
  i32.store $0 offset=112
  local.get $this
  local.get $s
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/as-proto/assembly/Reader/Reader#string (param $this i32) (result i32)
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint64 (param $this i32) (result i64)
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#bytes (param $this i32) (result i32)
  unreachable
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#get:accessList (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=60
 )
 (func $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#set:address (param $this i32) (param $address i32)
  local.get $this
  local.get $address
  i32.store $0
  local.get $this
  local.get $address
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#set:storageKeys (param $this i32) (param $storageKeys i32)
  local.get $this
  local.get $storageKeys
  i32.store $0 offset=4
  local.get $this
  local.get $storageKeys
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#get:storageKeys (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/array/Array<~lib/string/String>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<~lib/string/String>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/array/Array<~lib/string/String>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store $0 offset=12
 )
 (func $~lib/as-proto/assembly/Reader/Reader#skipType (param $this i32) (param $wireType i32)
  unreachable
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store $0 offset=12
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:from (param $this i32) (param $from i32)
  local.get $this
  local.get $from
  i32.store $0
  local.get $this
  local.get $from
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:to (param $this i32) (param $to i32)
  local.get $this
  local.get $to
  i32.store $0 offset=4
  local.get $this
  local.get $to
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:data (param $this i32) (param $data i32)
  local.get $this
  local.get $data
  i32.store $0 offset=8
  local.get $this
  local.get $data
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=12
  local.get $this
  local.get $value
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:gas (param $this i32) (param $gas i32)
  local.get $this
  local.get $gas
  i32.store $0 offset=16
  local.get $this
  local.get $gas
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:index (param $this i32) (param $index i64)
  local.get $this
  local.get $index
  i64.store $0 offset=24
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:parent (param $this i32) (param $parent i32)
  local.get $this
  local.get $parent
  i32.store $0 offset=32
  local.get $this
  local.get $parent
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/context/OnTxReceiveCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/OnTxReceiveCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight (param $this i32) (result i64)
  local.get $this
  i64.load $0
 )
 (func $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onTxReceive (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/OnBlockInitializeCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/OnBlockInitializeCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectBlock#onBlockInitialize (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/OnTxVerifyCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/OnTxVerifyCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onTxVerify (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/OnAccountVerifyCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/OnAccountVerifyCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onAccountVerify (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/OnGasPaymentCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/OnGasPaymentCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onGasPayment (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/PreTxExecuteCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/PreTxExecuteCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectTransaction#preTxExecute (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/PreContractCallCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/PreContractCallCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectTransaction#preContractCall (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/PostContractCallCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/PostContractCallCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectTransaction#postContractCall (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/PostTxExecuteCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/PostTxExecuteCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectTransaction#postTxExecute (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/OnTxCommitCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/OnTxCommitCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onTxCommit (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $assembly/lib/context/OnBlockFinalizeCtx#set:blockHeight (param $this i32) (param $blockHeight i64)
  local.get $this
  local.get $blockHeight
  i64.store $0
 )
 (func $assembly/lib/context/OnBlockFinalizeCtx#set:tx (param $this i32) (param $tx i32)
  local.get $this
  local.get $tx
  i32.store $0 offset=8
  local.get $this
  local.get $tx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/interfaces/IAspectBlock#onBlockFinalize (param $this i32) (param $ctx i32) (result i32)
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#uint32 (param $this i32) (param $value i32)
  unreachable
 )
 (func $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#get:success (param $this i32) (result i32)
  local.get $this
  i32.load8_u $0
 )
 (func $~lib/as-proto/assembly/Writer/Writer#bool (param $this i32) (param $value i32)
  unreachable
 )
 (func $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#get:message (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/as-proto/assembly/Writer/Writer#string (param $this i32) (param $value i32)
  unreachable
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:pos (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/array/Array<u32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store $0 offset=12
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $~lib/array/Array<i32>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store $0 offset=12
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlenidx (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $assembly/index/allocate (param $size i32) (result i32)
  local.get $size
  call $assembly/lib/utils/utils.alloc
  return
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $str i32) (param $len i32) (param $buf i32) (param $nullTerminated i32) (param $errorMode i32) (result i32)
  (local $strEnd i32)
  (local $bufOff i32)
  (local $c1 i32)
  (local $b0 i32)
  (local $b1 i32)
  (local $c2 i32)
  (local $b0|11 i32)
  (local $b1|12 i32)
  (local $b2 i32)
  (local $b3 i32)
  (local $b0|15 i32)
  (local $b1|16 i32)
  (local $b2|17 i32)
  (local $18 i32)
  local.get $str
  local.get $len
  i32.const 1
  i32.shl
  i32.add
  local.set $strEnd
  local.get $buf
  local.set $bufOff
  loop $while-continue|0
   local.get $str
   local.get $strEnd
   i32.lt_u
   if
    local.get $str
    i32.load16_u $0
    local.set $c1
    local.get $c1
    i32.const 128
    i32.lt_u
    if
     local.get $bufOff
     local.get $c1
     i32.store8 $0
     local.get $bufOff
     i32.const 1
     i32.add
     local.set $bufOff
     local.get $nullTerminated
     local.get $c1
     i32.eqz
     i32.and
     if
      local.get $bufOff
      local.get $buf
      i32.sub
      return
     end
    else
     local.get $c1
     i32.const 2048
     i32.lt_u
     if
      local.get $c1
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.set $b0
      local.get $c1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $b1
      local.get $bufOff
      local.get $b1
      i32.const 8
      i32.shl
      local.get $b0
      i32.or
      i32.store16 $0
      local.get $bufOff
      i32.const 2
      i32.add
      local.set $bufOff
     else
      local.get $c1
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      if
       local.get $c1
       i32.const 56320
       i32.lt_u
       if (result i32)
        local.get $str
        i32.const 2
        i32.add
        local.get $strEnd
        i32.lt_u
       else
        i32.const 0
       end
       if
        local.get $str
        i32.load16_u $0 offset=2
        local.set $c2
        local.get $c2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         i32.const 65536
         local.get $c1
         i32.const 1023
         i32.and
         i32.const 10
         i32.shl
         i32.add
         local.get $c2
         i32.const 1023
         i32.and
         i32.or
         local.set $c1
         local.get $c1
         i32.const 18
         i32.shr_u
         i32.const 240
         i32.or
         local.set $b0|11
         local.get $c1
         i32.const 12
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         local.set $b1|12
         local.get $c1
         i32.const 6
         i32.shr_u
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         local.set $b2
         local.get $c1
         i32.const 63
         i32.and
         i32.const 128
         i32.or
         local.set $b3
         local.get $bufOff
         local.get $b3
         i32.const 24
         i32.shl
         local.get $b2
         i32.const 16
         i32.shl
         i32.or
         local.get $b1|12
         i32.const 8
         i32.shl
         i32.or
         local.get $b0|11
         i32.or
         i32.store $0
         local.get $bufOff
         i32.const 4
         i32.add
         local.set $bufOff
         local.get $str
         i32.const 4
         i32.add
         local.set $str
         br $while-continue|0
        end
       end
       local.get $errorMode
       i32.const 0
       i32.ne
       if
        local.get $errorMode
        i32.const 2
        i32.eq
        if
         i32.const 1984
         i32.const 672
         i32.const 742
         i32.const 49
         call $~lib/builtins/abort
         unreachable
        end
        i32.const 65533
        local.set $c1
       end
      end
      local.get $c1
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.set $b0|15
      local.get $c1
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $b1|16
      local.get $c1
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      local.set $b2|17
      local.get $bufOff
      local.get $b1|16
      i32.const 8
      i32.shl
      local.get $b0|15
      i32.or
      i32.store16 $0
      local.get $bufOff
      local.get $b2|17
      i32.store8 $0 offset=2
      local.get $bufOff
      i32.const 3
      i32.add
      local.set $bufOff
     end
    end
    local.get $str
    i32.const 2
    i32.add
    local.set $str
    br $while-continue|0
   end
  end
  local.get $nullTerminated
  if
   local.get $bufOff
   local.tee $18
   i32.const 1
   i32.add
   local.set $bufOff
   local.get $18
   i32.const 0
   i32.store8 $0
  end
  local.get $bufOff
  local.get $buf
  i32.sub
  return
 )
 (func $~lib/string/String.UTF8.encodeUnsafe@varargs (param $str i32) (param $len i32) (param $buf i32) (param $nullTerminated i32) (param $errorMode i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 3
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $nullTerminated
   end
   i32.const 0
   local.set $errorMode
  end
  local.get $str
  local.get $len
  local.get $buf
  local.get $nullTerminated
  local.get $errorMode
  call $~lib/string/String.UTF8.encodeUnsafe
 )
 (func $~lib/util/number/decimalCount32 (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 2460
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits1
    i32.const 2460
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u $0
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store $0
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 2460
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load $0
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store $0
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 2460
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load $0
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store $0
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16 $0
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 2880
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    i32.store $0
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 2880
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u $0
   i32.store16 $0
  end
 )
 (func $~lib/util/number/ulog_base (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 3936
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u $0
    i32.store16 $0
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 3936
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u $0
    i32.store16 $0
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/itoa32
  return
 )
 (func $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#set:success (param $this i32) (param $success i32)
  local.get $this
  local.get $success
  i32.store8 $0
 )
 (func $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#set:message (param $this i32) (param $message i32)
  local.get $this
  local.get $message
  i32.store $0 offset=4
  local.get $this
  local.get $message
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/context/PostContractCallCtx#get:tx (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#set:ctx (param $this i32) (param $ctx i32)
  local.get $this
  local.get $ctx
  i32.store $0
  local.get $this
  local.get $ctx
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#set:addr (param $this i32) (param $addr i32)
  local.get $this
  local.get $addr
  i32.store $0 offset=4
  local.get $this
  local.get $addr
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#set:prefix (param $this i32) (param $prefix i32)
  local.get $this
  local.get $prefix
  i32.store $0 offset=8
  local.get $this
  local.get $prefix
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#get:to (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=40
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#get:from (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=80
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Number#set:_signed (param $this i32) (param $_signed i32)
  local.get $this
  local.get $_signed
  i32.store8 $0 offset=13
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Number#set:_byteSize (param $this i32) (param $_byteSize i32)
  local.get $this
  local.get $_byteSize
  i32.store8 $0 offset=12
 )
 (func $~lib/util/string/isSpace (param $c i32) (result i32)
  (local $1 i32)
  local.get $c
  i32.const 5760
  i32.lt_u
  if
   local.get $c
   i32.const 128
   i32.or
   i32.const 160
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $c
    i32.const 9
    i32.sub
    i32.const 13
    i32.const 9
    i32.sub
    i32.le_u
   end
   return
  end
  local.get $c
  i32.const 8192
  i32.sub
  i32.const 8202
  i32.const 8192
  i32.sub
  i32.le_u
  if
   i32.const 1
   return
  end
  block $break|0
   block $case6|0
    block $case5|0
     block $case4|0
      block $case3|0
       block $case2|0
        block $case1|0
         block $case0|0
          local.get $c
          local.set $1
          local.get $1
          i32.const 5760
          i32.eq
          br_if $case0|0
          local.get $1
          i32.const 8232
          i32.eq
          br_if $case1|0
          local.get $1
          i32.const 8233
          i32.eq
          br_if $case2|0
          local.get $1
          i32.const 8239
          i32.eq
          br_if $case3|0
          local.get $1
          i32.const 8287
          i32.eq
          br_if $case4|0
          local.get $1
          i32.const 12288
          i32.eq
          br_if $case5|0
          local.get $1
          i32.const 65279
          i32.eq
          br_if $case6|0
          br $break|0
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   return
  end
  i32.const 0
  return
 )
 (func $assembly/lib/types/bigint/BigInt#set:d (param $this i32) (param $d i32)
  local.get $this
  local.get $d
  i32.store $0
  local.get $this
  local.get $d
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/bigint/BigInt#set:isNeg (param $this i32) (param $isNeg i32)
  local.get $this
  local.get $isNeg
  i32.store8 $0 offset=8
 )
 (func $assembly/lib/types/bigint/BigInt#set:n (param $this i32) (param $n i32)
  local.get $this
  local.get $n
  i32.store $0 offset=4
 )
 (func $assembly/lib/types/bigint/BigInt#get:d (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembly/lib/types/bigint/BigInt.get:ZERO (result i32)
  i32.const 0
  call $assembly/lib/types/bigint/BigInt.fromUInt16
  return
 )
 (func $assembly/lib/types/bigint/BigInt#get:n (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt> (param $val i32) (result i32)
  i32.const 1
  drop
  local.get $val
  return
 )
 (func $assembly/lib/types/bigint/BigInt#get:isNeg (param $this i32) (result i32)
  local.get $this
  i32.load8_u $0 offset=8
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store $0 offset=12
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Coder#typeName (param $this i32) (result i32)
  unreachable
 )
 (func $~lib/string/String.UTF8.byteLength (param $str i32) (param $nullTerminated i32) (result i32)
  (local $strOff i32)
  (local $strEnd i32)
  (local $bufLen i32)
  (local $c1 i32)
  local.get $str
  local.set $strOff
  local.get $strOff
  local.get $str
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.add
  local.set $strEnd
  local.get $nullTerminated
  i32.const 0
  i32.ne
  local.set $bufLen
  block $while-break|0
   loop $while-continue|0
    local.get $strOff
    local.get $strEnd
    i32.lt_u
    if
     local.get $strOff
     i32.load16_u $0
     local.set $c1
     local.get $c1
     i32.const 128
     i32.lt_u
     if
      local.get $nullTerminated
      local.get $c1
      i32.eqz
      i32.and
      if
       br $while-break|0
      end
      local.get $bufLen
      i32.const 1
      i32.add
      local.set $bufLen
     else
      local.get $c1
      i32.const 2048
      i32.lt_u
      if
       local.get $bufLen
       i32.const 2
       i32.add
       local.set $bufLen
      else
       local.get $c1
       i32.const 64512
       i32.and
       i32.const 55296
       i32.eq
       if (result i32)
        local.get $strOff
        i32.const 2
        i32.add
        local.get $strEnd
        i32.lt_u
       else
        i32.const 0
       end
       if
        local.get $strOff
        i32.load16_u $0 offset=2
        i32.const 64512
        i32.and
        i32.const 56320
        i32.eq
        if
         local.get $bufLen
         i32.const 4
         i32.add
         local.set $bufLen
         local.get $strOff
         i32.const 4
         i32.add
         local.set $strOff
         br $while-continue|0
        end
       end
       local.get $bufLen
       i32.const 3
       i32.add
       local.set $bufLen
      end
     end
     local.get $strOff
     i32.const 2
     i32.add
     local.set $strOff
     br $while-continue|0
    end
   end
  end
  local.get $bufLen
  return
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  return
 )
 (func $assembly/lib/types/basic_types/AI32#set:body (param $this i32) (param $body i32)
  local.get $this
  local.get $body
  i32.store $0 offset=4
 )
 (func $assembly/lib/types/basic_types/AI32#set:head (param $this i32) (param $head i32)
  local.get $this
  local.get $head
  i32.store $0
  local.get $this
  local.get $head
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/basic_types/AI32#get:head (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembly/lib/types/basic_types/AI32#get:body (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Coder#typeSize (param $this i32) (result i64)
  unreachable
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Coder#encodeHex (param $this i32) (result i32)
  unreachable
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Coder#isDynamicType (param $this i32) (result i32)
  unreachable
 )
 (func $~lib/number/U8#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  i32.const 255
  i32.and
  local.get $radix
  call $~lib/util/number/utoa32
  return
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#get:ctx (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#get:addr (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#get:prefix (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=8
 )
 (func $assembly/lib/context/TraceCtx#getStateChanges (param $this i32) (param $addr i32) (param $variable i32) (param $key i32) (result i32)
  unreachable
 )
 (func $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#get:all (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembly/lib/types/message/aspect/v1/StateChange/StateChange#get:account (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $assembly/lib/types/message/aspect/v1/StateChange/StateChange#get:value (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#set:account (param $this i32) (param $account i32)
  local.get $this
  local.get $account
  i32.store $0
  local.get $this
  local.get $account
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#set:change (param $this i32) (param $change i32)
  local.get $this
  local.get $change
  i32.store $0 offset=4
  local.get $this
  local.get $change
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#get:change (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $assembly/lib/types/bigint/BigInt.isPow2 (param $b i32) (result i32)
  (local $i i32)
  i32.const 1
  local.set $i
  loop $for-loop|0
   local.get $i
   global.get $assembly/lib/types/bigint/BigInt.p
   i32.lt_s
   if
    local.get $b
    i32.const 1
    local.get $i
    i32.shl
    i32.eq
    if
     local.get $i
     return
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  return
 )
 (func $~lib/array/Array<i32>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $~lib/array/Array<i32>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/util/bytes/REVERSE<i32> (param $ptr i32) (param $len i32)
  (local $i i32)
  (local $tail i32)
  (local $hlen i32)
  (local $front i32)
  (local $back i32)
  (local $temp i32)
  local.get $len
  i32.const 1
  i32.gt_u
  if
   i32.const 0
   local.set $i
   local.get $len
   i32.const 1
   i32.shr_u
   local.set $hlen
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   local.get $len
   i32.const 1
   i32.sub
   local.set $tail
   loop $while-continue|0
    local.get $i
    local.get $hlen
    i32.lt_u
    if
     local.get $ptr
     local.get $i
     i32.const 2
     i32.shl
     i32.add
     local.set $front
     local.get $ptr
     local.get $tail
     local.get $i
     i32.sub
     i32.const 2
     i32.shl
     i32.add
     local.set $back
     local.get $front
     i32.load $0
     local.set $temp
     local.get $front
     local.get $back
     i32.load $0
     i32.store $0
     local.get $back
     local.get $temp
     i32.store $0
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:varlenidx (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=12
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Number#get:_signed (param $this i32) (result i32)
  local.get $this
  i32.load8_u $0 offset=13
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Number#get:_byteSize (param $this i32) (result i32)
  local.get $this
  i32.load8_u $0 offset=12
 )
 (func $~lib/number/U16#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  i32.const 65535
  i32.and
  local.get $radix
  call $~lib/util/number/utoa32
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Address#typeName (param $this i32) (result i32)
  i32.const 6992
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#typeName (param $this i32) (result i32)
  i32.const 7040
  i32.const 4432
  i32.const 134
  i32.const 13
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#typeSize (param $this i32) (result i64)
  i64.const 32
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#isDynamicType (param $this i32) (result i32)
  i32.const 0
  return
 )
 (func $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#set:all (param $this i32) (param $all i32)
  local.get $this
  local.get $all
  i32.store $0
  local.get $this
  local.get $all
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/StateChange/StateChange#set:account (param $this i32) (param $account i32)
  local.get $this
  local.get $account
  i32.store $0
  local.get $this
  local.get $account
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/lib/types/message/aspect/v1/StateChange/StateChange#set:value (param $this i32) (param $value i32)
  local.get $this
  local.get $value
  i32.store $0 offset=4
  local.get $this
  local.get $value
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store $0 offset=12
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onContractBinding@override (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $3
    local.get $3
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   local.get $2
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onContractBinding
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#isOwner@override (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $3
    local.get $3
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   local.get $2
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#isOwner
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectBlock#isOwner@override (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $3
    local.get $3
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   local.get $2
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#isOwner
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint32@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#int64@override (param $0 i32) (result i64)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#int64
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#string@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#string
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint64@override (param $0 i32) (result i64)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint64
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#bytes@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $1
    local.get $1
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#bytes
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#skipType@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 10
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onTxReceive
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectBlock#onBlockInitialize@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onBlockInitialize
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onTxVerify@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onTxVerify
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onAccountVerify@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onAccountVerify
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onGasPayment@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onGasPayment
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#preTxExecute@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#preTxExecute
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#preContractCall@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#preContractCall
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#postContractCall@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#postContractCall
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#postTxExecute@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#postTxExecute
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onTxCommit@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onTxCommit
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectBlock#onBlockFinalize@override (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $2
    local.get $2
    i32.const 12
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   local.get $1
   call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onBlockFinalize
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#uint32@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load $0
     local.set $2
     local.get $2
     i32.const 4
     i32.eq
     br_if $case0
     local.get $2
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#uint32
    return
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#uint32
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#bool@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load $0
     local.set $2
     local.get $2
     i32.const 4
     i32.eq
     br_if $case0
     local.get $2
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#bool
    return
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#bool
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#string@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $default
   block $case1
    block $case0
     local.get $0
     i32.const 8
     i32.sub
     i32.load $0
     local.set $2
     local.get $2
     i32.const 4
     i32.eq
     br_if $case0
     local.get $2
     i32.const 6
     i32.eq
     br_if $case1
     br $default
    end
    local.get $0
    local.get $1
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#string
    return
   end
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#string
   return
  end
  unreachable
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Coder#typeName@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case2
    block $case1
     block $case0
      local.get $0
      i32.const 8
      i32.sub
      i32.load $0
      local.set $1
      local.get $1
      i32.const 45
      i32.eq
      br_if $case0
      local.get $1
      i32.const 44
      i32.eq
      br_if $case1
      local.get $1
      i32.const 46
      i32.eq
      br_if $case2
      br $default
     end
     local.get $0
     call $assembly/lib/abi/ethereum/coders/ethereum.Number#typeName
     return
    end
    local.get $0
    call $assembly/lib/abi/ethereum/coders/ethereum.Address#typeName
    return
   end
   local.get $0
   call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#typeName
   return
  end
  unreachable
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Coder#typeSize@override (param $0 i32) (result i64)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $1
    local.get $1
    i32.const 46
    i32.eq
    br_if $case0
    local.get $1
    i32.const 45
    i32.eq
    br_if $case0
    local.get $1
    i32.const 44
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#typeSize
   return
  end
  unreachable
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Coder#encodeHex@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $1
    local.get $1
    i32.const 46
    i32.eq
    br_if $case0
    local.get $1
    i32.const 45
    i32.eq
    br_if $case0
    local.get $1
    i32.const 44
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#encodeHex
   return
  end
  unreachable
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Coder#isDynamicType@override (param $0 i32) (result i32)
  (local $1 i32)
  block $default
   block $case0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    local.set $1
    local.get $1
    i32.const 46
    i32.eq
    br_if $case0
    local.get $1
    i32.const 45
    i32.eq
    br_if $case0
    local.get $1
    i32.const 44
    i32.eq
    br_if $case0
    br $default
   end
   local.get $0
   call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#isDynamicType
   return
  end
  unreachable
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#encodeHex@override (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load $0
  drop
  local.get $0
  call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#encodeHex
 )
 (func $assembly/lib/context/TraceCtx#getStateChanges@override (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  block $default
   block $case3
    block $case2
     block $case1
      block $case0
       local.get $0
       i32.const 8
       i32.sub
       i32.load $0
       local.set $4
       local.get $4
       i32.const 36
       i32.eq
       br_if $case0
       local.get $4
       i32.const 38
       i32.eq
       br_if $case1
       local.get $4
       i32.const 39
       i32.eq
       br_if $case2
       local.get $4
       i32.const 40
       i32.eq
       br_if $case3
       br $default
      end
      local.get $0
      local.get $1
      local.get $2
      local.get $3
      call $assembly/lib/context/PreContractCallCtx#getStateChanges
      return
     end
     local.get $0
     local.get $1
     local.get $2
     local.get $3
     call $assembly/lib/context/PostContractCallCtx#getStateChanges
     return
    end
    local.get $0
    local.get $1
    local.get $2
    local.get $3
    call $assembly/lib/context/PostTxExecuteCtx#getStateChanges
    return
   end
   local.get $0
   local.get $1
   local.get $2
   local.get $3
   call $assembly/lib/context/OnTxCommitCtx#getStateChanges
   return
  end
  unreachable
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $assembly/index/firstAspect
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $assembly/index/entry
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 224
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 528
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 5424
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1984
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2880
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3936
  local.get $0
  call $~lib/rt/itcms/__visit
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/as-proto/assembly/Writer/Writer~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/as-proto/assembly/Writer/Writer~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/as-proto/assembly/Writer/Writer~visit
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<u32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<u32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<u32>#__visit
 )
 (func $~lib/array/Array<i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $~lib/typedarray/Uint8Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/as-proto/assembly/Reader/Reader~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/as-proto/assembly/Reader/Reader~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
 )
 (func $assembly/lib/entry/Entry~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/types/basic_types/AString~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/types/basic_types/ABool~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=40
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=56
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=60
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=64
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=80
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=84
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=104
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=108
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=112
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<~lib/string/String>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__visit
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#__visit
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=32
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/types/basic_types/AUint8Array~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>#__visit
 )
 (func $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/OnTxReceiveCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/OnBlockInitializeCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/OnTxVerifyCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/OnAccountVerifyCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/OnGasPaymentCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/PreTxExecuteCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/PreContractCallCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/PostContractCallCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/PostTxExecuteCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/OnTxCommitCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/context/OnBlockFinalizeCtx~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Address~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $assembly/lib/abi/ethereum/coders/ethereum.Number~visit
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Number~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray~visit
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.ByteArray~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/typedarray/Uint8Array~visit
 )
 (func $assembly/lib/types/bigint/BigInt~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/typedarray/Uint32Array~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView~visit
 )
 (func $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__visit
 )
 (func $~lib/function/Function<%28assembly/lib/abi/ethereum/coders/ethereum.Coder%2Ci32%2C~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>%29=>~lib/string/String>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28assembly/lib/abi/ethereum/coders/ethereum.Coder%2Ci32%2C~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>%29=>~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28assembly/lib/abi/ethereum/coders/ethereum.Coder%2Ci32%2C~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>%29=>~lib/string/String>#__visit
 )
 (func $assembly/lib/types/basic_types/AI32~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/lib/types/message/aspect/v1/StateChange/StateChange~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load $0
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load $0
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#__visit
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load $0 offset=4
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>
    block $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>
     block $assembly/lib/types/message/aspect/v1/StateChange/StateChange
      block $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges
       block $assembly/lib/types/basic_types/AI32
        block $~lib/function/Function<%28assembly/lib/abi/ethereum/coders/ethereum.Coder%2Ci32%2C~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>%29=>~lib/string/String>
         block $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>
          block $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>
           block $~lib/typedarray/Uint32Array
            block $assembly/lib/types/bigint/BigInt
             block $assembly/lib/abi/ethereum/coders/ethereum.Coder
              block $assembly/lib/abi/ethereum/coders/ethereum.ByteArray
               block $assembly/lib/abi/ethereum/coders/ethereum.Number
                block $assembly/lib/abi/ethereum/coders/ethereum.Address
                 block $assembly/aspect/honeypot/HoneyPot.balances
                  block $~lib/function/Function<%28assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput%2C~lib/as-proto/assembly/Writer/Writer%29=>void>
                   block $assembly/lib/context/OnBlockFinalizeCtx
                    block $assembly/lib/context/OnTxCommitCtx
                     block $assembly/lib/context/PostTxExecuteCtx
                      block $assembly/lib/context/PostContractCallCtx
                       block $assembly/lib/context/TraceCtx
                        block $assembly/lib/context/PreContractCallCtx
                         block $assembly/lib/context/PreTxExecuteCtx
                          block $assembly/lib/context/OnGasPaymentCtx
                           block $assembly/lib/context/OnAccountVerifyCtx
                            block $assembly/lib/context/OnTxVerifyCtx
                             block $assembly/lib/context/ScheduleCtx
                              block $assembly/lib/context/OnBlockInitializeCtx
                               block $assembly/lib/context/OnTxReceiveCtx
                                block $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput
                                 block $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>
                                  block $assembly/lib/types/basic_types/AUint8Array
                                   block $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction
                                    block $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>
                                     block $~lib/array/Array<~lib/string/String>
                                      block $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple
                                       block $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction
                                        block $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput
                                         block $assembly/lib/types/basic_types/ABool
                                          block $assembly/lib/context/StateCtx
                                           block $assembly/lib/types/basic_types/header
                                            block $assembly/lib/types/basic_types/AString
                                             block $assembly/lib/entry/Entry
                                              block $assembly/lib/interfaces/IAspectBlock
                                               block $assembly/lib/interfaces/IAspectTransaction
                                                block $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect
                                                 block $~lib/as-proto/assembly/Reader/Reader
                                                  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader
                                                   block $~lib/typedarray/Uint8Array
                                                    block $~lib/array/Array<i32>
                                                     block $~lib/array/Array<u32>
                                                      block $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer
                                                       block $~lib/as-proto/assembly/Writer/Writer
                                                        block $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter
                                                         block $~lib/arraybuffer/ArrayBufferView
                                                          block $~lib/string/String
                                                           block $~lib/arraybuffer/ArrayBuffer
                                                            block $~lib/object/Object
                                                             local.get $0
                                                             i32.const 8
                                                             i32.sub
                                                             i32.load $0
                                                             br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter $~lib/as-proto/assembly/Writer/Writer $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer $~lib/array/Array<u32> $~lib/array/Array<i32> $~lib/typedarray/Uint8Array $~lib/as-proto/assembly/internal/FixedReader/FixedReader $~lib/as-proto/assembly/Reader/Reader $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect $assembly/lib/interfaces/IAspectTransaction $assembly/lib/interfaces/IAspectBlock $assembly/lib/entry/Entry $assembly/lib/types/basic_types/AString $assembly/lib/types/basic_types/header $assembly/lib/context/StateCtx $assembly/lib/types/basic_types/ABool $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple $~lib/array/Array<~lib/string/String> $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple> $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction $assembly/lib/types/basic_types/AUint8Array $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/AspectInput/AspectInput> $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput $assembly/lib/context/OnTxReceiveCtx $assembly/lib/context/OnBlockInitializeCtx $assembly/lib/context/ScheduleCtx $assembly/lib/context/OnTxVerifyCtx $assembly/lib/context/OnAccountVerifyCtx $assembly/lib/context/OnGasPaymentCtx $assembly/lib/context/PreTxExecuteCtx $assembly/lib/context/PreContractCallCtx $assembly/lib/context/TraceCtx $assembly/lib/context/PostContractCallCtx $assembly/lib/context/PostTxExecuteCtx $assembly/lib/context/OnTxCommitCtx $assembly/lib/context/OnBlockFinalizeCtx $~lib/function/Function<%28assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput%2C~lib/as-proto/assembly/Writer/Writer%29=>void> $assembly/aspect/honeypot/HoneyPot.balances $assembly/lib/abi/ethereum/coders/ethereum.Address $assembly/lib/abi/ethereum/coders/ethereum.Number $assembly/lib/abi/ethereum/coders/ethereum.ByteArray $assembly/lib/abi/ethereum/coders/ethereum.Coder $assembly/lib/types/bigint/BigInt $~lib/typedarray/Uint32Array $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt> $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder> $~lib/function/Function<%28assembly/lib/abi/ethereum/coders/ethereum.Coder%2Ci32%2C~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>%29=>~lib/string/String> $assembly/lib/types/basic_types/AI32 $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges $assembly/lib/types/message/aspect/v1/StateChange/StateChange $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange> $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/StateChanges/StateChanges> $invalid
                                                            end
                                                            return
                                                           end
                                                           return
                                                          end
                                                          return
                                                         end
                                                         local.get $0
                                                         local.get $1
                                                         call $~lib/arraybuffer/ArrayBufferView~visit
                                                         return
                                                        end
                                                        local.get $0
                                                        local.get $1
                                                        call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter~visit
                                                        return
                                                       end
                                                       return
                                                      end
                                                      local.get $0
                                                      local.get $1
                                                      call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer~visit
                                                      return
                                                     end
                                                     local.get $0
                                                     local.get $1
                                                     call $~lib/array/Array<u32>~visit
                                                     return
                                                    end
                                                    local.get $0
                                                    local.get $1
                                                    call $~lib/array/Array<i32>~visit
                                                    return
                                                   end
                                                   local.get $0
                                                   local.get $1
                                                   call $~lib/typedarray/Uint8Array~visit
                                                   return
                                                  end
                                                  local.get $0
                                                  local.get $1
                                                  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader~visit
                                                  return
                                                 end
                                                 return
                                                end
                                                return
                                               end
                                               return
                                              end
                                              return
                                             end
                                             local.get $0
                                             local.get $1
                                             call $assembly/lib/entry/Entry~visit
                                             return
                                            end
                                            local.get $0
                                            local.get $1
                                            call $assembly/lib/types/basic_types/AString~visit
                                            return
                                           end
                                           return
                                          end
                                          return
                                         end
                                         local.get $0
                                         local.get $1
                                         call $assembly/lib/types/basic_types/ABool~visit
                                         return
                                        end
                                        local.get $0
                                        local.get $1
                                        call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput~visit
                                        return
                                       end
                                       local.get $0
                                       local.get $1
                                       call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction~visit
                                       return
                                      end
                                      local.get $0
                                      local.get $1
                                      call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple~visit
                                      return
                                     end
                                     local.get $0
                                     local.get $1
                                     call $~lib/array/Array<~lib/string/String>~visit
                                     return
                                    end
                                    local.get $0
                                    local.get $1
                                    call $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>~visit
                                    return
                                   end
                                   local.get $0
                                   local.get $1
                                   call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction~visit
                                   return
                                  end
                                  local.get $0
                                  local.get $1
                                  call $assembly/lib/types/basic_types/AUint8Array~visit
                                  return
                                 end
                                 local.get $0
                                 local.get $1
                                 call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>~visit
                                 return
                                end
                                local.get $0
                                local.get $1
                                call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput~visit
                                return
                               end
                               local.get $0
                               local.get $1
                               call $assembly/lib/context/OnTxReceiveCtx~visit
                               return
                              end
                              local.get $0
                              local.get $1
                              call $assembly/lib/context/OnBlockInitializeCtx~visit
                              return
                             end
                             return
                            end
                            local.get $0
                            local.get $1
                            call $assembly/lib/context/OnTxVerifyCtx~visit
                            return
                           end
                           local.get $0
                           local.get $1
                           call $assembly/lib/context/OnAccountVerifyCtx~visit
                           return
                          end
                          local.get $0
                          local.get $1
                          call $assembly/lib/context/OnGasPaymentCtx~visit
                          return
                         end
                         local.get $0
                         local.get $1
                         call $assembly/lib/context/PreTxExecuteCtx~visit
                         return
                        end
                        local.get $0
                        local.get $1
                        call $assembly/lib/context/PreContractCallCtx~visit
                        return
                       end
                       return
                      end
                      local.get $0
                      local.get $1
                      call $assembly/lib/context/PostContractCallCtx~visit
                      return
                     end
                     local.get $0
                     local.get $1
                     call $assembly/lib/context/PostTxExecuteCtx~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $assembly/lib/context/OnTxCommitCtx~visit
                    return
                   end
                   local.get $0
                   local.get $1
                   call $assembly/lib/context/OnBlockFinalizeCtx~visit
                   return
                  end
                  local.get $0
                  local.get $1
                  call $~lib/function/Function<%28assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput%2C~lib/as-proto/assembly/Writer/Writer%29=>void>~visit
                  return
                 end
                 local.get $0
                 local.get $1
                 call $assembly/aspect/honeypot/HoneyPot.balances~visit
                 return
                end
                local.get $0
                local.get $1
                call $assembly/lib/abi/ethereum/coders/ethereum.Address~visit
                return
               end
               local.get $0
               local.get $1
               call $assembly/lib/abi/ethereum/coders/ethereum.Number~visit
               return
              end
              local.get $0
              local.get $1
              call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray~visit
              return
             end
             return
            end
            local.get $0
            local.get $1
            call $assembly/lib/types/bigint/BigInt~visit
            return
           end
           local.get $0
           local.get $1
           call $~lib/typedarray/Uint32Array~visit
           return
          end
          local.get $0
          local.get $1
          call $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>~visit
         return
        end
        local.get $0
        local.get $1
        call $~lib/function/Function<%28assembly/lib/abi/ethereum/coders/ethereum.Coder%2Ci32%2C~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>%29=>~lib/string/String>~visit
        return
       end
       local.get $0
       local.get $1
       call $assembly/lib/types/basic_types/AI32~visit
       return
      end
      local.get $0
      local.get $1
      call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges~visit
      return
     end
     local.get $0
     local.get $1
     call $assembly/lib/types/message/aspect/v1/StateChange/StateChange~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:assembly/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 40192
   i32.const 40240
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/as-proto/assembly/Writer/Writer#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:pos
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlen
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlenidx
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  call $~lib/as-proto/assembly/Writer/Writer#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 7
  i32.const 432
  call $~lib/rt/__newArray
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=8
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:pos
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 464
  call $~lib/rt/__newArray
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=8
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlen
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 496
  call $~lib/rt/__newArray
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=8
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:varlenidx
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $this i32) (param $length i32) (param $alignLog2 i32) (result i32)
  (local $buffer i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $length
  i32.const 1073741820
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   i32.const 528
   i32.const 576
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $length
  local.get $alignLog2
  i32.shl
  local.tee $length
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buffer
  i32.store $0 offset=8
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $buffer
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=12
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#set:buffer
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $buffer
  call $~lib/arraybuffer/ArrayBufferView#set:dataStart
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $length
  call $~lib/arraybuffer/ArrayBufferView#set:byteLength
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $length
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $sizer i32)
  (local $3 i32)
  (local $buf i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:sizer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:buf
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $~lib/as-proto/assembly/Writer/Writer#constructor
  local.tee $this
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $1
  i32.store $0 offset=12
  local.get $1
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:sizer
  local.get $1
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.tee $sizer
  i32.store $0 offset=16
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $3
  i32.store $0 offset=20
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  local.get $sizer
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=24
  local.get $5
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  call $~lib/typedarray/Uint8Array#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:buf
  local.get $3
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:buf
  local.tee $buf
  i32.store $0 offset=28
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  local.get $buf
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/as-proto/assembly/Reader/Reader#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  call $~lib/as-proto/assembly/Reader/Reader#set:ptr
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  call $~lib/as-proto/assembly/Reader/Reader#set:end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#constructor (param $this i32) (param $buf i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#set:buf
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/as-proto/assembly/Reader/Reader#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  call $~lib/as-proto/assembly/Reader/Reader#set:ptr
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/as-proto/assembly/Reader/Reader#set:end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#set:buf
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $start:~lib/as-proto/assembly/Protobuf
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  memory.size $0
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 144
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 176
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#constructor
  global.set $~lib/as-proto/assembly/Protobuf/WRITER
  i32.const 0
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#constructor
  global.set $~lib/as-proto/assembly/Protobuf/READER
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/lib/entry/Entry#constructor (param $this i32) (param $blockAspect i32) (param $transactionAspect i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/entry/Entry#set:blockAspect
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/entry/Entry#set:transactionAspect
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockAspect
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/entry/Entry#set:blockAspect
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $transactionAspect
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/entry/Entry#set:transactionAspect
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $start:assembly/index
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  call $start:assembly/lib/entry
  i32.const 0
  call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#constructor
  global.set $assembly/index/firstAspect
  i32.const 0
  global.get $assembly/index/firstAspect
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  global.get $assembly/index/firstAspect
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  call $assembly/lib/entry/Entry#constructor
  global.set $assembly/index/entry
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/header#constructor (param $this i32) (param $type i32) (param $len i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 17
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/basic_types/header#set:dataType
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/basic_types/header#set:dataLen
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $type
  call $assembly/lib/types/basic_types/header#set:dataType
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $len
  call $assembly/lib/types/basic_types/header#set:dataLen
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/types/basic_types/AString#constructor (param $this i32) (param $body i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $assembly/lib/types/basic_types/AString#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $assembly/lib/types/basic_types/AString#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/basic_types/AString#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  global.get $assembly/lib/types/basic_types/typeIndex.TypeString
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $~lib/string/String#get:length
  call $assembly/lib/types/basic_types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/basic_types/AString#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/lib/types/basic_types/header#load (param $this i32) (param $ptr i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $ptr
  i32.load16_s $0
  call $assembly/lib/types/basic_types/header#set:dataType
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $ptr
  i32.const 2
  i32.add
  i32.load $0
  call $assembly/lib/types/basic_types/header#set:dataLen
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/AString#load (param $this i32) (param $ptr i32)
  (local $bodyPtr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  i32.const 0
  i32.const 0
  i32.const 0
  call $assembly/lib/types/basic_types/header#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AString#set:head
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $ptr
  call $assembly/lib/types/basic_types/header#load
  local.get $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#len
  i32.add
  local.set $bodyPtr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $bodyPtr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=12
  local.get $3
  call $assembly/lib/types/basic_types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/types/basic_types/header#get:dataLen
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AString#set:body
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/AString#get (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembly/lib/types/basic_types/AString#get:body
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/string/String.__eq (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  i32.const 0
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/entry/Entry#loadInputString (param $this i32) (param $argPtr i32) (result i32)
  (local $arg i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $arg
  i32.store $0 offset=4
  local.get $arg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  local.get $argPtr
  call $assembly/lib/types/basic_types/AString#load
  local.get $arg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/types/basic_types/AString#get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/types/basic_types/ABool#constructor (param $this i32) (param $body i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 5
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $assembly/lib/types/basic_types/ABool#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $assembly/lib/types/basic_types/ABool#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $body
  call $assembly/lib/types/basic_types/ABool#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  global.get $assembly/lib/types/basic_types/typeIndex.TypeBool
  i32.const 1
  call $assembly/lib/types/basic_types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/basic_types/ABool#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/lib/types/basic_types/ABool#set (param $this i32) (param $data i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $data
  call $assembly/lib/types/basic_types/ABool#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/basic_types/ABool#get:head
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 1
  call $assembly/lib/types/basic_types/header#set:dataLen
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/header#store (param $this i32) (param $ptr i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $ptr
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/basic_types/header#get:dataType
  i32.extend16_s
  i32.store16 $0
  local.get $ptr
  i32.const 2
  i32.add
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/basic_types/header#get:dataLen
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/ABool#store (param $this i32) (result i32)
  (local $ptr i32)
  (local $bodyPtr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#get:dataLen
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#len
  i32.add
  call $assembly/lib/utils/utils.alloc
  local.set $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $ptr
  call $assembly/lib/types/basic_types/header#store
  local.get $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/ABool#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#len
  i32.add
  local.set $bodyPtr
  local.get $bodyPtr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/ABool#get:body
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  i32.const 1
  memory.fill $0
  local.get $ptr
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/entry/Entry#storeOutputBool (param $this i32) (param $out i32) (result i32)
  (local $b i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  call $assembly/lib/types/basic_types/ABool#constructor
  local.tee $b
  i32.store $0
  local.get $b
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $out
  call $assembly/lib/types/basic_types/ABool#set
  local.get $b
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/ABool#store
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/typedarray/Uint8Array#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/lib/types/basic_types/AUint8Array#constructor (param $this i32) (param $body i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 26
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $assembly/lib/types/basic_types/AUint8Array#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $assembly/lib/types/basic_types/AUint8Array#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/basic_types/AUint8Array#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  global.get $assembly/lib/types/basic_types/typeIndex.TypeByteArray
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $~lib/typedarray/Uint8Array#get:length
  call $assembly/lib/types/basic_types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/basic_types/AUint8Array#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/lib/types/basic_types/AUint8Array#constructor@varargs (param $this i32) (param $body i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $body
   i32.store $0
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $body
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/basic_types/AUint8Array#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.ge_u
  if
   i32.const 224
   i32.const 960
   i32.const 178
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.add
  local.get $value
  i32.store8 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/AUint8Array#load (param $this i32) (param $ptr i32)
  (local $bodyPtr i32)
  (local $i i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  i32.const 0
  i32.const 0
  i32.const 0
  call $assembly/lib/types/basic_types/header#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#set:head
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $ptr
  call $assembly/lib/types/basic_types/header#load
  local.get $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $assembly/lib/types/basic_types/header#len
  i32.add
  local.set $bodyPtr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  i32.const 0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=12
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/lib/types/basic_types/header#get:dataLen
  call $~lib/typedarray/Uint8Array#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#set:body
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $assembly/lib/types/basic_types/AUint8Array#get:head
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   call $assembly/lib/types/basic_types/header#get:dataLen
   i32.lt_s
   if
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    call $assembly/lib/types/basic_types/AUint8Array#get:body
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    local.get $4
    local.get $i
    local.get $bodyPtr
    i32.load8_u $0
    call $~lib/typedarray/Uint8Array#__set
    local.get $bodyPtr
    i32.const 1
    i32.add
    local.set $bodyPtr
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/AUint8Array#get (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembly/lib/types/basic_types/AUint8Array#get:body
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (param $currInnerTx i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i64.const 0
  call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:blockHeight
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:tx
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:currInnerTx
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $blockHeight
  call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:blockHeight
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $tx
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:tx
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $currInnerTx
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:currInnerTx
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#constructor (param $this i32) (param $chainId i32) (param $nonce i64) (param $gasTipCap i32) (param $gasFeeCap i32) (param $gasLimit i64) (param $gasPrice i64) (param $to i32) (param $value i64) (param $input i32) (param $accessList i32) (param $blockHash i32) (param $blockNumber i64) (param $from i32) (param $hash i32) (param $transactionIndex i64) (param $type i64) (param $v i32) (param $r i32) (param $s i32) (result i32)
  (local $20 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 116
   i32.const 21
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:chainId
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i64.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:nonce
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasTipCap
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasFeeCap
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i64.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasLimit
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i64.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasPrice
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:to
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i64.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:value
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:input
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:accessList
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:blockHash
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i64.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:blockNumber
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:from
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:hash
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i64.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:transactionIndex
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i64.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:type
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:v
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:r
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:s
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $chainId
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:chainId
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $nonce
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:nonce
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $gasTipCap
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasTipCap
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $gasFeeCap
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasFeeCap
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $gasLimit
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasLimit
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $gasPrice
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasPrice
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $to
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:to
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $value
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:value
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $input
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:input
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $accessList
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:accessList
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $blockHash
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:blockHash
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $blockNumber
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:blockNumber
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $from
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:from
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $hash
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:hash
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $transactionIndex
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:transactionIndex
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $type
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:type
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $v
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:v
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $r
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:r
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=4
  local.get $20
  local.get $s
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store $0 offset=8
  local.get $20
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:s
  local.get $this
  local.set $20
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $20
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#constructor@varargs (param $this i32) (param $chainId i32) (param $nonce i64) (param $gasTipCap i32) (param $gasFeeCap i32) (param $gasLimit i64) (param $gasPrice i64) (param $to i32) (param $value i64) (param $input i32) (param $accessList i32) (param $blockHash i32) (param $blockNumber i64) (param $from i32) (param $hash i32) (param $transactionIndex i64) (param $type i64) (param $v i32) (param $r i32) (param $s i32) (result i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 100
  memory.fill $0
  block $19of19
   block $18of19
    block $17of19
     block $16of19
      block $15of19
       block $14of19
        block $13of19
         block $12of19
          block $11of19
           block $10of19
            block $9of19
             block $8of19
              block $7of19
               block $6of19
                block $5of19
                 block $4of19
                  block $3of19
                   block $2of19
                    block $1of19
                     block $0of19
                      block $outOfRange
                       global.get $~argumentsLength
                       br_table $0of19 $1of19 $2of19 $3of19 $4of19 $5of19 $6of19 $7of19 $8of19 $9of19 $10of19 $11of19 $12of19 $13of19 $14of19 $15of19 $16of19 $17of19 $18of19 $19of19 $outOfRange
                      end
                      unreachable
                     end
                     global.get $~lib/memory/__stack_pointer
                     i32.const 640
                     local.tee $chainId
                     i32.store $0
                    end
                    i64.const 0
                    local.set $nonce
                   end
                   global.get $~lib/memory/__stack_pointer
                   i32.const 640
                   local.tee $gasTipCap
                   i32.store $0 offset=4
                  end
                  global.get $~lib/memory/__stack_pointer
                  i32.const 640
                  local.tee $gasFeeCap
                  i32.store $0 offset=8
                 end
                 i64.const 0
                 local.set $gasLimit
                end
                i64.const 0
                local.set $gasPrice
               end
               global.get $~lib/memory/__stack_pointer
               i32.const 640
               local.tee $to
               i32.store $0 offset=12
              end
              i64.const 0
              local.set $value
             end
             global.get $~lib/memory/__stack_pointer
             i32.const 0
             i32.const 0
             call $~lib/typedarray/Uint8Array#constructor
             local.tee $input
             i32.store $0 offset=16
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 0
            i32.const 2
            i32.const 24
            i32.const 1024
            call $~lib/rt/__newArray
            local.tee $accessList
            i32.store $0 offset=20
           end
           global.get $~lib/memory/__stack_pointer
           i32.const 0
           i32.const 0
           call $~lib/typedarray/Uint8Array#constructor
           local.tee $blockHash
           i32.store $0 offset=24
          end
          i64.const 0
          local.set $blockNumber
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 640
         local.tee $from
         i32.store $0 offset=28
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 0
        call $~lib/typedarray/Uint8Array#constructor
        local.tee $hash
        i32.store $0 offset=32
       end
       i64.const 0
       local.set $transactionIndex
      end
      i64.const 0
      local.set $type
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $v
     i32.store $0 offset=36
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 0
    call $~lib/typedarray/Uint8Array#constructor
    local.tee $r
    i32.store $0 offset=40
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $s
   i32.store $0 offset=44
  end
  local.get $this
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=48
  local.get $22
  local.get $chainId
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=52
  local.get $22
  local.get $nonce
  local.get $gasTipCap
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=56
  local.get $22
  local.get $gasFeeCap
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=60
  local.get $22
  local.get $gasLimit
  local.get $gasPrice
  local.get $to
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=64
  local.get $22
  local.get $value
  local.get $input
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=68
  local.get $22
  local.get $accessList
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=72
  local.get $22
  local.get $blockHash
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=76
  local.get $22
  local.get $blockNumber
  local.get $from
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=80
  local.get $22
  local.get $hash
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=84
  local.get $22
  local.get $transactionIndex
  local.get $type
  local.get $v
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=88
  local.get $22
  local.get $r
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=92
  local.get $22
  local.get $s
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store $0 offset=96
  local.get $22
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#constructor
  local.set $22
  global.get $~lib/memory/__stack_pointer
  i32.const 100
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $22
 )
 (func $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#constructor (param $this i32) (param $address i32) (param $storageKeys i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#set:address
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#set:storageKeys
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $address
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#set:address
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $storageKeys
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#set:storageKeys
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#constructor@varargs (param $this i32) (param $address i32) (param $storageKeys i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 640
    local.tee $address
    i32.store $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 23
   i32.const 1056
   call $~lib/rt/__newArray
   local.tee $storageKeys
   i32.store $0 offset=4
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  local.get $address
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=12
  local.get $5
  local.get $storageKeys
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=16
  local.get $5
  call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $6 i32)
  (local $7 i32)
  (local $newCapacity i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $newData i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $array
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store $0
  local.get $14
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $oldCapacity
  local.get $newSize
  local.get $oldCapacity
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   local.get $newSize
   i32.const 1073741820
   local.get $alignLog2
   i32.shr_u
   i32.gt_u
   if
    i32.const 528
    i32.const 1088
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $array
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store $0
   local.get $14
   call $~lib/arraybuffer/ArrayBufferView#get:buffer
   local.set $oldData
   local.get $newSize
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $alignLog2
   i32.shl
   local.set $newCapacity
   local.get $canGrow
   if
    local.get $oldCapacity
    i32.const 1
    i32.shl
    local.tee $9
    i32.const 1073741820
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_u
    select
    local.tee $11
    local.get $newCapacity
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_u
    select
    local.set $newCapacity
   end
   local.get $oldData
   local.get $newCapacity
   call $~lib/rt/itcms/__renew
   local.set $newData
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $newData
   local.get $oldData
   i32.ne
   if
    local.get $array
    local.get $newData
    i32.store $0
    local.get $array
    local.get $newData
    i32.store $0 offset=4
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store $0 offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $len
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#constructor@varargs
  local.tee $message
  i32.store $0 offset=8
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $tag
        i32.const 3
        i32.shr_u
        local.set $5
        local.get $5
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $5
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=12
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#string@override
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=4
       local.get $6
       call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#set:address
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=12
      local.get $6
      call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple#get:storageKeys
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=12
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#string@override
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=4
      local.get $6
      call $~lib/array/Array<~lib/string/String>#push
      drop
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $len
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill $0
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  i64.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=8
  local.get $6
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=12
  local.get $6
  i64.const 0
  i64.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=16
  local.get $6
  i64.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  i64.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=20
  local.get $6
  i32.const 0
  i64.const 0
  i64.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#constructor@varargs
  local.tee $message
  i32.store $0 offset=24
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case19|1
      block $case18|1
       block $case17|1
        block $case16|1
         block $case15|1
          block $case14|1
           block $case13|1
            block $case12|1
             block $case11|1
              block $case10|1
               block $case9|1
                block $case8|1
                 block $case7|1
                  block $case6|1
                   block $case5|1
                    block $case4|1
                     block $case3|1
                      block $case2|1
                       block $case1|1
                        block $case0|1
                         local.get $tag
                         i32.const 3
                         i32.shr_u
                         local.set $5
                         local.get $5
                         i32.const 1
                         i32.eq
                         br_if $case0|1
                         local.get $5
                         i32.const 2
                         i32.eq
                         br_if $case1|1
                         local.get $5
                         i32.const 3
                         i32.eq
                         br_if $case2|1
                         local.get $5
                         i32.const 4
                         i32.eq
                         br_if $case3|1
                         local.get $5
                         i32.const 5
                         i32.eq
                         br_if $case4|1
                         local.get $5
                         i32.const 6
                         i32.eq
                         br_if $case5|1
                         local.get $5
                         i32.const 7
                         i32.eq
                         br_if $case6|1
                         local.get $5
                         i32.const 8
                         i32.eq
                         br_if $case7|1
                         local.get $5
                         i32.const 9
                         i32.eq
                         br_if $case8|1
                         local.get $5
                         i32.const 10
                         i32.eq
                         br_if $case9|1
                         local.get $5
                         i32.const 11
                         i32.eq
                         br_if $case10|1
                         local.get $5
                         i32.const 12
                         i32.eq
                         br_if $case11|1
                         local.get $5
                         i32.const 13
                         i32.eq
                         br_if $case12|1
                         local.get $5
                         i32.const 14
                         i32.eq
                         br_if $case13|1
                         local.get $5
                         i32.const 15
                         i32.eq
                         br_if $case14|1
                         local.get $5
                         i32.const 16
                         i32.eq
                         br_if $case15|1
                         local.get $5
                         i32.const 17
                         i32.eq
                         br_if $case16|1
                         local.get $5
                         i32.const 18
                         i32.eq
                         br_if $case17|1
                         local.get $5
                         i32.const 19
                         i32.eq
                         br_if $case18|1
                         br $case19|1
                        end
                        local.get $message
                        local.set $6
                        global.get $~lib/memory/__stack_pointer
                        local.get $6
                        i32.store $0
                        local.get $6
                        local.get $reader
                        local.set $6
                        global.get $~lib/memory/__stack_pointer
                        local.get $6
                        i32.store $0 offset=28
                        local.get $6
                        call $~lib/as-proto/assembly/Reader/Reader#string@override
                        local.set $6
                        global.get $~lib/memory/__stack_pointer
                        local.get $6
                        i32.store $0 offset=4
                        local.get $6
                        call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:chainId
                        br $break|1
                       end
                       local.get $message
                       local.set $6
                       global.get $~lib/memory/__stack_pointer
                       local.get $6
                       i32.store $0
                       local.get $6
                       local.get $reader
                       local.set $6
                       global.get $~lib/memory/__stack_pointer
                       local.get $6
                       i32.store $0 offset=4
                       local.get $6
                       call $~lib/as-proto/assembly/Reader/Reader#uint64@override
                       call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:nonce
                       br $break|1
                      end
                      local.get $message
                      local.set $6
                      global.get $~lib/memory/__stack_pointer
                      local.get $6
                      i32.store $0
                      local.get $6
                      local.get $reader
                      local.set $6
                      global.get $~lib/memory/__stack_pointer
                      local.get $6
                      i32.store $0 offset=28
                      local.get $6
                      call $~lib/as-proto/assembly/Reader/Reader#string@override
                      local.set $6
                      global.get $~lib/memory/__stack_pointer
                      local.get $6
                      i32.store $0 offset=4
                      local.get $6
                      call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasTipCap
                      br $break|1
                     end
                     local.get $message
                     local.set $6
                     global.get $~lib/memory/__stack_pointer
                     local.get $6
                     i32.store $0
                     local.get $6
                     local.get $reader
                     local.set $6
                     global.get $~lib/memory/__stack_pointer
                     local.get $6
                     i32.store $0 offset=28
                     local.get $6
                     call $~lib/as-proto/assembly/Reader/Reader#string@override
                     local.set $6
                     global.get $~lib/memory/__stack_pointer
                     local.get $6
                     i32.store $0 offset=4
                     local.get $6
                     call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasFeeCap
                     br $break|1
                    end
                    local.get $message
                    local.set $6
                    global.get $~lib/memory/__stack_pointer
                    local.get $6
                    i32.store $0
                    local.get $6
                    local.get $reader
                    local.set $6
                    global.get $~lib/memory/__stack_pointer
                    local.get $6
                    i32.store $0 offset=4
                    local.get $6
                    call $~lib/as-proto/assembly/Reader/Reader#uint64@override
                    call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasLimit
                    br $break|1
                   end
                   local.get $message
                   local.set $6
                   global.get $~lib/memory/__stack_pointer
                   local.get $6
                   i32.store $0
                   local.get $6
                   local.get $reader
                   local.set $6
                   global.get $~lib/memory/__stack_pointer
                   local.get $6
                   i32.store $0 offset=4
                   local.get $6
                   call $~lib/as-proto/assembly/Reader/Reader#uint64@override
                   call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:gasPrice
                   br $break|1
                  end
                  local.get $message
                  local.set $6
                  global.get $~lib/memory/__stack_pointer
                  local.get $6
                  i32.store $0
                  local.get $6
                  local.get $reader
                  local.set $6
                  global.get $~lib/memory/__stack_pointer
                  local.get $6
                  i32.store $0 offset=28
                  local.get $6
                  call $~lib/as-proto/assembly/Reader/Reader#string@override
                  local.set $6
                  global.get $~lib/memory/__stack_pointer
                  local.get $6
                  i32.store $0 offset=4
                  local.get $6
                  call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:to
                  br $break|1
                 end
                 local.get $message
                 local.set $6
                 global.get $~lib/memory/__stack_pointer
                 local.get $6
                 i32.store $0
                 local.get $6
                 local.get $reader
                 local.set $6
                 global.get $~lib/memory/__stack_pointer
                 local.get $6
                 i32.store $0 offset=4
                 local.get $6
                 call $~lib/as-proto/assembly/Reader/Reader#uint64@override
                 call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:value
                 br $break|1
                end
                local.get $message
                local.set $6
                global.get $~lib/memory/__stack_pointer
                local.get $6
                i32.store $0
                local.get $6
                local.get $reader
                local.set $6
                global.get $~lib/memory/__stack_pointer
                local.get $6
                i32.store $0 offset=28
                local.get $6
                call $~lib/as-proto/assembly/Reader/Reader#bytes@override
                local.set $6
                global.get $~lib/memory/__stack_pointer
                local.get $6
                i32.store $0 offset=4
                local.get $6
                call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:input
                br $break|1
               end
               local.get $message
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store $0 offset=28
               local.get $6
               call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#get:accessList
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store $0
               local.get $6
               local.get $reader
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store $0 offset=28
               local.get $6
               local.get $reader
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store $0 offset=8
               local.get $6
               call $~lib/as-proto/assembly/Reader/Reader#uint32@override
               call $assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple.decode
               local.set $6
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store $0 offset=4
               local.get $6
               call $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#push
               drop
               br $break|1
              end
              local.get $message
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store $0
              local.get $6
              local.get $reader
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store $0 offset=28
              local.get $6
              call $~lib/as-proto/assembly/Reader/Reader#bytes@override
              local.set $6
              global.get $~lib/memory/__stack_pointer
              local.get $6
              i32.store $0 offset=4
              local.get $6
              call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:blockHash
              br $break|1
             end
             local.get $message
             local.set $6
             global.get $~lib/memory/__stack_pointer
             local.get $6
             i32.store $0
             local.get $6
             local.get $reader
             local.set $6
             global.get $~lib/memory/__stack_pointer
             local.get $6
             i32.store $0 offset=4
             local.get $6
             call $~lib/as-proto/assembly/Reader/Reader#int64@override
             call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:blockNumber
             br $break|1
            end
            local.get $message
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store $0
            local.get $6
            local.get $reader
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store $0 offset=28
            local.get $6
            call $~lib/as-proto/assembly/Reader/Reader#string@override
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store $0 offset=4
            local.get $6
            call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:from
            br $break|1
           end
           local.get $message
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store $0
           local.get $6
           local.get $reader
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store $0 offset=28
           local.get $6
           call $~lib/as-proto/assembly/Reader/Reader#bytes@override
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store $0 offset=4
           local.get $6
           call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:hash
           br $break|1
          end
          local.get $message
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store $0
          local.get $6
          local.get $reader
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store $0 offset=4
          local.get $6
          call $~lib/as-proto/assembly/Reader/Reader#int64@override
          call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:transactionIndex
          br $break|1
         end
         local.get $message
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store $0
         local.get $6
         local.get $reader
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store $0 offset=4
         local.get $6
         call $~lib/as-proto/assembly/Reader/Reader#uint64@override
         call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:type
         br $break|1
        end
        local.get $message
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0
        local.get $6
        local.get $reader
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0 offset=28
        local.get $6
        call $~lib/as-proto/assembly/Reader/Reader#bytes@override
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0 offset=4
        local.get $6
        call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:v
        br $break|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=28
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#bytes@override
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=4
       local.get $6
       call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:r
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=28
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=4
      local.get $6
      call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#set:s
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#constructor (param $this i32) (param $from i32) (param $to i32) (param $data i32) (param $value i32) (param $gas i32) (param $index i64) (param $parent i32) (result i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 36
   i32.const 25
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:from
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:to
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:data
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:value
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:gas
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  i64.const 0
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:index
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:parent
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  local.get $from
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:from
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  local.get $to
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:to
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  local.get $data
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:data
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  local.get $value
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:value
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  local.get $gas
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:gas
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  local.get $index
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:index
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  local.get $parent
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:parent
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#constructor@varargs (param $this i32) (param $from i32) (param $to i32) (param $data i32) (param $value i32) (param $gas i32) (param $index i64) (param $parent i32) (result i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill $0
  block $7of7
   block $6of7
    block $5of7
     block $4of7
      block $3of7
       block $2of7
        block $1of7
         block $0of7
          block $outOfRange
           global.get $~argumentsLength
           br_table $0of7 $1of7 $2of7 $3of7 $4of7 $5of7 $6of7 $7of7 $outOfRange
          end
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 640
         local.tee $from
         i32.store $0
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 640
        local.tee $to
        i32.store $0 offset=4
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 0
       call $~lib/typedarray/Uint8Array#constructor
       local.tee $data
       i32.store $0 offset=8
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 640
      local.tee $value
      i32.store $0 offset=12
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 640
     local.tee $gas
     i32.store $0 offset=16
    end
    i64.const 0
    local.set $index
   end
   i32.const 0
   local.set $parent
  end
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=20
  local.get $8
  local.get $from
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=24
  local.get $8
  local.get $to
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=28
  local.get $8
  local.get $data
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=32
  local.get $8
  local.get $value
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=36
  local.get $8
  local.get $gas
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=40
  local.get $8
  local.get $index
  local.get $parent
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=44
  local.get $8
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#constructor
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill $0
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=8
  local.get $6
  i32.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=12
  local.get $6
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=16
  local.get $6
  i64.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#constructor@varargs
  local.tee $message
  i32.store $0 offset=20
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case7|1
      block $case6|1
       block $case5|1
        block $case4|1
         block $case3|1
          block $case2|1
           block $case1|1
            block $case0|1
             local.get $tag
             i32.const 3
             i32.shr_u
             local.set $5
             local.get $5
             i32.const 1
             i32.eq
             br_if $case0|1
             local.get $5
             i32.const 2
             i32.eq
             br_if $case1|1
             local.get $5
             i32.const 3
             i32.eq
             br_if $case2|1
             local.get $5
             i32.const 4
             i32.eq
             br_if $case3|1
             local.get $5
             i32.const 5
             i32.eq
             br_if $case4|1
             local.get $5
             i32.const 6
             i32.eq
             br_if $case5|1
             local.get $5
             i32.const 7
             i32.eq
             br_if $case6|1
             br $case7|1
            end
            local.get $message
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store $0
            local.get $6
            local.get $reader
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store $0 offset=8
            local.get $6
            call $~lib/as-proto/assembly/Reader/Reader#string@override
            local.set $6
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store $0 offset=4
            local.get $6
            call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:from
            br $break|1
           end
           local.get $message
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store $0
           local.get $6
           local.get $reader
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store $0 offset=8
           local.get $6
           call $~lib/as-proto/assembly/Reader/Reader#string@override
           local.set $6
           global.get $~lib/memory/__stack_pointer
           local.get $6
           i32.store $0 offset=4
           local.get $6
           call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:to
           br $break|1
          end
          local.get $message
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store $0
          local.get $6
          local.get $reader
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store $0 offset=8
          local.get $6
          call $~lib/as-proto/assembly/Reader/Reader#bytes@override
          local.set $6
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store $0 offset=4
          local.get $6
          call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:data
          br $break|1
         end
         local.get $message
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store $0
         local.get $6
         local.get $reader
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store $0 offset=8
         local.get $6
         call $~lib/as-proto/assembly/Reader/Reader#string@override
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store $0 offset=4
         local.get $6
         call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:value
         br $break|1
        end
        local.get $message
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0
        local.get $6
        local.get $reader
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0 offset=8
        local.get $6
        call $~lib/as-proto/assembly/Reader/Reader#string@override
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0 offset=4
        local.get $6
        call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:gas
        br $break|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=4
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#uint64@override
       call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:index
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=8
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=24
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction.decode
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=4
      local.get $6
      call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction#set:parent
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i64.const 0
  i32.const 0
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#constructor
  local.tee $message
  i32.store $0 offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $tag
         i32.const 3
         i32.shr_u
         local.set $5
         local.get $5
         i32.const 1
         i32.eq
         br_if $case0|1
         local.get $5
         i32.const 2
         i32.eq
         br_if $case1|1
         local.get $5
         i32.const 3
         i32.eq
         br_if $case2|1
         br $case3|1
        end
        local.get $message
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0
        local.get $6
        local.get $reader
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store $0 offset=8
        local.get $6
        call $~lib/as-proto/assembly/Reader/Reader#int64@override
        call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:blockHeight
        br $break|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=12
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=16
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction.decode
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=8
       local.get $6
       call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:tx
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=12
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=16
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction.decode
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=8
      local.get $6
      call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#set:currInnerTx
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#reset (param $this i32) (param $buf i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  call $~lib/as-proto/assembly/Reader/Reader#set:ptr
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/as-proto/assembly/Reader/Reader#set:end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $buf
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#set:buf
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/AspectInput/AspectInput> (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#reset
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $length
  i32.const 2
  global.set $~argumentsLength
  local.get $decoder
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>@varargs (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $length
  end
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $decoder
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $length
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/entry/Entry#loadAspectInput (param $this i32) (param $argPtr i32) (result i32)
  (local $encodedArg i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
  local.tee $encodedArg
  i32.store $0
  local.get $encodedArg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $argPtr
  call $assembly/lib/types/basic_types/AUint8Array#load
  local.get $encodedArg
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=12
  local.get $3
  call $assembly/lib/types/basic_types/AUint8Array#get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 1136
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/context/OnTxReceiveCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 29
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/OnTxReceiveCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/OnTxReceiveCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/OnTxReceiveCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/OnTxReceiveCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/OnBlockInitializeCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 30
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/OnBlockInitializeCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/OnBlockInitializeCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/OnBlockInitializeCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/OnBlockInitializeCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/OnTxVerifyCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 32
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/OnTxVerifyCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/OnTxVerifyCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/OnTxVerifyCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/OnTxVerifyCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/OnAccountVerifyCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 33
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/OnAccountVerifyCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/OnAccountVerifyCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/OnAccountVerifyCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/OnAccountVerifyCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/OnGasPaymentCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 34
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/OnGasPaymentCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/OnGasPaymentCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/OnGasPaymentCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/OnGasPaymentCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/PreTxExecuteCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 35
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/PreTxExecuteCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/PreTxExecuteCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/PreTxExecuteCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/PreTxExecuteCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/PreContractCallCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 36
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/PreContractCallCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/PreContractCallCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/PreContractCallCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/PreContractCallCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/PostContractCallCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 38
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/PostContractCallCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/PostContractCallCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/PostContractCallCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/PostContractCallCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/PostTxExecuteCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 39
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/PostTxExecuteCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/PostTxExecuteCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/PostTxExecuteCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/PostTxExecuteCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/OnTxCommitCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 40
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/OnTxCommitCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/OnTxCommitCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/OnTxCommitCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/OnTxCommitCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/context/OnBlockFinalizeCtx#constructor (param $this i32) (param $blockHeight i64) (param $tx i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 41
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i64.const 0
  call $assembly/lib/context/OnBlockFinalizeCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/context/OnBlockFinalizeCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $blockHeight
  call $assembly/lib/context/OnBlockFinalizeCtx#set:blockHeight
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $tx
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/context/OnBlockFinalizeCtx#set:tx
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/string/String#concat (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 640
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy $0 $0
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy $0 $0
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/string/String.__concat (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput.encode (param $message i32) (param $writer i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 8
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#get:success
  call $~lib/as-proto/assembly/Writer/Writer#bool@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 18
  call $~lib/as-proto/assembly/Writer/Writer#uint32@override
  local.get $writer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#get:message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/as-proto/assembly/Writer/Writer#string@override
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<u32>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $newLength
  call $~lib/array/Array<u32>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#set:length (param $this i32) (param $newLength i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.get $newLength
  i32.const 2
  i32.const 0
  call $~lib/array/ensureCapacity
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $newLength
  call $~lib/array/Array<i32>#set:length_
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#reset (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:pos
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/array/Array<u32>#set:length
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#set:length
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlenidx
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/array/Array<i32>#set:length
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#reset (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=12
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:buf
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:buf
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#finish (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:buf
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput> (param $message i32) (param $encoder i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_none)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#reset
  local.get $message
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 2
  global.set $~argumentsLength
  local.get $encoder
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_none)
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#finish
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/types/basic_types/AUint8Array#set (param $this i32) (param $data i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/basic_types/AUint8Array#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/basic_types/AUint8Array#get:head
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/typedarray/Uint8Array#get:length
  call $assembly/lib/types/basic_types/header#set:dataLen
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Uint8Array#__get (param $this i32) (param $index i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $index
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.ge_u
  if
   i32.const 224
   i32.const 960
   i32.const 167
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.add
  i32.load8_u $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/types/basic_types/AUint8Array#store (param $this i32) (result i32)
  (local $ptr i32)
  (local $bodyPtr i32)
  (local $i i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $assembly/lib/types/basic_types/header#get:dataLen
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $assembly/lib/types/basic_types/header#len
  i32.add
  call $assembly/lib/utils/utils.alloc
  local.set $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $ptr
  call $assembly/lib/types/basic_types/header#store
  local.get $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#get:head
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $assembly/lib/types/basic_types/header#len
  i32.add
  local.set $bodyPtr
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $assembly/lib/types/basic_types/AUint8Array#get:head
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   call $assembly/lib/types/basic_types/header#get:dataLen
   i32.lt_s
   if
    local.get $bodyPtr
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    call $assembly/lib/types/basic_types/AUint8Array#get:body
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    local.get $4
    local.get $i
    call $~lib/typedarray/Uint8Array#__get
    i32.const 1
    memory.fill $0
    local.get $bodyPtr
    i32.const 1
    i32.add
    local.set $bodyPtr
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $ptr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/entry/Entry#storeAspectOutput (param $this i32) (param $output i32) (result i32)
  (local $encodedOutput i32)
  (local $ret i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $output
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  i32.const 1904
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput>
  local.tee $encodedOutput
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
  local.tee $ret
  i32.store $0 offset=12
  local.get $ret
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $encodedOutput
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#set
  local.get $ret
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#store
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/entry/Entry#execute (param $this i32) (param $methodPtr i32) (param $argPtr i32) (result i32)
  (local $methodArg i32)
  (local $method i32)
  (local $arg i32)
  (local $out i32)
  (local $arg|7 i32)
  (local $out|8 i32)
  (local $out|9 i32)
  (local $arg|10 i32)
  (local $out|11 i32)
  (local $ctx i32)
  (local $ctx|13 i32)
  (local $ctx|14 i32)
  (local $ctx|15 i32)
  (local $ctx|16 i32)
  (local $ctx|17 i32)
  (local $ctx|18 i32)
  (local $ctx|19 i32)
  (local $ctx|20 i32)
  (local $ctx|21 i32)
  (local $ctx|22 i32)
  (local $23 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 84
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0
  local.get $23
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $methodArg
  i32.store $0 offset=4
  local.get $methodArg
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0 offset=8
  local.get $23
  local.get $methodPtr
  call $assembly/lib/types/basic_types/AString#load
  global.get $~lib/memory/__stack_pointer
  local.get $methodArg
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0 offset=8
  local.get $23
  call $assembly/lib/types/basic_types/AString#get
  local.tee $method
  i32.store $0 offset=12
  local.get $this
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0 offset=8
  local.get $23
  call $assembly/lib/entry/Entry#get:blockAspect
  i32.const 0
  i32.eq
  if (result i32)
   local.get $this
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=8
   local.get $23
   call $assembly/lib/entry/Entry#get:transactionAspect
   i32.const 0
   i32.eq
  else
   i32.const 0
  end
  if
   i32.const 720
   i32.const 784
   i32.const 68
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $method
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0 offset=8
  local.get $23
  i32.const 848
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0
  local.get $23
  call $~lib/string/String.__eq
  if (result i32)
   local.get $this
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=8
   local.get $23
   call $assembly/lib/entry/Entry#get:transactionAspect
   i32.const 0
   i32.ne
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=8
   local.get $23
   local.get $argPtr
   call $assembly/lib/entry/Entry#loadInputString
   local.tee $arg
   i32.store $0 offset=16
   local.get $this
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=24
   local.get $23
   call $assembly/lib/entry/Entry#get:transactionAspect
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=8
   local.get $23
   i32.const 0
   call $assembly/lib/context/StateCtx#constructor
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0
   local.get $23
   local.get $arg
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=20
   local.get $23
   call $assembly/lib/interfaces/IAspectTransaction#onContractBinding@override
   local.set $out
   local.get $this
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=8
   local.get $23
   local.get $out
   call $assembly/lib/entry/Entry#storeOutputBool
   local.set $23
   global.get $~lib/memory/__stack_pointer
   i32.const 84
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $23
   return
  else
   local.get $method
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=8
   local.get $23
   i32.const 912
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0
   local.get $23
   call $~lib/string/String.__eq
   if
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=8
    local.get $23
    local.get $argPtr
    call $assembly/lib/entry/Entry#loadInputString
    local.tee $arg|7
    i32.store $0 offset=28
    local.get $this
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=8
    local.get $23
    call $assembly/lib/entry/Entry#get:transactionAspect
    i32.const 0
    i32.ne
    if
     local.get $this
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0 offset=24
     local.get $23
     call $assembly/lib/entry/Entry#get:transactionAspect
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0 offset=8
     local.get $23
     i32.const 0
     call $assembly/lib/context/StateCtx#constructor
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0
     local.get $23
     local.get $arg|7
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0 offset=20
     local.get $23
     call $assembly/lib/interfaces/IAspectTransaction#isOwner@override
     local.set $out|8
     local.get $this
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0 offset=8
     local.get $23
     local.get $out|8
     call $assembly/lib/entry/Entry#storeOutputBool
     local.set $23
     global.get $~lib/memory/__stack_pointer
     i32.const 84
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $23
     return
    end
    local.get $this
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=24
    local.get $23
    call $assembly/lib/entry/Entry#get:blockAspect
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=8
    local.get $23
    i32.const 0
    call $assembly/lib/context/StateCtx#constructor
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0
    local.get $23
    local.get $arg|7
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=20
    local.get $23
    call $assembly/lib/interfaces/IAspectBlock#isOwner@override
    local.set $out|9
    local.get $this
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=8
    local.get $23
    local.get $out|9
    call $assembly/lib/entry/Entry#storeOutputBool
    local.set $23
    global.get $~lib/memory/__stack_pointer
    i32.const 84
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $23
    return
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0 offset=8
  local.get $23
  local.get $argPtr
  call $assembly/lib/entry/Entry#loadAspectInput
  local.tee $arg|10
  i32.store $0 offset=32
  local.get $method
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0 offset=8
  local.get $23
  i32.const 1168
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0
  local.get $23
  call $~lib/string/String.__eq
  if (result i32)
   local.get $this
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=8
   local.get $23
   call $assembly/lib/entry/Entry#get:transactionAspect
   i32.const 0
   i32.ne
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $arg|10
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0
   local.get $23
   call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
   local.get $arg|10
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0
   local.get $23
   call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=20
   local.get $23
   call $assembly/lib/context/OnTxReceiveCtx#constructor
   local.tee $ctx
   i32.store $0 offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=20
   local.get $23
   call $assembly/lib/entry/Entry#get:transactionAspect
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=8
   local.get $23
   local.get $ctx
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0
   local.get $23
   call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
   local.tee $out|11
   i32.store $0 offset=40
  else
   local.get $method
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0 offset=8
   local.get $23
   i32.const 1216
   local.set $23
   global.get $~lib/memory/__stack_pointer
   local.get $23
   i32.store $0
   local.get $23
   call $~lib/string/String.__eq
   if (result i32)
    local.get $this
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=8
    local.get $23
    call $assembly/lib/entry/Entry#get:blockAspect
    i32.const 0
    i32.ne
   else
    i32.const 0
   end
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    local.get $arg|10
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0
    local.get $23
    call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
    local.get $arg|10
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0
    local.get $23
    call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=20
    local.get $23
    call $assembly/lib/context/OnBlockInitializeCtx#constructor
    local.tee $ctx|13
    i32.store $0 offset=44
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=20
    local.get $23
    call $assembly/lib/entry/Entry#get:blockAspect
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=8
    local.get $23
    local.get $ctx|13
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0
    local.get $23
    call $assembly/lib/interfaces/IAspectBlock#onBlockInitialize@override
    local.tee $out|11
    i32.store $0 offset=40
   else
    local.get $method
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0 offset=8
    local.get $23
    i32.const 1280
    local.set $23
    global.get $~lib/memory/__stack_pointer
    local.get $23
    i32.store $0
    local.get $23
    call $~lib/string/String.__eq
    if (result i32)
     local.get $this
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0 offset=8
     local.get $23
     call $assembly/lib/entry/Entry#get:transactionAspect
     i32.const 0
     i32.ne
    else
     i32.const 0
    end
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     local.get $arg|10
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0
     local.get $23
     call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
     local.get $arg|10
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0
     local.get $23
     call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0 offset=20
     local.get $23
     call $assembly/lib/context/OnTxVerifyCtx#constructor
     local.tee $ctx|14
     i32.store $0 offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $this
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0 offset=20
     local.get $23
     call $assembly/lib/entry/Entry#get:transactionAspect
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0 offset=8
     local.get $23
     local.get $ctx|14
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0
     local.get $23
     call $assembly/lib/interfaces/IAspectTransaction#onTxVerify@override
     local.tee $out|11
     i32.store $0 offset=40
    else
     local.get $method
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0 offset=8
     local.get $23
     i32.const 1328
     local.set $23
     global.get $~lib/memory/__stack_pointer
     local.get $23
     i32.store $0
     local.get $23
     call $~lib/string/String.__eq
     if (result i32)
      local.get $this
      local.set $23
      global.get $~lib/memory/__stack_pointer
      local.get $23
      i32.store $0 offset=8
      local.get $23
      call $assembly/lib/entry/Entry#get:transactionAspect
      i32.const 0
      i32.ne
     else
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      local.get $arg|10
      local.set $23
      global.get $~lib/memory/__stack_pointer
      local.get $23
      i32.store $0
      local.get $23
      call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
      local.get $arg|10
      local.set $23
      global.get $~lib/memory/__stack_pointer
      local.get $23
      i32.store $0
      local.get $23
      call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
      local.set $23
      global.get $~lib/memory/__stack_pointer
      local.get $23
      i32.store $0 offset=20
      local.get $23
      call $assembly/lib/context/OnAccountVerifyCtx#constructor
      local.tee $ctx|15
      i32.store $0 offset=52
      global.get $~lib/memory/__stack_pointer
      local.get $this
      local.set $23
      global.get $~lib/memory/__stack_pointer
      local.get $23
      i32.store $0 offset=20
      local.get $23
      call $assembly/lib/entry/Entry#get:transactionAspect
      local.set $23
      global.get $~lib/memory/__stack_pointer
      local.get $23
      i32.store $0 offset=8
      local.get $23
      local.get $ctx|15
      local.set $23
      global.get $~lib/memory/__stack_pointer
      local.get $23
      i32.store $0
      local.get $23
      call $assembly/lib/interfaces/IAspectTransaction#onAccountVerify@override
      local.tee $out|11
      i32.store $0 offset=40
     else
      local.get $method
      local.set $23
      global.get $~lib/memory/__stack_pointer
      local.get $23
      i32.store $0 offset=8
      local.get $23
      i32.const 1392
      local.set $23
      global.get $~lib/memory/__stack_pointer
      local.get $23
      i32.store $0
      local.get $23
      call $~lib/string/String.__eq
      if (result i32)
       local.get $this
       local.set $23
       global.get $~lib/memory/__stack_pointer
       local.get $23
       i32.store $0 offset=8
       local.get $23
       call $assembly/lib/entry/Entry#get:transactionAspect
       i32.const 0
       i32.ne
      else
       i32.const 0
      end
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       local.get $arg|10
       local.set $23
       global.get $~lib/memory/__stack_pointer
       local.get $23
       i32.store $0
       local.get $23
       call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
       local.get $arg|10
       local.set $23
       global.get $~lib/memory/__stack_pointer
       local.get $23
       i32.store $0
       local.get $23
       call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
       local.set $23
       global.get $~lib/memory/__stack_pointer
       local.get $23
       i32.store $0 offset=20
       local.get $23
       call $assembly/lib/context/OnGasPaymentCtx#constructor
       local.tee $ctx|16
       i32.store $0 offset=56
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.set $23
       global.get $~lib/memory/__stack_pointer
       local.get $23
       i32.store $0 offset=20
       local.get $23
       call $assembly/lib/entry/Entry#get:transactionAspect
       local.set $23
       global.get $~lib/memory/__stack_pointer
       local.get $23
       i32.store $0 offset=8
       local.get $23
       local.get $ctx|16
       local.set $23
       global.get $~lib/memory/__stack_pointer
       local.get $23
       i32.store $0
       local.get $23
       call $assembly/lib/interfaces/IAspectTransaction#onGasPayment@override
       local.tee $out|11
       i32.store $0 offset=40
      else
       local.get $method
       local.set $23
       global.get $~lib/memory/__stack_pointer
       local.get $23
       i32.store $0 offset=8
       local.get $23
       i32.const 1440
       local.set $23
       global.get $~lib/memory/__stack_pointer
       local.get $23
       i32.store $0
       local.get $23
       call $~lib/string/String.__eq
       if (result i32)
        local.get $this
        local.set $23
        global.get $~lib/memory/__stack_pointer
        local.get $23
        i32.store $0 offset=8
        local.get $23
        call $assembly/lib/entry/Entry#get:transactionAspect
        i32.const 0
        i32.ne
       else
        i32.const 0
       end
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        local.get $arg|10
        local.set $23
        global.get $~lib/memory/__stack_pointer
        local.get $23
        i32.store $0
        local.get $23
        call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
        local.get $arg|10
        local.set $23
        global.get $~lib/memory/__stack_pointer
        local.get $23
        i32.store $0
        local.get $23
        call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
        local.set $23
        global.get $~lib/memory/__stack_pointer
        local.get $23
        i32.store $0 offset=20
        local.get $23
        call $assembly/lib/context/PreTxExecuteCtx#constructor
        local.tee $ctx|17
        i32.store $0 offset=60
        global.get $~lib/memory/__stack_pointer
        local.get $this
        local.set $23
        global.get $~lib/memory/__stack_pointer
        local.get $23
        i32.store $0 offset=20
        local.get $23
        call $assembly/lib/entry/Entry#get:transactionAspect
        local.set $23
        global.get $~lib/memory/__stack_pointer
        local.get $23
        i32.store $0 offset=8
        local.get $23
        local.get $ctx|17
        local.set $23
        global.get $~lib/memory/__stack_pointer
        local.get $23
        i32.store $0
        local.get $23
        call $assembly/lib/interfaces/IAspectTransaction#preTxExecute@override
        local.tee $out|11
        i32.store $0 offset=40
       else
        local.get $method
        local.set $23
        global.get $~lib/memory/__stack_pointer
        local.get $23
        i32.store $0 offset=8
        local.get $23
        i32.const 1488
        local.set $23
        global.get $~lib/memory/__stack_pointer
        local.get $23
        i32.store $0
        local.get $23
        call $~lib/string/String.__eq
        if (result i32)
         local.get $this
         local.set $23
         global.get $~lib/memory/__stack_pointer
         local.get $23
         i32.store $0 offset=8
         local.get $23
         call $assembly/lib/entry/Entry#get:transactionAspect
         i32.const 0
         i32.ne
        else
         i32.const 0
        end
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         local.get $arg|10
         local.set $23
         global.get $~lib/memory/__stack_pointer
         local.get $23
         i32.store $0
         local.get $23
         call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
         local.get $arg|10
         local.set $23
         global.get $~lib/memory/__stack_pointer
         local.get $23
         i32.store $0
         local.get $23
         call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
         local.set $23
         global.get $~lib/memory/__stack_pointer
         local.get $23
         i32.store $0 offset=20
         local.get $23
         call $assembly/lib/context/PreContractCallCtx#constructor
         local.tee $ctx|18
         i32.store $0 offset=64
         global.get $~lib/memory/__stack_pointer
         local.get $this
         local.set $23
         global.get $~lib/memory/__stack_pointer
         local.get $23
         i32.store $0 offset=20
         local.get $23
         call $assembly/lib/entry/Entry#get:transactionAspect
         local.set $23
         global.get $~lib/memory/__stack_pointer
         local.get $23
         i32.store $0 offset=8
         local.get $23
         local.get $ctx|18
         local.set $23
         global.get $~lib/memory/__stack_pointer
         local.get $23
         i32.store $0
         local.get $23
         call $assembly/lib/interfaces/IAspectTransaction#preContractCall@override
         local.tee $out|11
         i32.store $0 offset=40
        else
         local.get $method
         local.set $23
         global.get $~lib/memory/__stack_pointer
         local.get $23
         i32.store $0 offset=8
         local.get $23
         i32.const 1552
         local.set $23
         global.get $~lib/memory/__stack_pointer
         local.get $23
         i32.store $0
         local.get $23
         call $~lib/string/String.__eq
         if (result i32)
          local.get $this
          local.set $23
          global.get $~lib/memory/__stack_pointer
          local.get $23
          i32.store $0 offset=8
          local.get $23
          call $assembly/lib/entry/Entry#get:transactionAspect
          i32.const 0
          i32.ne
         else
          i32.const 0
         end
         if
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          local.get $arg|10
          local.set $23
          global.get $~lib/memory/__stack_pointer
          local.get $23
          i32.store $0
          local.get $23
          call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
          local.get $arg|10
          local.set $23
          global.get $~lib/memory/__stack_pointer
          local.get $23
          i32.store $0
          local.get $23
          call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
          local.set $23
          global.get $~lib/memory/__stack_pointer
          local.get $23
          i32.store $0 offset=20
          local.get $23
          call $assembly/lib/context/PostContractCallCtx#constructor
          local.tee $ctx|19
          i32.store $0 offset=68
          global.get $~lib/memory/__stack_pointer
          local.get $this
          local.set $23
          global.get $~lib/memory/__stack_pointer
          local.get $23
          i32.store $0 offset=20
          local.get $23
          call $assembly/lib/entry/Entry#get:transactionAspect
          local.set $23
          global.get $~lib/memory/__stack_pointer
          local.get $23
          i32.store $0 offset=8
          local.get $23
          local.get $ctx|19
          local.set $23
          global.get $~lib/memory/__stack_pointer
          local.get $23
          i32.store $0
          local.get $23
          call $assembly/lib/interfaces/IAspectTransaction#postContractCall@override
          local.tee $out|11
          i32.store $0 offset=40
         else
          local.get $method
          local.set $23
          global.get $~lib/memory/__stack_pointer
          local.get $23
          i32.store $0 offset=8
          local.get $23
          i32.const 1616
          local.set $23
          global.get $~lib/memory/__stack_pointer
          local.get $23
          i32.store $0
          local.get $23
          call $~lib/string/String.__eq
          if (result i32)
           local.get $this
           local.set $23
           global.get $~lib/memory/__stack_pointer
           local.get $23
           i32.store $0 offset=8
           local.get $23
           call $assembly/lib/entry/Entry#get:transactionAspect
           i32.const 0
           i32.ne
          else
           i32.const 0
          end
          if
           global.get $~lib/memory/__stack_pointer
           i32.const 0
           local.get $arg|10
           local.set $23
           global.get $~lib/memory/__stack_pointer
           local.get $23
           i32.store $0
           local.get $23
           call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
           local.get $arg|10
           local.set $23
           global.get $~lib/memory/__stack_pointer
           local.get $23
           i32.store $0
           local.get $23
           call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
           local.set $23
           global.get $~lib/memory/__stack_pointer
           local.get $23
           i32.store $0 offset=20
           local.get $23
           call $assembly/lib/context/PostTxExecuteCtx#constructor
           local.tee $ctx|20
           i32.store $0 offset=72
           global.get $~lib/memory/__stack_pointer
           local.get $this
           local.set $23
           global.get $~lib/memory/__stack_pointer
           local.get $23
           i32.store $0 offset=20
           local.get $23
           call $assembly/lib/entry/Entry#get:transactionAspect
           local.set $23
           global.get $~lib/memory/__stack_pointer
           local.get $23
           i32.store $0 offset=8
           local.get $23
           local.get $ctx|20
           local.set $23
           global.get $~lib/memory/__stack_pointer
           local.get $23
           i32.store $0
           local.get $23
           call $assembly/lib/interfaces/IAspectTransaction#postTxExecute@override
           local.tee $out|11
           i32.store $0 offset=40
          else
           local.get $method
           local.set $23
           global.get $~lib/memory/__stack_pointer
           local.get $23
           i32.store $0 offset=8
           local.get $23
           i32.const 1664
           local.set $23
           global.get $~lib/memory/__stack_pointer
           local.get $23
           i32.store $0
           local.get $23
           call $~lib/string/String.__eq
           if (result i32)
            local.get $this
            local.set $23
            global.get $~lib/memory/__stack_pointer
            local.get $23
            i32.store $0 offset=8
            local.get $23
            call $assembly/lib/entry/Entry#get:transactionAspect
            i32.const 0
            i32.ne
           else
            i32.const 0
           end
           if
            global.get $~lib/memory/__stack_pointer
            i32.const 0
            local.get $arg|10
            local.set $23
            global.get $~lib/memory/__stack_pointer
            local.get $23
            i32.store $0
            local.get $23
            call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
            local.get $arg|10
            local.set $23
            global.get $~lib/memory/__stack_pointer
            local.get $23
            i32.store $0
            local.get $23
            call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
            local.set $23
            global.get $~lib/memory/__stack_pointer
            local.get $23
            i32.store $0 offset=20
            local.get $23
            call $assembly/lib/context/OnTxCommitCtx#constructor
            local.tee $ctx|21
            i32.store $0 offset=76
            global.get $~lib/memory/__stack_pointer
            local.get $this
            local.set $23
            global.get $~lib/memory/__stack_pointer
            local.get $23
            i32.store $0 offset=20
            local.get $23
            call $assembly/lib/entry/Entry#get:transactionAspect
            local.set $23
            global.get $~lib/memory/__stack_pointer
            local.get $23
            i32.store $0 offset=8
            local.get $23
            local.get $ctx|21
            local.set $23
            global.get $~lib/memory/__stack_pointer
            local.get $23
            i32.store $0
            local.get $23
            call $assembly/lib/interfaces/IAspectTransaction#onTxCommit@override
            local.tee $out|11
            i32.store $0 offset=40
           else
            local.get $method
            local.set $23
            global.get $~lib/memory/__stack_pointer
            local.get $23
            i32.store $0 offset=8
            local.get $23
            i32.const 1712
            local.set $23
            global.get $~lib/memory/__stack_pointer
            local.get $23
            i32.store $0
            local.get $23
            call $~lib/string/String.__eq
            if (result i32)
             local.get $this
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0 offset=8
             local.get $23
             call $assembly/lib/entry/Entry#get:blockAspect
             i32.const 0
             i32.ne
            else
             i32.const 0
            end
            if
             global.get $~lib/memory/__stack_pointer
             i32.const 0
             local.get $arg|10
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0
             local.get $23
             call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:blockHeight
             local.get $arg|10
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0
             local.get $23
             call $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput#get:tx
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0 offset=20
             local.get $23
             call $assembly/lib/context/OnBlockFinalizeCtx#constructor
             local.tee $ctx|22
             i32.store $0 offset=80
             global.get $~lib/memory/__stack_pointer
             local.get $this
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0 offset=20
             local.get $23
             call $assembly/lib/entry/Entry#get:blockAspect
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0 offset=8
             local.get $23
             local.get $ctx|22
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0
             local.get $23
             call $assembly/lib/interfaces/IAspectBlock#onBlockFinalize@override
             local.tee $out|11
             i32.store $0 offset=40
            else
             i32.const 1776
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0 offset=20
             local.get $23
             local.get $method
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0 offset=24
             local.get $23
             call $~lib/string/String.__concat
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0 offset=8
             local.get $23
             i32.const 1824
             local.set $23
             global.get $~lib/memory/__stack_pointer
             local.get $23
             i32.store $0
             local.get $23
             call $~lib/string/String.__concat
             i32.const 784
             i32.const 133
             i32.const 13
             call $~lib/builtins/abort
             unreachable
            end
           end
          end
         end
        end
       end
      end
     end
    end
   end
  end
  local.get $this
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0 offset=8
  local.get $23
  local.get $out|11
  local.set $23
  global.get $~lib/memory/__stack_pointer
  local.get $23
  i32.store $0
  local.get $23
  call $assembly/lib/entry/Entry#storeAspectOutput
  local.set $23
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $23
  return
 )
 (func $assembly/index/execute (param $methodPtr i32) (param $argPtr i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $assembly/index/entry
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $methodPtr
  local.get $argPtr
  call $assembly/lib/entry/Entry#execute
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/entry/Entry#isBlockLevel (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $assembly/lib/entry/Entry#get:blockAspect
  i32.const 0
  i32.ne
  call $assembly/lib/entry/Entry#storeOutputBool
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/isBlockLevel (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $assembly/index/entry
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $assembly/lib/entry/Entry#isBlockLevel
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/lib/entry/Entry#isTransactionLevel (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $assembly/lib/entry/Entry#get:transactionAspect
  i32.const 0
  i32.ne
  call $assembly/lib/entry/Entry#storeOutputBool
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/isTransactionLevel (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  global.get $assembly/index/entry
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $assembly/lib/entry/Entry#isTransactionLevel
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
  return
 )
 (func $assembly/lib/types/basic_types/AString#set (param $this i32) (param $s i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $s
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/basic_types/AString#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/basic_types/AString#get:head
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $s
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/string/String#get:length
  call $assembly/lib/types/basic_types/header#set:dataLen
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/AString#store (param $this i32) (result i32)
  (local $ptr i32)
  (local $bodyPtr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#get:dataLen
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#len
  i32.add
  call $assembly/lib/utils/utils.alloc
  local.set $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $ptr
  call $assembly/lib/types/basic_types/header#store
  local.get $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#len
  i32.add
  local.set $bodyPtr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/AString#get:body
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AString#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#get:dataLen
  local.get $bodyPtr
  i32.const 0
  i32.const 3
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String.UTF8.encodeUnsafe@varargs
  drop
  local.get $ptr
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/host/hostapi/Context.getProperty (param $key i32) (result i32)
  (local $input i32)
  (local $inPtr i32)
  (local $outPtr i32)
  (local $output i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $input
  i32.store $0 offset=4
  local.get $input
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  local.get $key
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AString#set
  local.get $input
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $assembly/lib/types/basic_types/AString#store
  local.set $inPtr
  local.get $inPtr
  call $assembly/lib/host/hostapi/__HostApi__.getProperty
  local.set $outPtr
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $output
  i32.store $0 offset=12
  local.get $output
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  local.get $outPtr
  call $assembly/lib/types/basic_types/AString#load
  local.get $output
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $assembly/lib/types/basic_types/AString#get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $assembly/lib/context/StateCtx#getProperty (param $this i32) (param $key i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/host/hostapi/Context.getProperty
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/string/String#indexOf (param $this i32) (param $search i32) (param $start i32) (result i32)
  (local $searchLen i32)
  (local $len i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $searchStart i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $search
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $~lib/string/String#get:length
  local.set $searchLen
  local.get $searchLen
  i32.eqz
  if
   i32.const 0
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $~lib/string/String#get:length
  local.set $len
  local.get $len
  i32.eqz
  if
   i32.const -1
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $start
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $7
  local.get $len
  local.tee $8
  local.get $7
  local.get $8
  i32.lt_s
  select
  local.set $searchStart
  local.get $len
  local.get $searchLen
  i32.sub
  local.set $len
  loop $for-loop|0
   local.get $searchStart
   local.get $len
   i32.le_s
   if
    local.get $this
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0
    local.get $10
    local.get $searchStart
    local.get $search
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0 offset=4
    local.get $10
    i32.const 0
    local.get $searchLen
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $searchStart
     local.set $10
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $10
     return
    end
    local.get $searchStart
    i32.const 1
    i32.add
    local.set $searchStart
    br $for-loop|0
   end
  end
  i32.const -1
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/string/String#includes (param $this i32) (param $search i32) (param $start i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $search
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $start
  call $~lib/string/String#indexOf
  i32.const -1
  i32.ne
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onContractBinding (param $this i32) (param $ctx i32) (param $contractAddr i32) (result i32)
  (local $value i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $ctx
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  i32.const 1936
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/context/StateCtx#getProperty
  local.tee $value
  i32.store $0 offset=8
  local.get $value
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $contractAddr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $~lib/string/String#includes
  if
   i32.const 1
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#isOwner (param $this i32) (param $ctx i32) (param $sender i32) (result i32)
  (local $value i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $ctx
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  i32.const 2048
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/context/StateCtx#getProperty
  local.tee $value
  i32.store $0 offset=8
  local.get $value
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $sender
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $~lib/string/String#includes
  if
   i32.const 1
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32 (param $this i32) (result i32)
  (local $loaded i32)
  (local $value i32)
  (local $this|3 i32)
  (local $step i32)
  (local $ptr i32)
  (local $this|6 i32)
  (local $step|7 i32)
  (local $ptr|8 i32)
  (local $this|9 i32)
  (local $step|10 i32)
  (local $ptr|11 i32)
  (local $this|12 i32)
  (local $step|13 i32)
  (local $ptr|14 i32)
  (local $this|15 i32)
  (local $step|16 i32)
  (local $ptr|17 i32)
  (local $this|18 i32)
  (local $step|19 i32)
  (local $ptr|20 i32)
  (local $this|21 i32)
  (local $step|22 i32)
  (local $ptr|23 i32)
  (local $this|24 i32)
  (local $step|25 i32)
  (local $ptr|26 i32)
  (local $this|27 i32)
  (local $step|28 i32)
  (local $ptr|29 i32)
  (local $this|30 i32)
  (local $step|31 i32)
  (local $ptr|32 i32)
  (local $33 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill $0
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|3
   i32.store $0
   i32.const 1
   local.set $step
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.0
  end
  i32.load8_u $0
  local.tee $loaded
  i32.const 127
  i32.and
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|6
   i32.store $0 offset=12
   i32.const 1
   local.set $step|7
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|8
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|7
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|8
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.1
  end
  i32.load8_u $0
  local.tee $loaded
  i32.const 127
  i32.and
  i32.const 7
  i32.shl
  i32.or
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.2 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|9
   i32.store $0 offset=16
   i32.const 1
   local.set $step|10
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|11
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|10
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|11
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.2
  end
  i32.load8_u $0
  local.tee $loaded
  i32.const 127
  i32.and
  i32.const 14
  i32.shl
  i32.or
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.3 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|12
   i32.store $0 offset=20
   i32.const 1
   local.set $step|13
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|14
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|13
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|14
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.3
  end
  i32.load8_u $0
  local.tee $loaded
  i32.const 127
  i32.and
  i32.const 21
  i32.shl
  i32.or
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.4 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|15
   i32.store $0 offset=24
   i32.const 1
   local.set $step|16
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|17
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|16
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|17
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.4
  end
  i32.load8_u $0
  local.tee $loaded
  i32.const 15
  i32.and
  i32.const 28
  i32.shl
  i32.or
  local.set $value
  local.get $loaded
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.5 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|18
   i32.store $0 offset=28
   i32.const 1
   local.set $step|19
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|20
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|19
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|20
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.5
  end
  i32.load8_u $0
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.6 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|21
   i32.store $0 offset=32
   i32.const 1
   local.set $step|22
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|23
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|22
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|23
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.6
  end
  i32.load8_u $0
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.7 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|24
   i32.store $0 offset=36
   i32.const 1
   local.set $step|25
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|26
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|25
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|26
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.7
  end
  i32.load8_u $0
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.8 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|27
   i32.store $0 offset=40
   i32.const 1
   local.set $step|28
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|29
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|28
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|29
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.8
  end
  i32.load8_u $0
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.9 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|30
   i32.store $0 offset=44
   i32.const 1
   local.set $step|31
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|32
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|31
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|32
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.9
  end
  i32.load8_u $0
  i32.const 128
  i32.lt_u
  if
   local.get $value
   local.set $33
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $33
   return
  end
  local.get $value
  local.set $33
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $33
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32 (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64 (param $this i32) (result i64)
  (local $loaded i64)
  (local $value i64)
  (local $this|3 i32)
  (local $step i32)
  (local $ptr i32)
  (local $this|6 i32)
  (local $step|7 i32)
  (local $ptr|8 i32)
  (local $this|9 i32)
  (local $step|10 i32)
  (local $ptr|11 i32)
  (local $this|12 i32)
  (local $step|13 i32)
  (local $ptr|14 i32)
  (local $this|15 i32)
  (local $step|16 i32)
  (local $ptr|17 i32)
  (local $this|18 i32)
  (local $step|19 i32)
  (local $ptr|20 i32)
  (local $this|21 i32)
  (local $step|22 i32)
  (local $ptr|23 i32)
  (local $this|24 i32)
  (local $step|25 i32)
  (local $ptr|26 i32)
  (local $this|27 i32)
  (local $step|28 i32)
  (local $ptr|29 i32)
  (local $this|30 i32)
  (local $step|31 i32)
  (local $ptr|32 i32)
  (local $33 i32)
  (local $34 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill $0
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.10 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|3
   i32.store $0
   i32.const 1
   local.set $step
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|3
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.10
  end
  i64.load8_u $0
  local.tee $loaded
  i64.const 127
  i64.and
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.11 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|6
   i32.store $0 offset=12
   i32.const 1
   local.set $step|7
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|8
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|7
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|6
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|8
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.11
  end
  i64.load8_u $0
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 7
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.12 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|9
   i32.store $0 offset=16
   i32.const 1
   local.set $step|10
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|11
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|10
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|9
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|11
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.12
  end
  i64.load8_u $0
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 14
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.13 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|12
   i32.store $0 offset=20
   i32.const 1
   local.set $step|13
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|14
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|13
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|12
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|14
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.13
  end
  i64.load8_u $0
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 21
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.14 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|15
   i32.store $0 offset=24
   i32.const 1
   local.set $step|16
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|17
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|16
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|15
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|17
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.14
  end
  i64.load8_u $0
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 28
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.15 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|18
   i32.store $0 offset=28
   i32.const 1
   local.set $step|19
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|20
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|19
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|18
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|20
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.15
  end
  i64.load8_u $0
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 35
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.16 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|21
   i32.store $0 offset=32
   i32.const 1
   local.set $step|22
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|23
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|22
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|21
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|23
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.16
  end
  i64.load8_u $0
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 42
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.17 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|24
   i32.store $0 offset=36
   i32.const 1
   local.set $step|25
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|26
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|25
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|24
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|26
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.17
  end
  i64.load8_u $0
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 49
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.18 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|27
   i32.store $0 offset=40
   i32.const 1
   local.set $step|28
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|29
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|28
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|27
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|29
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.18
  end
  i64.load8_u $0
  local.tee $loaded
  i64.const 127
  i64.and
  i64.const 56
  i64.shl
  i64.or
  local.set $value
  local.get $loaded
  i64.const 128
  i64.lt_u
  if
   local.get $value
   local.set $34
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $34
   return
  end
  local.get $value
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.19 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|30
   i32.store $0 offset=44
   i32.const 1
   local.set $step|31
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr|32
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=8
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step|31
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|30
   local.set $33
   global.get $~lib/memory/__stack_pointer
   local.get $33
   i32.store $0 offset=4
   local.get $33
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr|32
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.19
  end
  i64.load8_u $0
  i64.const 1
  i64.and
  i64.const 63
  i64.shl
  i64.or
  local.set $value
  local.get $value
  local.set $34
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $34
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#int64 (param $this i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#string (param $this i32) (result i32)
  (local $this|1 i32)
  (local $length i32)
  (local $this|3 i32)
  (local $step i32)
  (local $ptr i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|1
   i32.store $0
   local.get $this|1
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.0
  end
  local.set $length
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.20 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|3
   i32.store $0 offset=8
   local.get $length
   local.set $step
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=12
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|3
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.20
  end
  local.get $length
  i32.const 0
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint64 (param $this i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#bytes (param $this i32) (result i32)
  (local $this|1 i32)
  (local $length i32)
  (local $buffer i32)
  (local $this|4 i32)
  (local $step i32)
  (local $ptr i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.1 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|1
   i32.store $0
   local.get $this|1
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   local.get $7
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.1
  end
  local.set $length
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $length
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $buffer
  i32.store $0 offset=8
  local.get $buffer
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.21 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|4
   i32.store $0 offset=12
   local.get $length
   local.set $step
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   local.get $7
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.set $ptr
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   local.get $7
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=16
   local.get $7
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $step
   i32.add
   call $~lib/as-proto/assembly/Reader/Reader#set:ptr
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   local.get $7
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $this|4
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store $0 offset=4
   local.get $7
   call $~lib/as-proto/assembly/Reader/Reader#get:end
   i32.le_u
   i32.eqz
   if
    i32.const 224
    i32.const 2080
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $ptr
   br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.21
  end
  local.get $length
  memory.copy $0 $0
  local.get $buffer
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip (param $this i32) (param $length i32)
  (local $this|2 i32)
  (local $step i32)
  (local $ptr i32)
  (local $this|5 i32)
  (local $step|6 i32)
  (local $ptr|7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $length
  i32.const 0
  i32.eq
  if
   loop $while-continue|0
    block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.22 (result i32)
     global.get $~lib/memory/__stack_pointer
     local.get $this
     local.tee $this|2
     i32.store $0
     i32.const 1
     local.set $step
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=4
     local.get $8
     call $~lib/as-proto/assembly/Reader/Reader#get:ptr
     local.set $ptr
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=4
     local.get $8
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=8
     local.get $8
     call $~lib/as-proto/assembly/Reader/Reader#get:ptr
     local.get $step
     i32.add
     call $~lib/as-proto/assembly/Reader/Reader#set:ptr
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=4
     local.get $8
     call $~lib/as-proto/assembly/Reader/Reader#get:ptr
     local.get $this|2
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=4
     local.get $8
     call $~lib/as-proto/assembly/Reader/Reader#get:end
     i32.le_u
     i32.eqz
     if
      i32.const 224
      i32.const 2080
      i32.const 210
      i32.const 5
      call $~lib/builtins/abort
      unreachable
     end
     local.get $ptr
     br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.22
    end
    i32.load8_u $0
    i32.const 128
    i32.and
    if
     nop
     br $while-continue|0
    end
   end
  else
   block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.23 (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.tee $this|5
    i32.store $0 offset=12
    local.get $length
    local.set $step|6
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=4
    local.get $8
    call $~lib/as-proto/assembly/Reader/Reader#get:ptr
    local.set $ptr|7
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=4
    local.get $8
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    call $~lib/as-proto/assembly/Reader/Reader#get:ptr
    local.get $step|6
    i32.add
    call $~lib/as-proto/assembly/Reader/Reader#set:ptr
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=4
    local.get $8
    call $~lib/as-proto/assembly/Reader/Reader#get:ptr
    local.get $this|5
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=4
    local.get $8
    call $~lib/as-proto/assembly/Reader/Reader#get:end
    i32.le_u
    i32.eqz
    if
     i32.const 224
     i32.const 2080
     i32.const 210
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $ptr|7
    br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#inc|inlined.23
   end
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType (param $this i32) (param $wireType i32)
  (local $2 i32)
  (local $this|3 i32)
  (local $this|4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $wireType
         local.set $2
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.VARINT
         i32.eq
         br_if $case0|0
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.FIXED_64
         i32.eq
         br_if $case1|0
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.LENGTH_DELIMITED
         i32.eq
         br_if $case2|0
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.START_GROUP
         i32.eq
         br_if $case3|0
         local.get $2
         global.get $~lib/as-proto/assembly/WireType/WireType.FIXED_32
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $this
        local.set $5
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store $0
        local.get $5
        i32.const 0
        call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
        br $break|0
       end
       local.get $this
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0
       local.get $5
       i32.const 8
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
       br $break|0
      end
      local.get $this
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store $0
      local.get $5
      block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.2 (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.tee $this|3
       i32.store $0 offset=4
       local.get $this|3
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0 offset=8
       local.get $5
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
       br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.2
      end
      call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
      br $break|0
     end
     loop $while-continue|1
      block $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.3 (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $this
       local.tee $this|4
       i32.store $0 offset=12
       local.get $this|4
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0
       local.get $5
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
       br $~lib/as-proto/assembly/internal/FixedReader/FixedReader#uint32|inlined.3
      end
      i32.const 7
      i32.and
      local.tee $wireType
      global.get $~lib/as-proto/assembly/WireType/WireType.END_GROUP
      i32.ne
      if
       local.get $this
       local.set $5
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0
       local.get $5
       local.get $wireType
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType
       br $while-continue|1
      end
     end
     br $break|0
    end
    local.get $this
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0
    local.get $5
    i32.const 4
    call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
    br $break|0
   end
   i32.const 2192
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0
   local.get $5
   local.get $wireType
   i32.const 10
   call $~lib/number/I32#toString
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0 offset=8
   local.get $5
   call $~lib/string/String.__concat
   i32.const 2080
   i32.const 131
   i32.const 9
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor (param $this i32) (param $success i32) (param $message i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 28
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#set:success
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#set:message
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $success
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#set:success
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $message
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#set:message
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onTxReceive (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onBlockInitialize (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onTxVerify (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onAccountVerify (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onGasPayment (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#preTxExecute (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#preContractCall (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#constructor (param $this i32) (param $ctx i32) (param $addr i32) (param $prefix i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 43
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $assembly/aspect/honeypot/HoneyPot.balances#set:ctx
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $assembly/aspect/honeypot/HoneyPot.balances#set:addr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 0
  call $assembly/aspect/honeypot/HoneyPot.balances#set:prefix
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $ctx
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/aspect/honeypot/HoneyPot.balances#set:ctx
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $addr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/aspect/honeypot/HoneyPot.balances#set:addr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $prefix
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/aspect/honeypot/HoneyPot.balances#set:prefix
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#constructor@varargs (param $this i32) (param $ctx i32) (param $addr i32) (param $prefix i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $prefix
   i32.store $0
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $ctx
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  local.get $addr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=12
  local.get $4
  local.get $prefix
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=16
  local.get $4
  call $assembly/aspect/honeypot/HoneyPot.balances#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/lib/host/hostapi/Context.getContext (param $key i32) (result i32)
  (local $input i32)
  (local $inPtr i32)
  (local $outPtr i32)
  (local $output i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $input
  i32.store $0 offset=4
  local.get $input
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  local.get $key
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AString#set
  local.get $input
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $assembly/lib/types/basic_types/AString#store
  local.set $inPtr
  local.get $inPtr
  call $assembly/lib/host/hostapi/__HostApi__.getContext
  local.set $outPtr
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $output
  i32.store $0 offset=12
  local.get $output
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  local.get $outPtr
  call $assembly/lib/types/basic_types/AString#load
  local.get $output
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $assembly/lib/types/basic_types/AString#get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $assembly/lib/context/PostContractCallCtx#getContext (param $this i32) (param $key i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/host/hostapi/Context.getContext
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/string/String#startsWith (param $this i32) (param $search i32) (param $start i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $searchStart i32)
  (local $searchLength i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $6
  local.get $len
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $searchStart
  local.get $search
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $~lib/string/String#get:length
  local.set $searchLength
  local.get $searchLength
  local.get $searchStart
  i32.add
  local.get $len
  i32.gt_s
  if
   i32.const 0
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  local.get $searchStart
  local.get $search
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0 offset=4
  local.get $10
  i32.const 0
  local.get $searchLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 46
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $length
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Number#constructor (param $this i32) (param $signed i32) (param $bitSize i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 14
   i32.const 45
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 32
  call $assembly/lib/abi/ethereum/coders/ethereum.Number#set:_byteSize
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/abi/ethereum/coders/ethereum.Number#set:_signed
  local.get $bitSize
  i32.const 65535
  i32.and
  i32.const 8
  i32.ge_u
  if (result i32)
   local.get $bitSize
   i32.const 65535
   i32.and
   i32.const 256
   i32.le_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4528
   i32.const 4432
   i32.const 245
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $bitSize
  i32.const 65535
  i32.and
  i32.const 8
  i32.rem_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 4624
   i32.const 4432
   i32.const 246
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 32
  call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $signed
  call $assembly/lib/abi/ethereum/coders/ethereum.Number#set:_signed
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $bitSize
  i32.const 65535
  i32.and
  i32.const 3
  i32.const 15
  i32.and
  i32.shr_u
  call $assembly/lib/abi/ethereum/coders/ethereum.Number#set:_byteSize
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Address#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 14
   i32.const 44
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.const 160
  call $assembly/lib/abi/ethereum/coders/ethereum.Number#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String#charAt (param $this i32) (param $pos i32) (result i32)
  (local $out i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $pos
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const 640
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.get $this
  local.get $pos
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u $0
  i32.store16 $0
  local.get $out
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/string/String#substr (param $this i32) (param $start i32) (param $length i32) (result i32)
  (local $intStart i32)
  (local $end i32)
  (local $len i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $size i32)
  (local $out i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $start
  local.set $intStart
  local.get $length
  local.set $end
  local.get $this
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store $0
  local.get $14
  call $~lib/string/String#get:length
  local.set $len
  local.get $intStart
  i32.const 0
  i32.lt_s
  if
   local.get $len
   local.get $intStart
   i32.add
   local.tee $6
   i32.const 0
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_s
   select
   local.set $intStart
  end
  local.get $end
  local.tee $8
  i32.const 0
  local.tee $9
  local.get $8
  local.get $9
  i32.gt_s
  select
  local.tee $10
  local.get $len
  local.get $intStart
  i32.sub
  local.tee $11
  local.get $10
  local.get $11
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $size
  local.get $size
  i32.const 0
  i32.le_s
  if
   i32.const 640
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $size
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.get $this
  local.get $intStart
  i32.const 1
  i32.shl
  i32.add
  local.get $size
  memory.copy $0 $0
  local.get $out
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/string/String#substr@varargs (param $this i32) (param $start i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $length
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $start
  local.get $length
  call $~lib/string/String#substr
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.ByteArray.validateAndTrimHex (param $hex i32) (param $paddingLeft i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $hex
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/string/String#get:length
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 4720
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $2
   local.get $hex
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=12
   local.get $2
   call $~lib/string/String.__concat
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   i32.const 4752
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   call $~lib/string/String.__concat
   i32.const 4432
   i32.const 73
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $hex
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/string/String#get:length
  i32.const 2
  i32.ge_s
  if (result i32)
   local.get $hex
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $2
   i32.const 0
   call $~lib/string/String#charAt
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   i32.const 2448
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   call $~lib/string/String.__eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $hex
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $2
   i32.const 1
   call $~lib/string/String#charAt
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   i32.const 4816
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   call $~lib/string/String.__eq
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $hex
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   i32.const 2
   i32.const 1
   global.set $~argumentsLength
   i32.const 0
   call $~lib/string/String#substr@varargs
   local.tee $hex
   i32.store $0 offset=16
  end
  local.get $paddingLeft
  if
   local.get $hex
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   call $~lib/string/String#get:length
   i32.const 64
   i32.le_s
   i32.eqz
   if
    i32.const 4848
    i32.const 4432
    i32.const 81
    i32.const 17
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $hex
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/util/string/strtol<i32> (param $str i32) (param $radix i32) (result i32)
  (local $len i32)
  (local $ptr i32)
  (local $code i32)
  (local $sign i32)
  (local $6 i32)
  (local $num i32)
  (local $initial i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $str
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $~lib/string/String#get:length
  local.set $len
  local.get $len
  i32.eqz
  if
   i32.const 0
   drop
   i32.const 0
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $str
  local.set $ptr
  local.get $ptr
  i32.load16_u $0
  local.set $code
  loop $while-continue|0
   local.get $code
   call $~lib/util/string/isSpace
   if
    local.get $ptr
    i32.const 2
    i32.add
    local.tee $ptr
    i32.load16_u $0
    local.set $code
    local.get $len
    i32.const 1
    i32.sub
    local.set $len
    br $while-continue|0
   end
  end
  i32.const 1
  local.set $sign
  local.get $code
  i32.const 45
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $code
   i32.const 43
   i32.eq
  end
  if
   local.get $len
   i32.const 1
   i32.sub
   local.tee $len
   i32.eqz
   if
    i32.const 0
    drop
    i32.const 0
    local.set $10
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $10
    return
   end
   local.get $code
   i32.const 45
   i32.eq
   if
    i32.const -1
    local.set $sign
   end
   local.get $ptr
   i32.const 2
   i32.add
   local.tee $ptr
   i32.load16_u $0
   local.set $code
  end
  local.get $radix
  if
   local.get $radix
   i32.const 2
   i32.lt_s
   if (result i32)
    i32.const 1
   else
    local.get $radix
    i32.const 36
    i32.gt_s
   end
   if
    i32.const 0
    drop
    i32.const 0
    local.set $10
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $10
    return
   end
   local.get $radix
   i32.const 16
   i32.eq
   if
    local.get $len
    i32.const 2
    i32.gt_s
    if (result i32)
     local.get $code
     i32.const 48
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $ptr
     i32.load16_u $0 offset=2
     i32.const 32
     i32.or
     i32.const 120
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $ptr
     i32.const 4
     i32.add
     local.set $ptr
     local.get $len
     i32.const 2
     i32.sub
     local.set $len
    end
   end
  else
   local.get $code
   i32.const 48
   i32.eq
   if (result i32)
    local.get $len
    i32.const 2
    i32.gt_s
   else
    i32.const 0
   end
   if
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $ptr
        i32.load16_u $0 offset=2
        i32.const 32
        i32.or
        local.set $6
        local.get $6
        i32.const 98
        i32.eq
        br_if $case0|1
        local.get $6
        i32.const 111
        i32.eq
        br_if $case1|1
        local.get $6
        i32.const 120
        i32.eq
        br_if $case2|1
        br $break|1
       end
       local.get $ptr
       i32.const 4
       i32.add
       local.set $ptr
       local.get $len
       i32.const 2
       i32.sub
       local.set $len
       i32.const 2
       local.set $radix
       br $break|1
      end
      local.get $ptr
      i32.const 4
      i32.add
      local.set $ptr
      local.get $len
      i32.const 2
      i32.sub
      local.set $len
      i32.const 8
      local.set $radix
      br $break|1
     end
     local.get $ptr
     i32.const 4
     i32.add
     local.set $ptr
     local.get $len
     i32.const 2
     i32.sub
     local.set $len
     i32.const 16
     local.set $radix
     br $break|1
    end
   end
   local.get $radix
   i32.eqz
   if
    i32.const 10
    local.set $radix
   end
  end
  i32.const 0
  local.set $num
  local.get $len
  i32.const 1
  i32.sub
  local.set $initial
  block $while-break|2
   loop $while-continue|2
    local.get $len
    local.tee $9
    i32.const 1
    i32.sub
    local.set $len
    local.get $9
    if
     local.get $ptr
     i32.load16_u $0
     local.set $code
     local.get $code
     i32.const 48
     i32.sub
     i32.const 10
     i32.lt_u
     if
      local.get $code
      i32.const 48
      i32.sub
      local.set $code
     else
      local.get $code
      i32.const 65
      i32.sub
      i32.const 90
      i32.const 65
      i32.sub
      i32.le_u
      if
       local.get $code
       i32.const 65
       i32.const 10
       i32.sub
       i32.sub
       local.set $code
      else
       local.get $code
       i32.const 97
       i32.sub
       i32.const 122
       i32.const 97
       i32.sub
       i32.le_u
       if
        local.get $code
        i32.const 97
        i32.const 10
        i32.sub
        i32.sub
        local.set $code
       end
      end
     end
     local.get $code
     local.get $radix
     i32.ge_u
     if
      local.get $initial
      local.get $len
      i32.eq
      if
       i32.const 0
       drop
       i32.const 0
       local.set $10
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $10
       return
      end
      br $while-break|2
     end
     local.get $num
     local.get $radix
     i32.mul
     local.get $code
     i32.add
     local.set $num
     local.get $ptr
     i32.const 2
     i32.add
     local.set $ptr
     br $while-continue|2
    end
   end
  end
  local.get $sign
  local.get $num
  i32.mul
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/number/U8.parseInt (param $value i32) (param $radix i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $value
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $radix
  call $~lib/util/string/strtol<i32>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.ByteArray.fromHex (param $hex i32) (param $output i32) (param $paddingLeft i32) (result i32)
  (local $paddingOffset i32)
  (local $i i32)
  (local $i|5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $paddingLeft
  if
   i32.const 64
   local.get $hex
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/string/String#get:length
   i32.sub
   i32.const 1
   i32.shr_s
   local.set $paddingOffset
   i32.const 0
   local.set $i
   loop $for-loop|0
    local.get $i
    local.get $hex
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    call $~lib/string/String#get:length
    i32.lt_s
    if
     local.get $output
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     local.get $6
     local.get $paddingOffset
     local.get $i
     i32.const 1
     i32.shr_s
     i32.add
     local.get $hex
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=8
     local.get $6
     local.get $i
     i32.const 2
     call $~lib/string/String#substr
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=4
     local.get $6
     i32.const 16
     call $~lib/number/U8.parseInt
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__set
     local.get $i
     i32.const 2
     i32.add
     local.set $i
     br $for-loop|0
    end
   end
  else
   i32.const 0
   local.set $i|5
   loop $for-loop|1
    local.get $i|5
    local.get $hex
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    call $~lib/string/String#get:length
    i32.lt_s
    if
     local.get $output
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     local.get $6
     local.get $i|5
     i32.const 1
     i32.shr_s
     local.get $hex
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=8
     local.get $6
     local.get $i|5
     i32.const 2
     call $~lib/string/String#substr
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=4
     local.get $6
     i32.const 16
     call $~lib/number/U8.parseInt
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__set
     local.get $i|5
     i32.const 2
     i32.add
     local.set $i|5
     br $for-loop|1
    end
   end
  end
  local.get $output
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Number.fromHexStringWithBuffer (param $str i32) (param $buffer i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $str
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 0
  call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray.validateAndTrimHex
  local.tee $str
  i32.store $0 offset=4
  local.get $str
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $buffer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 1
  call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray.fromHex
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Address.fromHexString (param $str i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $str
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/string/String#get:length
  local.get $str
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 4336
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  call $~lib/string/String#startsWith
  i32.eq
  if (result i32)
   i32.const 42
  else
   i32.const 40
  end
  i32.eqz
  if
   i32.const 4368
   i32.const 4432
   i32.const 356
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $str
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  call $assembly/lib/abi/ethereum/coders/ethereum.Address#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $assembly/lib/abi/ethereum/coders/ethereum.Number.fromHexStringWithBuffer
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/typedarray/Uint32Array#constructor (param $this i32) (param $length i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 49
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $length
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $this
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/lib/types/bigint/BigInt#constructor (param $this i32) (param $size i32) (param $isNegative i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 9
   i32.const 48
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/bigint/BigInt#set:d
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/bigint/BigInt#set:n
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/bigint/BigInt#set:isNeg
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  local.get $size
  call $~lib/typedarray/Uint32Array#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/types/bigint/BigInt#set:d
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $isNegative
  call $assembly/lib/types/bigint/BigInt#set:isNeg
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/typedarray/Uint32Array#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 224
   i32.const 960
   i32.const 889
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Uint32Array#__get (param $this i32) (param $index i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $index
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 224
   i32.const 960
   i32.const 878
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/types/bigint/BigInt.fromUInt16 (param $val i32) (result i32)
  (local $res i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.get $assembly/lib/types/bigint/BigInt.precision
  i32.const 0
  call $assembly/lib/types/bigint/BigInt#constructor
  local.tee $res
  i32.store $0
  local.get $res
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/bigint/BigInt#get:d
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  local.get $val
  i32.const 65535
  i32.and
  global.get $assembly/lib/types/bigint/BigInt.digitMask
  i32.and
  call $~lib/typedarray/Uint32Array#__set
  local.get $res
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $res
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $2
  call $assembly/lib/types/bigint/BigInt#get:d
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 0
  i32.ne
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  call $assembly/lib/types/bigint/BigInt#set:n
  local.get $res
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/string/String.__ne (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/string/String.__eq
  i32.eqz
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/string/String#charCodeAt (param $this i32) (param $pos i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $pos
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  local.get $this
  local.get $pos
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/types/bigint/BigInt#trimLeadingZeros (param $this i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  loop $while-continue|0
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=4
    local.get $1
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=4
    local.get $1
    call $assembly/lib/types/bigint/BigInt#get:n
    i32.const 1
    i32.sub
    call $~lib/typedarray/Uint32Array#__get
    i32.const 0
    i32.eq
   else
    i32.const 0
   end
   if
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    local.get $this
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=4
    local.get $1
    call $assembly/lib/types/bigint/BigInt#get:n
    i32.const 1
    i32.sub
    call $assembly/lib/types/bigint/BigInt#set:n
    br $while-continue|0
   end
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.const 0
  i32.eq
  if
   local.get $this
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   i32.const 0
   call $assembly/lib/types/bigint/BigInt#set:isNeg
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/bigint/BigInt.fromUInt32 (param $val i32) (result i32)
  (local $res i32)
  (local $i i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.get $assembly/lib/types/bigint/BigInt.precision
  i32.const 0
  call $assembly/lib/types/bigint/BigInt#constructor
  local.tee $res
  i32.store $0
  i32.const 0
  local.set $i
  loop $while-continue|0
   local.get $val
   i32.const 0
   i32.ne
   if
    local.get $res
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=8
    local.get $4
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    local.get $i
    local.tee $3
    i32.const 1
    i32.add
    local.set $i
    local.get $3
    local.get $val
    global.get $assembly/lib/types/bigint/BigInt.digitMask
    i32.and
    call $~lib/typedarray/Uint32Array#__set
    local.get $val
    global.get $assembly/lib/types/bigint/BigInt.p
    i32.shr_u
    local.set $val
    br $while-continue|0
   end
  end
  local.get $res
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $i
  call $assembly/lib/types/bigint/BigInt#set:n
  local.get $res
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
  local.get $res
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/types/bigint/BigInt.getEmptyResultContainer (param $minSize i32) (param $isNegative i32) (param $n i32) (result i32)
  (local $size i32)
  (local $res i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $minSize
  global.get $assembly/lib/types/bigint/BigInt.precision
  i32.add
  local.get $minSize
  global.get $assembly/lib/types/bigint/BigInt.precision
  i32.rem_s
  i32.sub
  local.set $size
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  local.get $isNegative
  call $assembly/lib/types/bigint/BigInt#constructor
  local.tee $res
  i32.store $0
  local.get $res
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  local.get $n
  call $assembly/lib/types/bigint/BigInt#set:n
  local.get $res
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $assembly/lib/types/bigint/BigInt#_mulComba (param $this i32) (param $other i32) (param $maxDigits i32) (result i32)
  (local $totalN i32)
  (local $outerN i32)
  (local $res i32)
  (local $w i64)
  (local $i i32)
  (local $maxJ i32)
  (local $tY i32)
  (local $tX i32)
  (local $distFromEnd i32)
  (local $currentN i32)
  (local $innerN i32)
  (local $j i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0
  local.get $15
  call $assembly/lib/types/bigint/BigInt#get:n
  local.get $other
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0
  local.get $15
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.add
  local.set $totalN
  local.get $maxDigits
  local.get $totalN
  i32.lt_s
  if (result i32)
   local.get $maxDigits
  else
   local.get $totalN
  end
  local.set $outerN
  global.get $~lib/memory/__stack_pointer
  local.get $outerN
  i32.const 0
  local.get $outerN
  call $assembly/lib/types/bigint/BigInt.getEmptyResultContainer
  local.tee $res
  i32.store $0 offset=4
  i64.const 0
  local.set $w
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $outerN
   i32.lt_s
   if
    local.get $other
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store $0
    local.get $15
    call $assembly/lib/types/bigint/BigInt#get:n
    i32.const 1
    i32.sub
    local.set $maxJ
    local.get $maxJ
    local.get $i
    i32.lt_s
    if (result i32)
     local.get $maxJ
    else
     local.get $i
    end
    local.set $tY
    local.get $i
    local.get $tY
    i32.sub
    local.set $tX
    local.get $this
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store $0
    local.get $15
    call $assembly/lib/types/bigint/BigInt#get:n
    local.get $tX
    i32.sub
    local.set $distFromEnd
    local.get $tY
    i32.const 1
    i32.add
    local.set $currentN
    local.get $distFromEnd
    local.get $currentN
    i32.lt_s
    if (result i32)
     local.get $distFromEnd
    else
     local.get $currentN
    end
    local.set $innerN
    i32.const 0
    local.set $j
    loop $for-loop|1
     local.get $j
     local.get $innerN
     i32.lt_s
     if
      local.get $w
      local.get $this
      local.set $15
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store $0 offset=8
      local.get $15
      call $assembly/lib/types/bigint/BigInt#get:d
      local.set $15
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store $0
      local.get $15
      local.get $tX
      local.get $j
      i32.add
      call $~lib/typedarray/Uint32Array#__get
      i64.extend_i32_u
      local.get $other
      local.set $15
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store $0 offset=8
      local.get $15
      call $assembly/lib/types/bigint/BigInt#get:d
      local.set $15
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store $0
      local.get $15
      local.get $tY
      local.get $j
      i32.sub
      call $~lib/typedarray/Uint32Array#__get
      i64.extend_i32_u
      i64.mul
      i64.add
      local.set $w
      local.get $j
      i32.const 1
      i32.add
      local.set $j
      br $for-loop|1
     end
    end
    local.get $res
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store $0 offset=8
    local.get $15
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $15
    global.get $~lib/memory/__stack_pointer
    local.get $15
    i32.store $0
    local.get $15
    local.get $i
    local.get $w
    i32.wrap_i64
    global.get $assembly/lib/types/bigint/BigInt.digitMask
    i32.and
    call $~lib/typedarray/Uint32Array#__set
    local.get $w
    global.get $assembly/lib/types/bigint/BigInt.p
    i64.extend_i32_s
    i64.shr_u
    local.set $w
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $res
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store $0
  local.get $15
  call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
  local.get $res
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $assembly/lib/types/bigint/BigInt#_mulPartial (param $this i32) (param $other i32) (param $maxDigits i32) (result i32)
  (local $res i32)
  (local $i i32)
  (local $r i32)
  (local $digsSubI i32)
  (local $limitedN i32)
  (local $j i32)
  (local $rr i64)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $maxDigits
  i32.const 0
  local.get $maxDigits
  call $assembly/lib/types/bigint/BigInt.getEmptyResultContainer
  local.tee $res
  i32.store $0
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.lt_s
   if
    i32.const 0
    local.set $r
    local.get $maxDigits
    local.get $i
    i32.sub
    local.set $digsSubI
    local.get $other
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0 offset=4
    local.get $10
    call $assembly/lib/types/bigint/BigInt#get:n
    local.get $digsSubI
    i32.lt_s
    if (result i32)
     local.get $other
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     call $assembly/lib/types/bigint/BigInt#get:n
    else
     local.get $digsSubI
    end
    local.set $limitedN
    i32.const 0
    local.set $j
    loop $for-loop|1
     local.get $j
     local.get $limitedN
     i32.lt_s
     if
      local.get $res
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store $0 offset=8
      local.get $10
      call $assembly/lib/types/bigint/BigInt#get:d
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store $0 offset=4
      local.get $10
      local.get $i
      local.get $j
      i32.add
      call $~lib/typedarray/Uint32Array#__get
      i64.extend_i32_u
      local.get $this
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store $0 offset=8
      local.get $10
      call $assembly/lib/types/bigint/BigInt#get:d
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store $0 offset=4
      local.get $10
      local.get $i
      call $~lib/typedarray/Uint32Array#__get
      i64.extend_i32_u
      local.get $other
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store $0 offset=8
      local.get $10
      call $assembly/lib/types/bigint/BigInt#get:d
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store $0 offset=4
      local.get $10
      local.get $j
      call $~lib/typedarray/Uint32Array#__get
      i64.extend_i32_u
      i64.mul
      i64.add
      local.get $r
      i64.extend_i32_u
      i64.add
      local.set $rr
      local.get $res
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store $0 offset=8
      local.get $10
      call $assembly/lib/types/bigint/BigInt#get:d
      local.set $10
      global.get $~lib/memory/__stack_pointer
      local.get $10
      i32.store $0 offset=4
      local.get $10
      local.get $i
      local.get $j
      i32.add
      local.get $rr
      global.get $assembly/lib/types/bigint/BigInt.digitMask
      i64.extend_i32_u
      i64.and
      i32.wrap_i64
      call $~lib/typedarray/Uint32Array#__set
      local.get $rr
      global.get $assembly/lib/types/bigint/BigInt.p
      i64.extend_i32_s
      i64.shr_u
      i32.wrap_i64
      local.set $r
      local.get $j
      i32.const 1
      i32.add
      local.set $j
      br $for-loop|1
     end
    end
    local.get $i
    local.get $limitedN
    i32.add
    local.get $maxDigits
    i32.lt_s
    if
     local.get $res
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=8
     local.get $10
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $i
     local.get $limitedN
     i32.add
     local.get $r
     call $~lib/typedarray/Uint32Array#__set
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $res
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0 offset=4
  local.get $10
  call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
  local.get $res
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $assembly/lib/types/bigint/BigInt#mul<assembly/lib/types/bigint/BigInt> (param $this i32) (param $other i32) (result i32)
  (local $multiplier i32)
  (local $res i32)
  (local $digitsNeeded i32)
  (local $minN i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt>
  local.tee $multiplier
  i32.store $0 offset=4
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/bigint/BigInt#get:n
  local.get $multiplier
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.add
  i32.const 1
  i32.add
  local.set $digitsNeeded
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/bigint/BigInt#get:n
  local.get $multiplier
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.le_s
  if (result i32)
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $assembly/lib/types/bigint/BigInt#get:n
  else
   local.get $multiplier
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $assembly/lib/types/bigint/BigInt#get:n
  end
  local.set $minN
  local.get $digitsNeeded
  global.get $assembly/lib/types/bigint/BigInt.maxComba
  i32.lt_s
  if (result i32)
   local.get $minN
   global.get $assembly/lib/types/bigint/BigInt.maxComba
   i32.lt_s
  else
   i32.const 0
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $multiplier
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=8
   local.get $6
   local.get $digitsNeeded
   call $assembly/lib/types/bigint/BigInt#_mulComba
   local.tee $res
   i32.store $0 offset=12
  else
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $multiplier
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=8
   local.get $6
   local.get $digitsNeeded
   call $assembly/lib/types/bigint/BigInt#_mulPartial
   local.tee $res
   i32.store $0 offset=12
  end
  local.get $res
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=8
  local.get $6
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  i32.const 0
  i32.ne
  local.get $multiplier
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=8
  local.get $6
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  i32.const 0
  i32.ne
  i32.ne
  if (result i32)
   local.get $res
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=8
   local.get $6
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.const 0
   i32.gt_s
  else
   i32.const 0
  end
  call $assembly/lib/types/bigint/BigInt#set:isNeg
  local.get $res
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/typedarray/Uint32Array#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/lib/types/bigint/BigInt#resize (param $this i32) (param $max i32)
  (local $temp i32)
  (local $i i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $max
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $temp
  i32.store $0
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.lt_s
   if
    local.get $temp
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    local.get $i
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=12
    local.get $4
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=8
    local.get $4
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $temp
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/lib/types/bigint/BigInt#set:d
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/bigint/BigInt#grow (param $this i32) (param $size i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/bigint/BigInt#get:d
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/typedarray/Uint32Array#get:length
  local.get $size
  i32.ge_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $size
  i32.const 2
  global.get $assembly/lib/types/bigint/BigInt.precision
  i32.mul
  i32.add
  local.get $size
  global.get $assembly/lib/types/bigint/BigInt.precision
  i32.rem_s
  i32.sub
  call $assembly/lib/types/bigint/BigInt#resize
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/bigint/BigInt#inplaceMulInt (param $this i32) (param $b i32) (result i32)
  (local $r i32)
  (local $i i32)
  (local $rr i64)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $b
  i32.const 268435456
  i32.gt_u
  if
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $b
   call $assembly/lib/types/bigint/BigInt.fromUInt32
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   call $assembly/lib/types/bigint/BigInt#mul<assembly/lib/types/bigint/BigInt>
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.const 1
  i32.add
  call $assembly/lib/types/bigint/BigInt#grow
  i32.const 0
  local.set $r
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.lt_s
   if
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    i64.extend_i32_u
    local.get $b
    i64.extend_i32_u
    i64.mul
    local.get $r
    i64.extend_i32_u
    i64.add
    local.set $rr
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    local.get $i
    local.get $rr
    global.get $assembly/lib/types/bigint/BigInt.digitMask
    i64.extend_i32_u
    i64.and
    i32.wrap_i64
    call $~lib/typedarray/Uint32Array#__set
    local.get $rr
    global.get $assembly/lib/types/bigint/BigInt.p
    i64.extend_i32_s
    i64.shr_u
    i32.wrap_i64
    local.set $r
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $r
  i32.const 0
  i32.ne
  if
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   call $assembly/lib/types/bigint/BigInt#get:d
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=8
   local.get $6
   call $assembly/lib/types/bigint/BigInt#get:n
   local.tee $5
   i32.const 1
   i32.add
   call $assembly/lib/types/bigint/BigInt#set:n
   local.get $5
   local.get $r
   call $~lib/typedarray/Uint32Array#__set
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/lib/types/bigint/BigInt#_add (param $this i32) (param $other i32) (param $resultIsNegative i32) (result i32)
  (local $min i32)
  (local $max i32)
  (local $x i32)
  (local $res i32)
  (local $carry i32)
  (local $i i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $assembly/lib/types/bigint/BigInt#get:n
  local.get $other
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.gt_s
  if
   local.get $other
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $assembly/lib/types/bigint/BigInt#get:n
   local.set $min
   local.get $this
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $assembly/lib/types/bigint/BigInt#get:n
   local.set $max
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $x
   i32.store $0 offset=4
  else
   local.get $this
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $assembly/lib/types/bigint/BigInt#get:n
   local.set $min
   local.get $other
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $assembly/lib/types/bigint/BigInt#get:n
   local.set $max
   global.get $~lib/memory/__stack_pointer
   local.get $other
   local.tee $x
   i32.store $0 offset=4
  end
  global.get $~lib/memory/__stack_pointer
  local.get $max
  i32.const 1
  i32.add
  local.get $resultIsNegative
  local.get $max
  call $assembly/lib/types/bigint/BigInt.getEmptyResultContainer
  local.tee $res
  i32.store $0 offset=8
  i32.const 0
  local.set $carry
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $min
   i32.lt_s
   if
    local.get $res
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=12
    local.get $9
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0
    local.get $9
    local.get $i
    local.get $this
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=16
    local.get $9
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=12
    local.get $9
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    local.get $other
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=16
    local.get $9
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=12
    local.get $9
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    i32.add
    local.get $carry
    i32.add
    call $~lib/typedarray/Uint32Array#__set
    local.get $res
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=12
    local.get $9
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0
    local.get $9
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    global.get $assembly/lib/types/bigint/BigInt.p
    i32.shr_u
    local.set $carry
    local.get $res
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=12
    local.get $9
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0
    local.get $9
    local.get $i
    local.get $res
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=16
    local.get $9
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=12
    local.get $9
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    global.get $assembly/lib/types/bigint/BigInt.digitMask
    i32.and
    call $~lib/typedarray/Uint32Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $min
  local.get $max
  i32.ne
  if
   loop $for-loop|1
    local.get $i
    local.get $max
    i32.lt_s
    if
     local.get $res
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=12
     local.get $9
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0
     local.get $9
     local.get $i
     local.get $x
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=16
     local.get $9
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=12
     local.get $9
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     local.get $carry
     i32.add
     call $~lib/typedarray/Uint32Array#__set
     local.get $res
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=12
     local.get $9
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0
     local.get $9
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     global.get $assembly/lib/types/bigint/BigInt.p
     i32.shr_u
     local.set $carry
     local.get $res
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=12
     local.get $9
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0
     local.get $9
     local.get $i
     local.get $res
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=16
     local.get $9
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=12
     local.get $9
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     global.get $assembly/lib/types/bigint/BigInt.digitMask
     i32.and
     call $~lib/typedarray/Uint32Array#__set
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|1
    end
   end
  end
  local.get $carry
  i32.const 0
  i32.gt_u
  if
   local.get $res
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=12
   local.get $9
   call $assembly/lib/types/bigint/BigInt#get:d
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   local.get $max
   local.get $carry
   call $~lib/typedarray/Uint32Array#__set
   local.get $res
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   local.get $res
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=12
   local.get $9
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.const 1
   i32.add
   call $assembly/lib/types/bigint/BigInt#set:n
  end
  local.get $res
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $assembly/lib/types/bigint/BigInt#magCompareTo (param $this i32) (param $other i32) (result i32)
  (local $i i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:n
  local.get $other
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.gt_s
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:n
  local.get $other
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.lt_s
  if
   i32.const -1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.const 1
  i32.sub
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 0
   i32.ge_s
   if
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0
    local.get $3
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    local.get $other
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=4
    local.get $3
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0
    local.get $3
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    i32.ne
    if
     local.get $this
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=4
     local.get $3
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0
     local.get $3
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     local.get $other
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0 offset=4
     local.get $3
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store $0
     local.get $3
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     i32.lt_u
     if
      i32.const -1
      local.set $3
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $3
      return
     else
      i32.const 1
      local.set $3
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $3
      return
     end
     unreachable
    end
    local.get $i
    i32.const 1
    i32.sub
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/types/bigint/BigInt#_sub (param $this i32) (param $other i32) (param $resultIsNegative i32) (result i32)
  (local $min i32)
  (local $max i32)
  (local $res i32)
  (local $carry i32)
  (local $i i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $other
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  call $assembly/lib/types/bigint/BigInt#get:n
  local.set $min
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  call $assembly/lib/types/bigint/BigInt#get:n
  local.set $max
  global.get $~lib/memory/__stack_pointer
  local.get $max
  local.get $resultIsNegative
  local.get $max
  call $assembly/lib/types/bigint/BigInt.getEmptyResultContainer
  local.tee $res
  i32.store $0 offset=4
  i32.const 0
  local.set $carry
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $min
   i32.lt_s
   if
    local.get $res
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0
    local.get $8
    local.get $i
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=12
    local.get $8
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    local.get $other
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=12
    local.get $8
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    i32.sub
    local.get $carry
    i32.sub
    call $~lib/typedarray/Uint32Array#__set
    local.get $res
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0
    local.get $8
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    global.get $assembly/lib/types/bigint/BigInt.actualBits
    i32.const 1
    i32.sub
    i32.shr_u
    local.set $carry
    local.get $res
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0
    local.get $8
    local.get $i
    local.get $res
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=12
    local.get $8
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    global.get $assembly/lib/types/bigint/BigInt.digitMask
    i32.and
    call $~lib/typedarray/Uint32Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $min
  local.get $max
  i32.lt_s
  if
   loop $for-loop|1
    local.get $i
    local.get $max
    i32.lt_s
    if
     local.get $res
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=8
     local.get $8
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0
     local.get $8
     local.get $i
     local.get $this
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=12
     local.get $8
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=8
     local.get $8
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     local.get $carry
     i32.sub
     call $~lib/typedarray/Uint32Array#__set
     local.get $res
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=8
     local.get $8
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0
     local.get $8
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     global.get $assembly/lib/types/bigint/BigInt.actualBits
     i32.const 1
     i32.sub
     i32.shr_u
     local.set $carry
     local.get $res
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=8
     local.get $8
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0
     local.get $8
     local.get $i
     local.get $res
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=12
     local.get $8
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=8
     local.get $8
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     global.get $assembly/lib/types/bigint/BigInt.digitMask
     i32.and
     call $~lib/typedarray/Uint32Array#__set
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|1
    end
   end
  end
  local.get $res
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
  local.get $res
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $assembly/lib/types/bigint/BigInt#add<assembly/lib/types/bigint/BigInt> (param $this i32) (param $other i32) (result i32)
  (local $addend i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $other
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt>
  local.tee $addend
  i32.store $0 offset=4
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  i32.const 0
  i32.ne
  local.get $addend
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  i32.const 0
  i32.ne
  i32.eq
  if
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $addend
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $3
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=12
   local.get $3
   call $assembly/lib/types/bigint/BigInt#get:isNeg
   call $assembly/lib/types/bigint/BigInt#_add
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  else
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $addend
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $3
   call $assembly/lib/types/bigint/BigInt#magCompareTo
   i32.const 0
   i32.lt_s
   if
    local.get $addend
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0
    local.get $3
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    local.get $addend
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=12
    local.get $3
    call $assembly/lib/types/bigint/BigInt#get:isNeg
    call $assembly/lib/types/bigint/BigInt#_sub
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   else
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0
    local.get $3
    local.get $addend
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=12
    local.get $3
    call $assembly/lib/types/bigint/BigInt#get:isNeg
    call $assembly/lib/types/bigint/BigInt#_sub
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   end
   unreachable
  end
  unreachable
 )
 (func $assembly/lib/types/bigint/BigInt.fromString (param $bigInteger i32) (param $radix i32) (result i32)
  (local $i i32)
  (local $isNegative i32)
  (local $res i32)
  (local $radixU i32)
  (local $code i32)
  (local $val i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 32
  memory.fill $0
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 16
   i32.gt_s
  end
  if
   i32.const 4928
   i32.const 5056
   i32.const 67
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.set $i
  i32.const 0
  local.set $isNegative
  local.get $bigInteger
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  i32.const 0
  call $~lib/string/String#charAt
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  i32.const 5136
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=4
  local.get $8
  call $~lib/string/String.__eq
  if
   local.get $i
   i32.const 1
   i32.add
   local.set $i
   i32.const 1
   local.set $isNegative
  end
  local.get $radix
  i32.const 16
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 10
   i32.eq
  end
  if (result i32)
   local.get $bigInteger
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0 offset=8
   local.get $8
   local.get $i
   call $~lib/string/String#charAt
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0
   local.get $8
   i32.const 2448
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0 offset=4
   local.get $8
   call $~lib/string/String.__eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $bigInteger
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0 offset=8
   local.get $8
   local.get $i
   i32.const 1
   i32.add
   call $~lib/string/String#charAt
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0
   local.get $8
   i32.const 4816
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0 offset=4
   local.get $8
   call $~lib/string/String.__eq
  else
   i32.const 0
  end
  if
   local.get $i
   i32.const 2
   i32.add
   local.set $i
   i32.const 16
   local.set $radix
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $assembly/lib/types/bigint/BigInt.fromUInt16
  local.tee $res
  i32.store $0 offset=12
  local.get $radix
  local.set $radixU
  loop $for-loop|0
   local.get $i
   local.get $bigInteger
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0
   local.get $8
   call $~lib/string/String#get:length
   i32.lt_s
   if
    local.get $bigInteger
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0
    local.get $8
    local.get $i
    call $~lib/string/String#charCodeAt
    local.set $code
    local.get $code
    i32.const 48
    i32.ge_s
    if (result i32)
     local.get $code
     i32.const 57
     i32.le_s
    else
     i32.const 0
    end
    if
     local.get $code
     i32.const 48
     i32.sub
     local.set $val
    else
     local.get $code
     i32.const 65
     i32.ge_s
     if (result i32)
      local.get $code
      i32.const 70
      i32.le_s
     else
      i32.const 0
     end
     if
      local.get $code
      i32.const 55
      i32.sub
      local.set $val
     else
      local.get $code
      i32.const 97
      i32.ge_s
      if (result i32)
       local.get $code
       i32.const 102
       i32.le_s
      else
       i32.const 0
      end
      if
       local.get $code
       i32.const 87
       i32.sub
       local.set $val
      else
       i32.const 5168
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store $0 offset=20
       local.get $8
       local.get $bigInteger
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store $0 offset=28
       local.get $8
       local.get $i
       call $~lib/string/String#charAt
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store $0 offset=24
       local.get $8
       call $~lib/string/String.__concat
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store $0 offset=8
       local.get $8
       i32.const 5216
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store $0 offset=16
       local.get $8
       call $~lib/string/String.__concat
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store $0
       local.get $8
       local.get $radix
       i32.const 10
       call $~lib/number/I32#toString
       local.set $8
       global.get $~lib/memory/__stack_pointer
       local.get $8
       i32.store $0 offset=4
       local.get $8
       call $~lib/string/String.__concat
       i32.const 5056
       i32.const 95
       i32.const 17
       call $~lib/builtins/abort
       unreachable
      end
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $res
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    local.get $radixU
    i32.const 65535
    i32.and
    call $assembly/lib/types/bigint/BigInt#inplaceMulInt
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0
    local.get $8
    local.get $val
    call $assembly/lib/types/bigint/BigInt.fromUInt16
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=4
    local.get $8
    call $assembly/lib/types/bigint/BigInt#add<assembly/lib/types/bigint/BigInt>
    local.tee $res
    i32.store $0 offset=12
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $res
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  local.get $isNegative
  call $assembly/lib/types/bigint/BigInt#set:isNeg
  local.get $res
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
  local.get $res
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 1088
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.abiEncode~anonymous|0 (param $t i32) (param $$1 i32) (param $$2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $t
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/abi/ethereum/coders/ethereum.Coder#typeName@override
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#map<~lib/string/String> (param $this i32) (param $fn i32) (result i32)
  (local $len i32)
  (local $out i32)
  (local $outStart i32)
  (local $i i32)
  (local $6 i32)
  (local $7 i32)
  (local $result i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length_
  local.set $len
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 2
  i32.const 23
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $out
  i32.store $0 offset=4
  local.get $out
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $outStart
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $len
   local.tee $6
   local.get $this
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length_
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_s
   select
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=8
    local.get $9
    call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0
    local.get $9
    local.get $i
    local.get $this
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=8
    local.get $9
    i32.const 3
    global.set $~argumentsLength
    local.get $fn
    i32.load $0
    call_indirect $0 (type $i32_i32_i32_=>_i32)
    local.tee $result
    i32.store $0 offset=12
    local.get $outStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    local.get $result
    i32.store $0
    i32.const 1
    drop
    local.get $out
    local.get $result
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $out
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $~lib/util/string/joinStringArray (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $4 i32)
  (local $estLen i32)
  (local $value i32)
  (local $i i32)
  (local $offset i32)
  (local $sepLen i32)
  (local $result i32)
  (local $i|11 i32)
  (local $valueLen i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 640
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $dataStart
   i32.load $0
   local.tee $4
   i32.store $0
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 640
   end
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  i32.const 0
  local.set $estLen
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $value
    i32.store $0 offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $estLen
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store $0 offset=8
     local.get $13
     call $~lib/string/String#get:length
     i32.add
     local.set $estLen
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $offset
  local.get $separator
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store $0 offset=8
  local.get $13
  call $~lib/string/String#get:length
  local.set $sepLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  local.get $sepLen
  local.get $lastIndex
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store $0 offset=12
  i32.const 0
  local.set $i|11
  loop $for-loop|1
   local.get $i|11
   local.get $lastIndex
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i|11
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $value
    i32.store $0 offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store $0 offset=8
     local.get $13
     call $~lib/string/String#get:length
     local.set $valueLen
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $value
     local.get $valueLen
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $offset
     local.get $valueLen
     i32.add
     local.set $offset
    end
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i|11
    i32.const 1
    i32.add
    local.set $i|11
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $value
  i32.store $0 offset=4
  local.get $value
  i32.const 0
  i32.ne
  if
   local.get $result
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $value
   local.get $value
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store $0 offset=8
   local.get $13
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   memory.copy $0 $0
  end
  local.get $result
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $this i32) (param $separator i32) (result i32)
  (local $ptr i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $len
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $ptr
  local.get $len
  local.get $separator
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $~lib/util/string/joinStringArray
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/string/String.UTF8.encode (param $str i32) (param $nullTerminated i32) (param $errorMode i32) (result i32)
  (local $buf i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $str
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $nullTerminated
  call $~lib/string/String.UTF8.byteLength
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $buf
  i32.store $0 offset=4
  local.get $str
  local.get $str
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/string/String#get:length
  local.get $buf
  local.get $nullTerminated
  local.get $errorMode
  call $~lib/string/String.UTF8.encodeUnsafe
  drop
  local.get $buf
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/string/String.UTF8.encode@varargs (param $str i32) (param $nullTerminated i32) (param $errorMode i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $nullTerminated
   end
   i32.const 0
   local.set $errorMode
  end
  local.get $str
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $nullTerminated
  local.get $errorMode
  call $~lib/string/String.UTF8.encode
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array.wrap (param $buffer i32) (param $byteOffset i32) (param $length i32) (result i32)
  (local $buffer|3 i32)
  (local $byteOffset|4 i32)
  (local $len i32)
  (local $byteLength i32)
  (local $bufferByteLength i32)
  (local $out i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  block $~lib/typedarray/WRAP<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $buffer
   local.tee $buffer|3
   i32.store $0
   local.get $byteOffset
   local.set $byteOffset|4
   local.get $length
   local.set $len
   local.get $buffer|3
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0 offset=4
   local.get $9
   call $~lib/arraybuffer/ArrayBuffer#get:byteLength
   local.set $bufferByteLength
   local.get $byteOffset|4
   local.get $bufferByteLength
   i32.gt_u
   local.get $byteOffset|4
   i32.const 0
   i32.and
   i32.or
   if
    i32.const 224
    i32.const 960
    i32.const 1860
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $len
   i32.const 0
   i32.lt_s
   if
    local.get $len
    i32.const -1
    i32.eq
    if
     local.get $bufferByteLength
     i32.const 0
     i32.and
     if
      i32.const 528
      i32.const 960
      i32.const 1865
      i32.const 9
      call $~lib/builtins/abort
      unreachable
     end
     local.get $bufferByteLength
     local.get $byteOffset|4
     i32.sub
     local.set $byteLength
    else
     i32.const 528
     i32.const 960
     i32.const 1869
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
   else
    local.get $len
    i32.const 0
    i32.shl
    local.set $byteLength
    local.get $byteOffset|4
    local.get $byteLength
    i32.add
    local.get $bufferByteLength
    i32.gt_s
    if
     i32.const 528
     i32.const 960
     i32.const 1874
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store $0 offset=8
   local.get $out
   local.get $buffer|3
   i32.store $0
   local.get $out
   local.get $buffer|3
   i32.const 0
   call $~lib/rt/itcms/__link
   local.get $out
   local.get $byteLength
   i32.store $0 offset=8
   local.get $out
   local.get $buffer|3
   local.get $byteOffset|4
   i32.add
   i32.store $0 offset=4
   local.get $out
   br $~lib/typedarray/WRAP<~lib/typedarray/Uint8Array,u8>|inlined.0
  end
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $assembly/lib/utils/utils.stringToUint8Array (param $s i32) (result i32)
  (local $buffer i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $s
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String.UTF8.encode@varargs
  local.tee $buffer
  i32.store $0 offset=4
  local.get $buffer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.const 0
  i32.eq
  if
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  local.get $buffer
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  i32.const 0
  local.get $s
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $~lib/string/String#get:length
  call $~lib/typedarray/Uint8Array.wrap
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/types/basic_types/AI32#constructor (param $this i32) (param $body i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 53
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $assembly/lib/types/basic_types/AI32#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $assembly/lib/types/basic_types/AI32#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $body
  call $assembly/lib/types/basic_types/AI32#set:body
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  global.get $assembly/lib/types/basic_types/typeIndex.TypeInt32
  i32.const 4
  call $assembly/lib/types/basic_types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/basic_types/AI32#set:head
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/lib/types/basic_types/AI32#store (param $this i32) (result i32)
  (local $ptr i32)
  (local $bodyPtr i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AI32#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#get:dataLen
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AI32#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#len
  i32.add
  call $assembly/lib/utils/utils.alloc
  local.set $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AI32#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $ptr
  call $assembly/lib/types/basic_types/header#store
  local.get $ptr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AI32#get:head
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/header#len
  i32.add
  local.set $bodyPtr
  local.get $bodyPtr
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/AI32#get:body
  i32.store $0
  local.get $ptr
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/host/hostapi/crypto.keccak (param $data i32) (result i32)
  (local $dataPtr i32)
  (local $hasher i32)
  (local $resPtr i32)
  (local $resRaw i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  i32.const 0
  local.get $data
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $assembly/lib/types/basic_types/AUint8Array#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AUint8Array#store
  local.set $dataPtr
  i32.const 0
  global.get $assembly/lib/host/hostapi/crypto.Hasher.Keccak
  call $assembly/lib/types/basic_types/AI32#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AI32#store
  local.set $hasher
  local.get $hasher
  local.get $dataPtr
  call $assembly/lib/host/hostapi/__HostApi__.hash
  local.set $resPtr
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
  local.tee $resRaw
  i32.store $0 offset=8
  local.get $resRaw
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  local.get $resPtr
  call $assembly/lib/types/basic_types/AUint8Array#load
  local.get $resRaw
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AUint8Array#get:body
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/typedarray/Uint8Array#slice (param $this i32) (param $begin i32) (param $end i32) (result i32)
  (local $array i32)
  (local $start i32)
  (local $end|5 i32)
  (local $len i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $slice i32)
  (local $18 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  block $~lib/typedarray/SLICE<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $array
   i32.store $0
   local.get $begin
   local.set $start
   local.get $end
   local.set $end|5
   local.get $array
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store $0 offset=4
   local.get $18
   call $~lib/typedarray/Uint8Array#get:length
   local.set $len
   local.get $start
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $start
    local.get $len
    i32.add
    local.tee $7
    i32.const 0
    local.tee $8
    local.get $7
    local.get $8
    i32.gt_s
    select
   else
    local.get $start
    local.tee $9
    local.get $len
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_s
    select
   end
   local.set $start
   local.get $end|5
   i32.const 0
   i32.lt_s
   if (result i32)
    local.get $end|5
    local.get $len
    i32.add
    local.tee $11
    i32.const 0
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_s
    select
   else
    local.get $end|5
    local.tee $13
    local.get $len
    local.tee $14
    local.get $13
    local.get $14
    i32.lt_s
    select
   end
   local.set $end|5
   local.get $end|5
   local.get $start
   i32.sub
   local.tee $15
   i32.const 0
   local.tee $16
   local.get $15
   local.get $16
   i32.gt_s
   select
   local.set $len
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $len
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $slice
   i32.store $0 offset=8
   local.get $slice
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store $0 offset=4
   local.get $18
   call $~lib/arraybuffer/ArrayBufferView#get:dataStart
   local.get $array
   local.set $18
   global.get $~lib/memory/__stack_pointer
   local.get $18
   i32.store $0 offset=4
   local.get $18
   call $~lib/arraybuffer/ArrayBufferView#get:dataStart
   local.get $start
   i32.const 0
   i32.shl
   i32.add
   local.get $len
   i32.const 0
   i32.shl
   memory.copy $0 $0
   local.get $slice
   br $~lib/typedarray/SLICE<~lib/typedarray/Uint8Array,u8>|inlined.0
  end
  local.set $18
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $18
  return
 )
 (func $assembly/lib/utils/utils.uint8ArrayToHex (param $data i32) (result i32)
  (local $outPtr i32)
  (local $out i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  i32.const 0
  local.get $data
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/types/basic_types/AUint8Array#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/AUint8Array#store
  call $assembly/lib/utils/__Util__.toHexString
  local.set $outPtr
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $out
  i32.store $0 offset=12
  local.get $out
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $outPtr
  call $assembly/lib/types/basic_types/AString#load
  local.get $out
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/basic_types/AString#get
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 1088
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $value
  i32.store $0 offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 5424
   i32.const 1088
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Number.fromU64 (param $x i64) (param $bitSize i32) (param $signed i32) (result i32)
  (local $self i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $bitSize
  i32.const 65535
  i32.and
  i32.const 8
  i32.ge_u
  if (result i32)
   local.get $bitSize
   i32.const 65535
   i32.and
   i32.const 256
   i32.le_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 5552
   i32.const 4432
   i32.const 303
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $bitSize
  i32.const 65535
  i32.and
  i32.const 8
  i32.rem_u
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 5648
   i32.const 4432
   i32.const 304
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $signed
  local.get $bitSize
  call $assembly/lib/abi/ethereum/coders/ethereum.Number#constructor
  local.tee $self
  i32.store $0
  local.get $self
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 31
  local.get $x
  i32.wrap_i64
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $self
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 30
  local.get $x
  i64.const 8
  i64.shr_u
  i32.wrap_i64
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $self
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 29
  local.get $x
  i64.const 16
  i64.shr_u
  i32.wrap_i64
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $self
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 28
  local.get $x
  i64.const 24
  i64.shr_u
  i32.wrap_i64
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $self
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 27
  local.get $x
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $self
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 26
  local.get $x
  i64.const 40
  i64.shr_u
  i32.wrap_i64
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $self
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 25
  local.get $x
  i64.const 48
  i64.shr_u
  i32.wrap_i64
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $self
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  i32.const 24
  local.get $x
  i64.const 56
  i64.shr_u
  i32.wrap_i64
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $self
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#encodeHex (param $this i32) (result i32)
  (local $res i32)
  (local $i i32)
  (local $hex i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 640
  local.tee $res
  i32.store $0
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   call $~lib/typedarray/Uint8Array#get:length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    local.get $i
    call $~lib/typedarray/Uint8Array#__get
    i32.const 16
    call $~lib/number/U8#toString
    local.tee $hex
    i32.store $0 offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $hex
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    call $~lib/string/String#get:length
    i32.const 2
    i32.rem_s
    i32.const 0
    i32.ne
    if (result i32)
     i32.const 2448
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=4
     local.get $4
     local.get $hex
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=12
     local.get $4
     call $~lib/string/String.__concat
    else
     local.get $hex
    end
    local.tee $hex
    i32.store $0 offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $res
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    local.get $hex
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=12
    local.get $4
    call $~lib/string/String.__concat
    local.tee $res
    i32.store $0
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $res
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.abiEncode (param $method i32) (param $types i32) (result i32)
  (local $enc i32)
  (local $methodSig i32)
  (local $inputOffset i64)
  (local $i i32)
  (local $variableInput i32)
  (local $i|7 i32)
  (local $t i32)
  (local $val i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4336
  local.tee $enc
  i32.store $0
  local.get $method
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0 offset=4
  local.get $10
  call $~lib/string/String#get:length
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $method
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=20
   local.get $10
   i32.const 5296
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=24
   local.get $10
   call $~lib/string/String.__concat
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=12
   local.get $10
   local.get $types
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=28
   local.get $10
   i32.const 5328
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=32
   local.get $10
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#map<~lib/string/String>
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=20
   local.get $10
   i32.const 5360
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=24
   local.get $10
   call $~lib/array/Array<~lib/string/String>#join
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=16
   local.get $10
   call $~lib/string/String.__concat
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   i32.const 5392
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=8
   local.get $10
   call $~lib/string/String.__concat
   local.tee $methodSig
   i32.store $0 offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $enc
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   local.get $methodSig
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=24
   local.get $10
   call $assembly/lib/utils/utils.stringToUint8Array
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=20
   local.get $10
   call $assembly/lib/host/hostapi/crypto.keccak
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=16
   local.get $10
   i32.const 0
   i32.const 4
   call $~lib/typedarray/Uint8Array#slice
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=12
   local.get $10
   call $assembly/lib/utils/utils.uint8ArrayToHex
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=8
   local.get $10
   call $~lib/string/String.__concat
   local.tee $enc
   i32.store $0
  end
  i64.const 0
  local.set $inputOffset
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $types
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length
   i32.lt_s
   if
    local.get $inputOffset
    local.get $types
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0 offset=8
    local.get $10
    local.get $i
    call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0 offset=4
    local.get $10
    call $assembly/lib/abi/ethereum/coders/ethereum.Coder#typeSize@override
    i64.add
    local.set $inputOffset
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 640
  local.tee $variableInput
  i32.store $0 offset=40
  i32.const 0
  local.set $i|7
  loop $for-loop|1
   local.get $i|7
   local.get $types
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=4
   local.get $10
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $types
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0 offset=4
    local.get $10
    local.get $i|7
    call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get
    local.tee $t
    i32.store $0 offset=44
    global.get $~lib/memory/__stack_pointer
    local.get $t
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0 offset=4
    local.get $10
    call $assembly/lib/abi/ethereum/coders/ethereum.Coder#encodeHex@override
    local.tee $val
    i32.store $0 offset=48
    local.get $t
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0 offset=4
    local.get $10
    call $assembly/lib/abi/ethereum/coders/ethereum.Coder#isDynamicType@override
    if
     global.get $~lib/memory/__stack_pointer
     local.get $enc
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $inputOffset
     i32.const 256
     i32.const 0
     call $assembly/lib/abi/ethereum/coders/ethereum.Number.fromU64
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=12
     local.get $10
     call $assembly/lib/abi/ethereum/coders/ethereum.ByteArray#encodeHex@override
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=8
     local.get $10
     call $~lib/string/String.__concat
     local.tee $enc
     i32.store $0
     local.get $inputOffset
     local.get $val
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     call $~lib/string/String#get:length
     i32.const 1
     i32.shr_s
     i64.extend_i32_s
     i64.add
     local.set $inputOffset
     global.get $~lib/memory/__stack_pointer
     local.get $variableInput
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $val
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=8
     local.get $10
     call $~lib/string/String.__concat
     local.tee $variableInput
     i32.store $0 offset=40
    else
     global.get $~lib/memory/__stack_pointer
     local.get $enc
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=4
     local.get $10
     local.get $val
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0 offset=8
     local.get $10
     call $~lib/string/String.__concat
     local.tee $enc
     i32.store $0
    end
    local.get $i|7
    i32.const 1
    i32.add
    local.set $i|7
    br $for-loop|1
   end
  end
  local.get $enc
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0 offset=4
  local.get $10
  local.get $variableInput
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0 offset=8
  local.get $10
  call $~lib/string/String.__concat
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $assembly/lib/utils/utils.hexToUint8Array (param $s i32) (result i32)
  (local $outPtr i32)
  (local $out i32)
  (local $data i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/string/String#get:length
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.ne
  if
   i32.const 5744
   i32.const 5808
   i32.const 45
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/basic_types/AString#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $assembly/lib/types/basic_types/AString#store
  call $assembly/lib/utils/__Util__.fromHexString
  local.set $outPtr
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
  local.tee $out
  i32.store $0 offset=8
  local.get $out
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $outPtr
  call $assembly/lib/types/basic_types/AUint8Array#load
  global.get $~lib/memory/__stack_pointer
  local.get $out
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $assembly/lib/types/basic_types/AUint8Array#get
  local.tee $data
  i32.store $0 offset=12
  local.get $data
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/typedarray/Uint8Array#get:length
  i32.const 0
  i32.eq
  if (result i32)
   local.get $s
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   call $~lib/string/String#get:length
   i32.const 0
   i32.ne
  else
   i32.const 0
  end
  if
   i32.const 5744
   i32.const 5808
   i32.const 53
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $data
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/host/abi/Abi.encodeAddress (param $val i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $s i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 640
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  global.get $~lib/memory/__stack_pointer
  i32.const 1
  i32.const 2
  i32.const 51
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $1
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load $0 offset=4
  local.tee $2
  i32.store $0 offset=12
  local.get $1
  i32.const 0
  local.get $val
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__set
  local.get $1
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/abi/ethereum/coders/ethereum.abiEncode
  local.tee $s
  i32.store $0 offset=16
  local.get $s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $assembly/lib/utils/utils.hexToUint8Array
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/utils/utils.concatUint8Arrays (param $a i32) (param $b i32) (result i32)
  (local $result i32)
  (local $i i32)
  (local $i|4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $a
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/typedarray/Uint8Array#get:length
  local.get $b
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/typedarray/Uint8Array#get:length
  i32.add
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $result
  i32.store $0 offset=4
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $a
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0
   local.get $5
   call $~lib/typedarray/Uint8Array#get:length
   i32.lt_s
   if
    local.get $result
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0
    local.get $5
    local.get $i
    local.get $a
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0 offset=8
    local.get $5
    local.get $i
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $i|4
  loop $for-loop|1
   local.get $i|4
   local.get $b
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0
   local.get $5
   call $~lib/typedarray/Uint8Array#get:length
   i32.lt_s
   if
    local.get $result
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0
    local.get $5
    local.get $a
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0 offset=8
    local.get $5
    call $~lib/typedarray/Uint8Array#get:length
    local.get $i|4
    i32.add
    local.get $b
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0 offset=8
    local.get $5
    local.get $i|4
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $i|4
    i32.const 1
    i32.add
    local.set $i|4
    br $for-loop|1
   end
  end
  local.get $result
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 1088
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $value
  i32.store $0 offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 5424
   i32.const 1088
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#constructor (param $this i32) (param $account i32) (param $change i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 50
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#set:account
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#set:change
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $account
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#set:account
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $change
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#set:change
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#before (param $this i32) (param $key i32) (result i32)
  (local $encoded i32)
  (local $changes i32)
  (local $account i32)
  (local $valueHex i32)
  (local $value i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 48
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  local.get $key
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  call $assembly/lib/host/abi/Abi.encodeAddress
  local.tee $encoded
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=20
  local.get $7
  call $assembly/aspect/honeypot/HoneyPot.balances#get:ctx
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=20
  local.get $7
  call $assembly/aspect/honeypot/HoneyPot.balances#get:addr
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=8
  local.get $7
  i32.const 5872
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=12
  local.get $7
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=28
  local.get $7
  call $assembly/aspect/honeypot/HoneyPot.balances#get:prefix
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=20
  local.get $7
  local.get $encoded
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=24
  local.get $7
  call $assembly/lib/utils/utils.concatUint8Arrays
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=16
  local.get $7
  call $assembly/lib/context/TraceCtx#getStateChanges@override
  local.tee $changes
  i32.store $0 offset=32
  local.get $changes
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=8
  local.get $7
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#get:all
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:length
  i32.const 0
  i32.eq
  if
   i32.const 0
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $changes
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=12
  local.get $7
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#get:all
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=8
  local.get $7
  i32.const 0
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#__get
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#get:account
  local.tee $account
  i32.store $0 offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $changes
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=16
  local.get $7
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#get:all
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=12
  local.get $7
  i32.const 0
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#__get
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=8
  local.get $7
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#get:value
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  call $assembly/lib/utils/utils.uint8ArrayToHex
  local.tee $valueHex
  i32.store $0 offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $valueHex
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  i32.const 16
  call $assembly/lib/types/bigint/BigInt.fromString
  local.tee $value
  i32.store $0 offset=44
  i32.const 0
  local.get $account
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=8
  local.get $7
  local.get $value
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=12
  local.get $7
  call $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#constructor
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $assembly/lib/types/bigint/BigInt.fromDigits (param $digits i32) (param $isNegative i32) (param $n i32) (param $minSize i32) (result i32)
  (local $size i32)
  (local $extra i32)
  (local $res i32)
  (local $i i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $minSize
  local.set $size
  local.get $size
  local.get $digits
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  call $~lib/typedarray/Uint32Array#get:length
  i32.lt_s
  if
   local.get $digits
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0
   local.get $8
   call $~lib/typedarray/Uint32Array#get:length
   local.set $size
  end
  local.get $size
  global.get $assembly/lib/types/bigint/BigInt.precision
  i32.rem_s
  local.set $extra
  local.get $extra
  i32.const 0
  i32.ne
  if
   local.get $size
   global.get $assembly/lib/types/bigint/BigInt.precision
   local.get $extra
   i32.sub
   i32.add
   local.set $size
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $size
  local.get $isNegative
  call $assembly/lib/types/bigint/BigInt#constructor
  local.tee $res
  i32.store $0 offset=4
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $digits
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0
   local.get $8
   call $~lib/typedarray/Uint32Array#get:length
   i32.lt_s
   if
    local.get $res
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0
    local.get $8
    local.get $i
    local.get $digits
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=8
    local.get $8
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $res
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  local.get $n
  call $assembly/lib/types/bigint/BigInt#set:n
  local.get $res
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $assembly/lib/types/bigint/BigInt.fromDigits@varargs (param $digits i32) (param $isNegative i32) (param $n i32) (param $minSize i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  block $3of3
   block $2of3
    block $1of3
     block $0of3
      block $outOfRange
       global.get $~argumentsLength
       i32.const 1
       i32.sub
       br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
      end
      unreachable
     end
     i32.const 0
     local.set $isNegative
    end
    local.get $digits
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    local.get $4
    call $~lib/typedarray/Uint32Array#get:length
    local.set $n
   end
   local.get $digits
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   call $~lib/typedarray/Uint32Array#get:length
   local.set $minSize
  end
  local.get $digits
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $isNegative
  local.get $n
  local.get $minSize
  call $assembly/lib/types/bigint/BigInt.fromDigits
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/lib/types/bigint/BigInt#abs (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $assembly/lib/types/bigint/BigInt#get:d
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.const 3
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/bigint/BigInt.fromDigits@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/lib/types/bigint/BigInt#compareTo (param $this i32) (param $other i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  if (result i32)
   local.get $other
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   call $assembly/lib/types/bigint/BigInt#get:isNeg
   i32.eqz
  else
   i32.const 0
  end
  if
   i32.const -1
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  else
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   call $assembly/lib/types/bigint/BigInt#get:isNeg
   i32.eqz
   if (result i32)
    local.get $other
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    local.get $2
    call $assembly/lib/types/bigint/BigInt#get:isNeg
   else
    i32.const 0
   end
   if
    i32.const 1
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    return
   else
    local.get $this
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    local.get $2
    call $assembly/lib/types/bigint/BigInt#get:isNeg
    if
     local.get $other
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0
     local.get $2
     local.get $this
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=4
     local.get $2
     call $assembly/lib/types/bigint/BigInt#magCompareTo
     local.set $2
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     return
    else
     local.get $this
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0
     local.get $2
     local.get $other
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=4
     local.get $2
     call $assembly/lib/types/bigint/BigInt#magCompareTo
     local.set $2
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     return
    end
    unreachable
   end
   unreachable
  end
  unreachable
 )
 (func $assembly/lib/types/bigint/BigInt#eq<assembly/lib/types/bigint/BigInt> (param $this i32) (param $other i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $other
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/bigint/BigInt#compareTo
  i32.const 0
  i32.eq
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/types/bigint/BigInt#ne<assembly/lib/types/bigint/BigInt> (param $this i32) (param $other i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $other
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt>
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/bigint/BigInt#eq<assembly/lib/types/bigint/BigInt>
  i32.eqz
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/types/bigint/BigInt#modInt (param $this i32) (param $b i32) (result i32)
  (local $pow2Bit i32)
  (local $r i64)
  (local $val i32)
  (local $i i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $b
  i32.const 0
  i32.eq
  if
   i32.const 6096
   i32.const 5056
   i32.const 1293
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $b
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $b
  call $assembly/lib/types/bigint/BigInt.isPow2
  local.set $pow2Bit
  local.get $pow2Bit
  i32.const 0
  i32.ne
  if
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=4
   local.get $6
   call $assembly/lib/types/bigint/BigInt#get:d
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   i32.const 0
   call $~lib/typedarray/Uint32Array#__get
   i32.const 1
   local.get $pow2Bit
   i32.shl
   i32.const 1
   i32.sub
   i32.and
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i64.const 0
  local.set $r
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.const 1
  i32.sub
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 0
   i32.ge_s
   if
    local.get $r
    global.get $assembly/lib/types/bigint/BigInt.p
    i64.extend_i32_s
    i64.shl
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    i64.extend_i32_u
    i64.or
    local.set $r
    local.get $r
    local.get $b
    i64.extend_i32_u
    i64.ge_u
    if
     local.get $r
     local.get $b
     i64.extend_i32_u
     i64.div_u
     i32.wrap_i64
     local.set $val
     local.get $r
     local.get $val
     i64.extend_i32_u
     local.get $b
     i64.extend_i32_u
     i64.mul
     i64.sub
     local.set $r
    else
     i32.const 0
     local.set $val
    end
    local.get $i
    i32.const 1
    i32.sub
    local.set $i
    br $for-loop|0
   end
  end
  local.get $r
  i32.wrap_i64
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/lib/types/bigint/BigInt#copy (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $assembly/lib/types/bigint/BigInt#get:d
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.const 3
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/bigint/BigInt.fromDigits@varargs
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/lib/types/bigint/BigInt#divBasisPow (param $this i32) (param $b i32)
  (local $i i32)
  (local $j i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $b
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $assembly/lib/types/bigint/BigInt#get:n
  local.get $b
  i32.le_s
  if
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   i32.const 0
   call $assembly/lib/types/bigint/BigInt#set:n
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 0
  local.set $i
  local.get $b
  local.set $j
  loop $for-loop|0
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   call $assembly/lib/types/bigint/BigInt#get:n
   local.get $b
   i32.sub
   i32.lt_s
   if
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    local.get $4
    local.get $i
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=8
    local.get $4
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    local.get $j
    call $~lib/typedarray/Uint32Array#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    local.get $j
    i32.const 1
    i32.add
    local.set $j
    br $for-loop|0
   end
  end
  loop $for-loop|1
   local.get $i
   local.get $this
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   local.get $4
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.lt_s
   if
    local.get $this
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=4
    local.get $4
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0
    local.get $4
    local.get $i
    i32.const 0
    call $~lib/typedarray/Uint32Array#__set
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|1
   end
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $assembly/lib/types/bigint/BigInt#get:n
  local.get $b
  i32.sub
  call $assembly/lib/types/bigint/BigInt#set:n
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/bigint/BigInt#divPowTwo (param $this i32) (param $k i32) (result i32)
  (local $res i32)
  (local $remK i32)
  (local $mask i32)
  (local $shift i32)
  (local $r i32)
  (local $i i32)
  (local $rr i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $assembly/lib/types/bigint/BigInt#copy
  local.tee $res
  i32.store $0 offset=4
  local.get $k
  i32.const 0
  i32.le_s
  if
   local.get $res
   local.set $9
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $9
   return
  end
  local.get $k
  global.get $assembly/lib/types/bigint/BigInt.p
  i32.ge_s
  if
   local.get $res
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   local.get $k
   global.get $assembly/lib/types/bigint/BigInt.p
   i32.div_s
   call $assembly/lib/types/bigint/BigInt#divBasisPow
  end
  local.get $k
  global.get $assembly/lib/types/bigint/BigInt.p
  i32.rem_s
  local.set $remK
  local.get $remK
  i32.const 0
  i32.ne
  if
   i32.const 1
   local.get $remK
   i32.shl
   i32.const 1
   i32.sub
   local.set $mask
   global.get $assembly/lib/types/bigint/BigInt.p
   local.get $remK
   i32.sub
   local.set $shift
   i32.const 0
   local.set $r
   local.get $res
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store $0
   local.get $9
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.const 1
   i32.sub
   local.set $i
   loop $for-loop|0
    local.get $i
    i32.const 0
    i32.ge_s
    if
     local.get $res
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=8
     local.get $9
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0
     local.get $9
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     local.get $mask
     i32.and
     local.set $rr
     local.get $res
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=8
     local.get $9
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0
     local.get $9
     local.get $i
     local.get $res
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=12
     local.get $9
     call $assembly/lib/types/bigint/BigInt#get:d
     local.set $9
     global.get $~lib/memory/__stack_pointer
     local.get $9
     i32.store $0 offset=8
     local.get $9
     local.get $i
     call $~lib/typedarray/Uint32Array#__get
     local.get $remK
     i32.shr_u
     local.get $r
     local.get $shift
     i32.shl
     i32.or
     call $~lib/typedarray/Uint32Array#__set
     local.get $rr
     local.set $r
     local.get $i
     i32.const 1
     i32.sub
     local.set $i
     br $for-loop|0
    end
   end
  end
  local.get $res
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
  local.get $res
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $assembly/lib/types/bigint/BigInt#inplaceDivInt (param $this i32) (param $b i32) (result i32)
  (local $pow2Bit i32)
  (local $r i64)
  (local $val i32)
  (local $i i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $b
  i32.const 0
  i32.eq
  if
   i32.const 6096
   i32.const 5056
   i32.const 1270
   i32.const 21
   call $~lib/builtins/abort
   unreachable
  end
  local.get $b
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $assembly/lib/types/bigint/BigInt#get:n
   i32.const 0
   i32.eq
  end
  if
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  local.get $b
  call $assembly/lib/types/bigint/BigInt.isPow2
  local.set $pow2Bit
  local.get $pow2Bit
  i32.const 0
  i32.ne
  if
   local.get $this
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   local.get $pow2Bit
   call $assembly/lib/types/bigint/BigInt#divPowTwo
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  i64.const 0
  local.set $r
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.const 1
  i32.sub
  local.set $i
  loop $for-loop|0
   local.get $i
   i32.const 0
   i32.ge_s
   if
    local.get $r
    global.get $assembly/lib/types/bigint/BigInt.p
    i64.extend_i32_s
    i64.shl
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    local.get $i
    call $~lib/typedarray/Uint32Array#__get
    i64.extend_i32_u
    i64.or
    local.set $r
    local.get $r
    local.get $b
    i64.extend_i32_u
    i64.ge_u
    if
     local.get $r
     local.get $b
     i64.extend_i32_u
     i64.div_u
     i32.wrap_i64
     local.set $val
     local.get $r
     local.get $val
     i64.extend_i32_u
     local.get $b
     i64.extend_i32_u
     i64.mul
     i64.sub
     local.set $r
    else
     i32.const 0
     local.set $val
    end
    local.get $this
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    local.get $i
    local.get $val
    call $~lib/typedarray/Uint32Array#__set
    local.get $i
    i32.const 1
    i32.sub
    local.set $i
    br $for-loop|0
   end
  end
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/array/Array<i32>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<i32>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 0
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<i32>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $len
  call $~lib/array/Array<i32>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/array/Array<i32>#reverse (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/array/Array<i32>#get:dataStart
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/array/Array<i32>#get:length_
  call $~lib/util/bytes/REVERSE<i32>
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<i32>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $~lib/array/Array<i32>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/string/String.fromCharCodes (param $units i32) (result i32)
  (local $length i32)
  (local $out i32)
  (local $ptr i32)
  (local $i i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $units
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<i32>#get:length
  local.set $length
  global.get $~lib/memory/__stack_pointer
  local.get $length
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store $0 offset=4
  local.get $units
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<i32>#get:dataStart
  local.set $ptr
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    local.get $out
    local.get $i
    i32.const 1
    i32.shl
    i32.add
    local.get $ptr
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    i32.store16 $0
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $out
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $assembly/lib/types/bigint/BigInt#toString (param $this i32) (param $radix i32) (result i32)
  (local $res i32)
  (local $t i32)
  (local $zero i32)
  (local $5 i32)
  (local $6 i32)
  (local $codes i32)
  (local $radixU i32)
  (local $d i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill $0
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 16
   i32.gt_s
  end
  if
   i32.const 5936
   i32.const 5056
   i32.const 254
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $assembly/lib/types/bigint/BigInt#get:n
  i32.const 0
  i32.eq
  if
   i32.const 2448
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  if (result i32)
   i32.const 5136
  else
   i32.const 640
  end
  local.tee $res
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $assembly/lib/types/bigint/BigInt#abs
  local.tee $t
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $assembly/lib/types/bigint/BigInt.fromUInt16
  local.tee $zero
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 6064
  call $~lib/rt/__newArray
  local.tee $codes
  i32.store $0 offset=16
  local.get $radix
  local.set $radixU
  loop $while-continue|0
   local.get $t
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0
   local.get $10
   local.get $zero
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store $0 offset=20
   local.get $10
   call $assembly/lib/types/bigint/BigInt#ne<assembly/lib/types/bigint/BigInt>
   if
    local.get $t
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0
    local.get $10
    local.get $radixU
    call $assembly/lib/types/bigint/BigInt#modInt
    local.set $d
    global.get $~lib/memory/__stack_pointer
    local.get $t
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store $0
    local.get $10
    local.get $radixU
    call $assembly/lib/types/bigint/BigInt#inplaceDivInt
    local.tee $t
    i32.store $0 offset=8
    local.get $d
    i32.const 10
    i32.lt_s
    if
     local.get $codes
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0
     local.get $10
     local.get $d
     i32.const 48
     i32.add
     call $~lib/array/Array<i32>#push
     drop
    else
     local.get $codes
     local.set $10
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store $0
     local.get $10
     local.get $d
     i32.const 87
     i32.add
     call $~lib/array/Array<i32>#push
     drop
    end
    br $while-continue|0
   end
  end
  local.get $codes
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  call $~lib/array/Array<i32>#reverse
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $res
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0
  local.get $10
  local.get $codes
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0 offset=24
  local.get $10
  call $~lib/string/String.fromCharCodes
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store $0 offset=20
  local.get $10
  call $~lib/string/String.__concat
  local.tee $res
  i32.store $0 offset=4
  local.get $res
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $assembly/lib/host/hostapi/Context.setContext (param $key i32) (param $value i32) (result i32)
  (local $inputKey i32)
  (local $inPtr i32)
  (local $inputValue i32)
  (local $ptrValue i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $inputKey
  i32.store $0 offset=4
  local.get $inputKey
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=8
  local.get $6
  local.get $key
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/basic_types/AString#set
  local.get $inputKey
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=8
  local.get $6
  call $assembly/lib/types/basic_types/AString#store
  local.set $inPtr
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $inputValue
  i32.store $0 offset=12
  local.get $inputValue
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=8
  local.get $6
  local.get $value
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0
  local.get $6
  call $assembly/lib/types/basic_types/AString#set
  local.get $inputValue
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=8
  local.get $6
  call $assembly/lib/types/basic_types/AString#store
  local.set $ptrValue
  local.get $inPtr
  local.get $ptrValue
  call $assembly/lib/host/hostapi/__HostApi__.setContext
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/lib/context/PostContractCallCtx#setContext (param $this i32) (param $key i32) (param $value i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $key
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $assembly/lib/host/hostapi/Context.setContext
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/lib/types/bigint/BigInt#sub<assembly/lib/types/bigint/BigInt> (param $this i32) (param $other i32) (result i32)
  (local $subtrahend i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $other
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt>
  local.tee $subtrahend
  i32.store $0 offset=4
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  i32.const 0
  i32.ne
  local.get $subtrahend
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  i32.const 0
  i32.ne
  i32.ne
  if
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $subtrahend
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $3
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=12
   local.get $3
   call $assembly/lib/types/bigint/BigInt#get:isNeg
   call $assembly/lib/types/bigint/BigInt#_add
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  else
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $subtrahend
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $3
   call $assembly/lib/types/bigint/BigInt#magCompareTo
   i32.const 0
   i32.ge_s
   if
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0
    local.get $3
    local.get $subtrahend
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=12
    local.get $3
    call $assembly/lib/types/bigint/BigInt#get:isNeg
    call $assembly/lib/types/bigint/BigInt#_sub
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   else
    local.get $subtrahend
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0
    local.get $3
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=12
    local.get $3
    call $assembly/lib/types/bigint/BigInt#get:isNeg
    i32.eqz
    call $assembly/lib/types/bigint/BigInt#_sub
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   end
   unreachable
  end
  unreachable
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#diff (param $this i32) (param $key i32) (result i32)
  (local $encoded i32)
  (local $changes i32)
  (local $beforeHex i32)
  (local $before i32)
  (local $afterHex i32)
  (local $after i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 52
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  local.get $key
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  call $assembly/lib/host/abi/Abi.encodeAddress
  local.tee $encoded
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=20
  local.get $8
  call $assembly/aspect/honeypot/HoneyPot.balances#get:ctx
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=20
  local.get $8
  call $assembly/aspect/honeypot/HoneyPot.balances#get:addr
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  i32.const 5872
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=12
  local.get $8
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=28
  local.get $8
  call $assembly/aspect/honeypot/HoneyPot.balances#get:prefix
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=20
  local.get $8
  local.get $encoded
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=24
  local.get $8
  call $assembly/lib/utils/utils.concatUint8Arrays
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=16
  local.get $8
  call $assembly/lib/context/TraceCtx#getStateChanges@override
  local.tee $changes
  i32.store $0 offset=32
  local.get $changes
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#get:all
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:length
  i32.const 2
  i32.lt_s
  if
   i32.const 0
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $changes
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=16
  local.get $8
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#get:all
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=12
  local.get $8
  i32.const 0
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#__get
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#get:value
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  call $assembly/lib/utils/utils.uint8ArrayToHex
  local.tee $beforeHex
  i32.store $0 offset=36
  global.get $~lib/memory/__stack_pointer
  local.get $beforeHex
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  i32.const 16
  call $assembly/lib/types/bigint/BigInt.fromString
  local.tee $before
  i32.store $0 offset=40
  global.get $~lib/memory/__stack_pointer
  local.get $changes
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=16
  local.get $8
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#get:all
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=12
  local.get $8
  local.get $changes
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=20
  local.get $8
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#get:all
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=16
  local.get $8
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:length
  i32.const 1
  i32.sub
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#__get
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#get:value
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  call $assembly/lib/utils/utils.uint8ArrayToHex
  local.tee $afterHex
  i32.store $0 offset=44
  global.get $~lib/memory/__stack_pointer
  local.get $afterHex
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  i32.const 16
  call $assembly/lib/types/bigint/BigInt.fromString
  local.tee $after
  i32.store $0 offset=48
  local.get $after
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0
  local.get $8
  local.get $before
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store $0 offset=8
  local.get $8
  call $assembly/lib/types/bigint/BigInt#sub<assembly/lib/types/bigint/BigInt>
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt|null> (param $val i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $val
  i32.const 0
  i32.ne
  if
   local.get $val
   local.set $1
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 6224
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  i32.const 6304
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/string/String.__concat
  i32.const 5056
  i32.const 62
  i32.const 9
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/types/bigint/BigInt#add<assembly/lib/types/bigint/BigInt|null> (param $this i32) (param $other i32) (result i32)
  (local $addend i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $other
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt|null>
  local.tee $addend
  i32.store $0 offset=4
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  i32.const 0
  i32.ne
  local.get $addend
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $assembly/lib/types/bigint/BigInt#get:isNeg
  i32.const 0
  i32.ne
  i32.eq
  if
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $addend
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $3
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=12
   local.get $3
   call $assembly/lib/types/bigint/BigInt#get:isNeg
   call $assembly/lib/types/bigint/BigInt#_add
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  else
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   local.get $addend
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $3
   call $assembly/lib/types/bigint/BigInt#magCompareTo
   i32.const 0
   i32.lt_s
   if
    local.get $addend
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0
    local.get $3
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    local.get $addend
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=12
    local.get $3
    call $assembly/lib/types/bigint/BigInt#get:isNeg
    call $assembly/lib/types/bigint/BigInt#_sub
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   else
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0
    local.get $3
    local.get $addend
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=8
    local.get $3
    local.get $this
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0 offset=12
    local.get $3
    call $assembly/lib/types/bigint/BigInt#get:isNeg
    call $assembly/lib/types/bigint/BigInt#_sub
    local.set $3
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $3
    return
   end
   unreachable
  end
  unreachable
 )
 (func $assembly/lib/context/PostContractCallCtx#getProperty (param $this i32) (param $key i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $key
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/host/hostapi/Context.getProperty
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/host/hostapi/Context.currentBalance (param $acct i32) (result i32)
  (local $input i32)
  (local $balancePtr i32)
  (local $balanceStr i32)
  (local $big i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  i32.const 0
  local.get $acct
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $assembly/lib/types/basic_types/AString#constructor
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/types/basic_types/AString#store
  local.set $input
  local.get $input
  call $assembly/lib/host/hostapi/__HostApi__.currentBalance
  local.set $balancePtr
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $balanceStr
  i32.store $0 offset=12
  local.get $balanceStr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  local.get $balancePtr
  call $assembly/lib/types/basic_types/AString#load
  local.get $balanceStr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=4
  local.get $5
  call $assembly/lib/types/basic_types/AString#get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  i32.const 640
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $~lib/string/String.__eq
  if
   i32.const 0
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $balanceStr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $assembly/lib/types/basic_types/AString#get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/host/hostapi/Context.getProperty
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $balanceStr
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  call $assembly/lib/types/basic_types/AString#get
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  i32.const 16
  call $assembly/lib/types/bigint/BigInt.fromString
  local.tee $big
  i32.store $0 offset=16
  local.get $big
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0 offset=8
  local.get $5
  i32.const 10
  call $assembly/lib/types/bigint/BigInt#toString
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $assembly/lib/host/hostapi/Context.getProperty
  drop
  local.get $big
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $assembly/lib/context/PostContractCallCtx#currentBalance (param $this i32) (param $acct i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $acct
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/host/hostapi/Context.currentBalance
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/lib/host/debug/debug.log (param $data i32)
  (local $dataPtr i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  i32.const 0
  local.get $data
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $assembly/lib/types/basic_types/AString#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/basic_types/AString#store
  local.set $dataPtr
  local.get $dataPtr
  call $assembly/lib/host/debug/__debug__.log
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/bigint/BigInt.fromInt32 (param $val i32) (result i32)
  (local $isNeg i32)
  (local $res i32)
  (local $unsignedDigit i32)
  (local $i i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $val
  i32.const 0
  i32.lt_s
  local.set $isNeg
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  global.get $assembly/lib/types/bigint/BigInt.precision
  local.get $isNeg
  call $assembly/lib/types/bigint/BigInt#constructor
  local.tee $res
  i32.store $0
  local.get $isNeg
  if (result i32)
   i32.const -1
   local.get $val
   i32.mul
  else
   local.get $val
  end
  local.set $unsignedDigit
  i32.const 0
  local.set $i
  loop $while-continue|0
   local.get $unsignedDigit
   i32.const 0
   i32.ne
   if
    local.get $res
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=8
    local.get $6
    call $assembly/lib/types/bigint/BigInt#get:d
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    local.get $i
    local.tee $5
    i32.const 1
    i32.add
    local.set $i
    local.get $5
    local.get $unsignedDigit
    global.get $assembly/lib/types/bigint/BigInt.digitMask
    i32.and
    call $~lib/typedarray/Uint32Array#__set
    local.get $unsignedDigit
    global.get $assembly/lib/types/bigint/BigInt.p
    i32.shr_u
    local.set $unsignedDigit
    br $while-continue|0
   end
  end
  local.get $res
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  local.get $i
  call $assembly/lib/types/bigint/BigInt#set:n
  local.get $res
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
  local.get $res
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#postContractCall (param $this i32) (param $ctx i32) (result i32)
  (local $ret i32)
  (local $message i32)
  (local $4 i32)
  (local $balances i32)
  (local $BalanceCtxKey i32)
  (local $originalBalanceCtx i32)
  (local $8 i32)
  (local $fromAddr i32)
  (local $originalBalance i32)
  (local $fromBeforeBalance i32)
  (local $fromBalanceChange i32)
  (local $BalanceChangeCtxKey i32)
  (local $fromChangeBalance i32)
  (local $last_change_from_balance i32)
  (local $resultBalance i32)
  (local $honeyPotAddr i32)
  (local $contractBalance i32)
  (local $19 i32)
  (local $fromBalance i32)
  (local $21 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 172
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 172
  memory.fill $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0
  local.get $21
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.tee $ret
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 640
  local.tee $message
  i32.store $0 offset=8
  local.get $ctx
  local.set $21
  global.get $~lib/memory/__stack_pointer
  local.get $21
  i32.store $0 offset=12
  local.get $21
  call $assembly/lib/context/PostContractCallCtx#get:tx
  i32.const 0
  i32.ne
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   global.get $~lib/memory/__stack_pointer
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=20
   local.get $21
   call $assembly/lib/context/PostContractCallCtx#get:tx
   local.tee $4
   i32.store $0 offset=24
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 4032
    i32.const 4160
    i32.const 85
    i32.const 55
    call $~lib/builtins/abort
    unreachable
   end
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0
   local.get $21
   call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#get:to
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0
   local.get $21
   i32.const 2
   global.set $~argumentsLength
   i32.const 0
   call $assembly/aspect/honeypot/HoneyPot.balances#constructor@varargs
   local.tee $balances
   i32.store $0 offset=28
   global.get $~lib/memory/__stack_pointer
   i32.const 4272
   local.tee $BalanceCtxKey
   i32.store $0 offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   local.get $BalanceCtxKey
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/lib/context/PostContractCallCtx#getContext
   local.tee $originalBalanceCtx
   i32.store $0 offset=36
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0
   local.get $21
   call $assembly/lib/context/PostContractCallCtx#get:tx
   local.tee $8
   i32.store $0 offset=40
   local.get $8
   if (result i32)
    local.get $8
   else
    i32.const 4032
    i32.const 4160
    i32.const 92
    i32.const 59
    call $~lib/builtins/abort
    unreachable
   end
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#get:from
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   call $assembly/lib/abi/ethereum/coders/ethereum.Address.fromHexString
   local.tee $fromAddr
   i32.store $0 offset=44
   global.get $~lib/memory/__stack_pointer
   call $assembly/lib/types/bigint/BigInt.get:ZERO
   local.tee $originalBalance
   i32.store $0 offset=48
   local.get $originalBalanceCtx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   i32.const 640
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $~lib/string/String.__ne
   if
    global.get $~lib/memory/__stack_pointer
    local.get $originalBalanceCtx
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=12
    local.get $21
    i32.const 10
    call $assembly/lib/types/bigint/BigInt.fromString
    local.tee $originalBalance
    i32.store $0 offset=48
   else
    global.get $~lib/memory/__stack_pointer
    local.get $balances
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=12
    local.get $21
    local.get $fromAddr
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=16
    local.get $21
    call $assembly/aspect/honeypot/HoneyPot.balances#before
    local.tee $fromBeforeBalance
    i32.store $0 offset=52
    local.get $fromBeforeBalance
    if
     local.get $ctx
     local.set $21
     global.get $~lib/memory/__stack_pointer
     local.get $21
     i32.store $0 offset=12
     local.get $21
     local.get $BalanceCtxKey
     local.set $21
     global.get $~lib/memory/__stack_pointer
     local.get $21
     i32.store $0 offset=16
     local.get $21
     local.get $fromBeforeBalance
     local.set $21
     global.get $~lib/memory/__stack_pointer
     local.get $21
     i32.store $0 offset=56
     local.get $21
     call $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#get:change
     local.set $21
     global.get $~lib/memory/__stack_pointer
     local.get $21
     i32.store $0 offset=20
     local.get $21
     i32.const 10
     call $assembly/lib/types/bigint/BigInt#toString
     local.set $21
     global.get $~lib/memory/__stack_pointer
     local.get $21
     i32.store $0
     local.get $21
     call $assembly/lib/context/PostContractCallCtx#setContext
     drop
     global.get $~lib/memory/__stack_pointer
     local.get $fromBeforeBalance
     local.set $21
     global.get $~lib/memory/__stack_pointer
     local.get $21
     i32.store $0 offset=12
     local.get $21
     call $assembly/lib/states/trace/State<assembly/lib/types/bigint/BigInt>#get:change
     local.tee $originalBalance
     i32.store $0 offset=48
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.get $balances
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   local.get $fromAddr
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/aspect/honeypot/HoneyPot.balances#diff
   local.tee $fromBalanceChange
   i32.store $0 offset=60
   local.get $fromBalanceChange
   i32.eqz
   if
    local.get $ret
    local.set $21
    global.get $~lib/memory/__stack_pointer
    i32.const 172
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $21
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 6144
   local.tee $BalanceChangeCtxKey
   i32.store $0 offset=64
   global.get $~lib/memory/__stack_pointer
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   local.get $BalanceChangeCtxKey
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/lib/context/PostContractCallCtx#getContext
   local.tee $fromChangeBalance
   i32.store $0 offset=68
   global.get $~lib/memory/__stack_pointer
   call $assembly/lib/types/bigint/BigInt.get:ZERO
   local.tee $last_change_from_balance
   i32.store $0 offset=72
   local.get $fromChangeBalance
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   i32.const 640
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $~lib/string/String.__ne
   if
    global.get $~lib/memory/__stack_pointer
    local.get $fromChangeBalance
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=12
    local.get $21
    i32.const 10
    call $assembly/lib/types/bigint/BigInt.fromString
    local.tee $last_change_from_balance
    i32.store $0 offset=72
   end
   global.get $~lib/memory/__stack_pointer
   local.get $last_change_from_balance
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   local.get $fromBalanceChange
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/lib/types/bigint/BigInt#add<assembly/lib/types/bigint/BigInt|null>
   local.tee $last_change_from_balance
   i32.store $0 offset=72
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   local.get $BalanceChangeCtxKey
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   local.get $last_change_from_balance
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=20
   local.get $21
   i32.const 10
   call $assembly/lib/types/bigint/BigInt#toString
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0
   local.get $21
   call $assembly/lib/context/PostContractCallCtx#setContext
   drop
   global.get $~lib/memory/__stack_pointer
   local.get $originalBalance
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   local.get $last_change_from_balance
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/lib/types/bigint/BigInt#add<assembly/lib/types/bigint/BigInt>
   local.tee $resultBalance
   i32.store $0 offset=76
   global.get $~lib/memory/__stack_pointer
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   i32.const 6336
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/lib/context/PostContractCallCtx#getProperty
   local.tee $honeyPotAddr
   i32.store $0 offset=80
   global.get $~lib/memory/__stack_pointer
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   local.get $honeyPotAddr
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/lib/context/PostContractCallCtx#currentBalance
   local.tee $contractBalance
   i32.store $0 offset=84
   global.get $~lib/memory/__stack_pointer
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   global.get $~lib/memory/__stack_pointer
   local.get $ctx
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=20
   local.get $21
   call $assembly/lib/context/PostContractCallCtx#get:tx
   local.tee $19
   i32.store $0 offset=88
   local.get $19
   if (result i32)
    local.get $19
   else
    i32.const 4032
    i32.const 4160
    i32.const 137
    i32.const 50
    call $~lib/builtins/abort
    unreachable
   end
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0
   local.get $21
   call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#get:from
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/lib/context/PostContractCallCtx#currentBalance
   local.tee $fromBalance
   i32.store $0 offset=92
   local.get $contractBalance
   if (result i32)
    local.get $fromBalance
   else
    i32.const 0
   end
   if
    i32.const 6384
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=160
    local.get $21
    local.get $originalBalance
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=168
    local.get $21
    i32.const 10
    call $assembly/lib/types/bigint/BigInt#toString
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=164
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=152
    local.get $21
    i32.const 6448
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=156
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=144
    local.get $21
    local.get $fromBalanceChange
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=152
    local.get $21
    i32.const 10
    call $assembly/lib/types/bigint/BigInt#toString
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=148
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=136
    local.get $21
    i32.const 6512
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=140
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=128
    local.get $21
    local.get $last_change_from_balance
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=136
    local.get $21
    i32.const 10
    call $assembly/lib/types/bigint/BigInt#toString
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=132
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=120
    local.get $21
    i32.const 6592
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=124
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=112
    local.get $21
    local.get $resultBalance
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=120
    local.get $21
    i32.const 10
    call $assembly/lib/types/bigint/BigInt#toString
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=116
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=104
    local.get $21
    i32.const 6656
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=108
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=96
    local.get $21
    local.get $contractBalance
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=104
    local.get $21
    i32.const 10
    call $assembly/lib/types/bigint/BigInt#toString
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=100
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=20
    local.get $21
    i32.const 6752
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=56
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=16
    local.get $21
    local.get $fromBalance
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=20
    local.get $21
    i32.const 10
    call $assembly/lib/types/bigint/BigInt#toString
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0
    local.get $21
    call $~lib/string/String.__concat
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=12
    local.get $21
    call $assembly/lib/host/debug/debug.log
   end
   local.get $resultBalance
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=12
   local.get $21
   i32.const 0
   call $assembly/lib/types/bigint/BigInt.fromInt32
   local.set $21
   global.get $~lib/memory/__stack_pointer
   local.get $21
   i32.store $0 offset=16
   local.get $21
   call $assembly/lib/types/bigint/BigInt#compareTo
   i32.const 0
   i32.lt_s
   if
    local.get $ret
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=12
    local.get $21
    i32.const 0
    call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#set:success
    local.get $ret
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=12
    local.get $21
    i32.const 6848
    local.set $21
    global.get $~lib/memory/__stack_pointer
    local.get $21
    i32.store $0 offset=16
    local.get $21
    call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#set:message
    local.get $ret
    local.set $21
    global.get $~lib/memory/__stack_pointer
    i32.const 172
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $21
    return
   end
  end
  local.get $ret
  local.set $21
  global.get $~lib/memory/__stack_pointer
  i32.const 172
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $21
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#postTxExecute (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onTxCommit (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onBlockFinalize (param $this i32) (param $ctx i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  i32.const 1
  i32.const 640
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#uint32 (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $val i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|2
  i32.store $0
  local.get $value
  local.set $val
  loop $while-continue|0
   local.get $val
   i32.const 127
   i32.gt_u
   if
    local.get $this|2
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=4
    local.get $6
    local.get $this|2
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0 offset=8
    local.get $6
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
    local.tee $4
    i32.const 1
    i32.add
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
    local.get $4
    local.get $val
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8 $0
    local.get $val
    i32.const 7
    i32.shr_u
    local.set $val
    br $while-continue|0
   end
  end
  local.get $this|2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  local.get $this|2
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=8
  local.get $6
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.tee $5
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $5
  local.get $val
  i32.store8 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#uint32 (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $value|3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|2
  i32.store $0
  local.get $value
  local.set $value|3
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.get $value|3
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 10
  else
   local.get $value|3
   i32.const 128
   i32.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $value|3
    i32.const 16384
    i32.lt_u
    if (result i32)
     i32.const 2
    else
     local.get $value|3
     i32.const 2097152
     i32.lt_u
     if (result i32)
      i32.const 3
     else
      local.get $value|3
      i32.const 268435456
      i32.lt_u
      if (result i32)
       i32.const 4
      else
       i32.const 5
      end
     end
    end
   end
  end
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#bool (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $val i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|2
  i32.store $0
  local.get $value
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  local.set $val
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.get $val
  i32.store8 $0
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $this|2
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#bool (param $this i32) (param $value i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<i32>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 1088
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  call $~lib/array/Array<i32>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $value
  i32.const 0
  drop
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#string (param $this i32) (param $value i32)
  (local $this|2 i32)
  (local $3 i32)
  (local $len i32)
  (local $this|5 i32)
  (local $value|6 i32)
  (local $this|7 i32)
  (local $val i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 24
  memory.fill $0
  block $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#varlen|inlined.0 (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $this
   local.tee $this|2
   i32.store $0
   local.get $this|2
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=4
   local.get $11
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:varlenidx
   local.get $this|2
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=12
   local.get $11
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=8
   local.get $11
   call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
   local.set $11
   global.get $~lib/memory/__stack_pointer
   local.get $11
   i32.store $0 offset=4
   local.get $11
   call $~lib/array/Array<i32>#get:length
   i32.ge_s
   if (result i32)
    i32.const 0
   else
    local.get $this|2
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=12
    local.get $11
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:sizer
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=8
    local.get $11
    call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=4
    local.get $11
    local.get $this|2
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=8
    local.get $11
    local.get $this|2
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=12
    local.get $11
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:varlenidx
    local.tee $3
    i32.const 1
    i32.add
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:varlenidx
    local.get $3
    call $~lib/array/Array<i32>#__get
   end
   br $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#varlen|inlined.0
  end
  local.set $len
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|5
  i32.store $0 offset=16
  local.get $len
  local.set $value|6
  global.get $~lib/memory/__stack_pointer
  local.get $this|5
  local.tee $this|7
  i32.store $0 offset=20
  local.get $value|6
  local.set $val
  loop $while-continue|0
   local.get $val
   i32.const 127
   i32.gt_u
   if
    local.get $this|7
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=4
    local.get $11
    local.get $this|7
    local.set $11
    global.get $~lib/memory/__stack_pointer
    local.get $11
    i32.store $0 offset=8
    local.get $11
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
    local.tee $9
    i32.const 1
    i32.add
    call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
    local.get $9
    local.get $val
    i32.const 127
    i32.and
    i32.const 128
    i32.or
    i32.store8 $0
    local.get $val
    i32.const 7
    i32.shr_u
    local.set $val
    br $while-continue|0
   end
  end
  local.get $this|7
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0 offset=4
  local.get $11
  local.get $this|7
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0 offset=8
  local.get $11
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.tee $10
  i32.const 1
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  local.get $10
  local.get $val
  i32.store8 $0
  local.get $value
  local.get $value
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0 offset=4
  local.get $11
  call $~lib/string/String#get:length
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0 offset=4
  local.get $11
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  i32.const 0
  i32.const 3
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String.UTF8.encodeUnsafe@varargs
  drop
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0 offset=4
  local.get $11
  local.get $this
  local.set $11
  global.get $~lib/memory/__stack_pointer
  local.get $11
  i32.store $0 offset=8
  local.get $11
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#get:ptr
  local.get $len
  i32.add
  call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#set:ptr
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#string (param $this i32) (param $value i32)
  (local $len i32)
  (local $this|3 i32)
  (local $value|4 i32)
  (local $this|5 i32)
  (local $value|6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $value
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  i32.const 0
  call $~lib/string/String.UTF8.byteLength
  local.set $len
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:varlen
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  local.get $len
  call $~lib/array/Array<i32>#push
  drop
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.tee $this|3
  i32.store $0 offset=8
  local.get $len
  local.set $value|4
  global.get $~lib/memory/__stack_pointer
  local.get $this|3
  local.tee $this|5
  i32.store $0 offset=12
  local.get $value|4
  local.set $value|6
  local.get $this|5
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  local.get $this|5
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.get $value|6
  i32.const 0
  i32.lt_u
  if (result i32)
   i32.const 10
  else
   local.get $value|6
   i32.const 128
   i32.lt_u
   if (result i32)
    i32.const 1
   else
    local.get $value|6
    i32.const 16384
    i32.lt_u
    if (result i32)
     i32.const 2
    else
     local.get $value|6
     i32.const 2097152
     i32.lt_u
     if (result i32)
      i32.const 3
     else
      local.get $value|6
      i32.const 268435456
      i32.lt_u
      if (result i32)
       i32.const 4
      else
       i32.const 5
      end
     end
    end
   end
  end
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#get:len
  local.get $len
  i32.add
  call $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer#set:len
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Number#typeName (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $1
  call $assembly/lib/abi/ethereum/coders/ethereum.Number#get:_signed
  if (result i32)
   i32.const 6928
  else
   i32.const 6960
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $1
  call $assembly/lib/abi/ethereum/coders/ethereum.Number#get:_byteSize
  i32.const 255
  i32.and
  i32.const 8
  i32.mul
  i32.const 10
  call $~lib/number/U16#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#constructor (param $this i32) (param $all i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 54
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#set:all
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $all
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  local.get $2
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#set:all
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#constructor@varargs (param $this i32) (param $all i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 2
   i32.const 56
   i32.const 7120
   call $~lib/rt/__newArray
   local.tee $all
   i32.store $0
  end
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $all
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#constructor
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/lib/types/message/aspect/v1/StateChange/StateChange#constructor (param $this i32) (param $account i32) (param $value i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 55
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#set:account
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#set:value
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $account
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#set:account
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#set:value
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/types/message/aspect/v1/StateChange/StateChange#constructor@varargs (param $this i32) (param $account i32) (param $value i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 640
    local.tee $account
    i32.store $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $value
   i32.store $0 offset=4
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=8
  local.get $3
  local.get $account
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=12
  local.get $3
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=16
  local.get $3
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/types/message/aspect/v1/StateChange/StateChange.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0 offset=8
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 640
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store $0 offset=4
  local.get $6
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#constructor@varargs
  local.tee $message
  i32.store $0 offset=8
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case2|1
      block $case1|1
       block $case0|1
        local.get $tag
        i32.const 3
        i32.shr_u
        local.set $5
        local.get $5
        i32.const 1
        i32.eq
        br_if $case0|1
        local.get $5
        i32.const 2
        i32.eq
        br_if $case1|1
        br $case2|1
       end
       local.get $message
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0
       local.get $6
       local.get $reader
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=12
       local.get $6
       call $~lib/as-proto/assembly/Reader/Reader#string@override
       local.set $6
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store $0 offset=4
       local.get $6
       call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#set:account
       br $break|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=12
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=4
      local.get $6
      call $assembly/lib/types/message/aspect/v1/StateChange/StateChange#set:value
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store $0
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $len
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges.decode (param $reader i32) (param $length i32) (result i32)
  (local $end i32)
  (local $message i32)
  (local $tag i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $length
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:end
  else
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $length
   i32.add
  end
  local.set $end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#constructor@varargs
  local.tee $message
  i32.store $0 offset=4
  loop $while-continue|0
   local.get $reader
   local.set $6
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/as-proto/assembly/Reader/Reader#get:ptr
   local.get $end
   i32.lt_u
   if
    local.get $reader
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store $0
    local.get $6
    call $~lib/as-proto/assembly/Reader/Reader#uint32@override
    local.set $tag
    block $break|1
     block $case1|1
      block $case0|1
       local.get $tag
       i32.const 3
       i32.shr_u
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|1
       br $case1|1
      end
      local.get $message
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=12
      local.get $6
      call $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges#get:all
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=12
      local.get $6
      local.get $reader
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=16
      local.get $6
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $assembly/lib/types/message/aspect/v1/StateChange/StateChange.decode
      local.set $6
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=8
      local.get $6
      call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#push
      drop
      br $break|1
     end
     local.get $reader
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0
     local.get $6
     local.get $tag
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $break|1
    end
    br $while-continue|0
   end
  end
  local.get $message
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/StateChanges/StateChanges> (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#reset
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $length
  i32.const 2
  global.set $~argumentsLength
  local.get $decoder
  i32.load $0
  call_indirect $0 (type $i32_i32_=>_i32)
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>@varargs (param $buffer i32) (param $decoder i32) (param $length i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const -1
   local.set $length
  end
  local.get $buffer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0
  local.get $3
  local.get $decoder
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store $0 offset=4
  local.get $3
  local.get $length
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/host/hostapi/Context.getStateChanges (param $addr i32) (param $variable i32) (param $key i32) (result i32)
  (local $addrPtr i32)
  (local $variablePtr i32)
  (local $keyPtr i32)
  (local $dataPtr i32)
  (local $data i32)
  (local $changes i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill $0
  i32.const 0
  local.get $addr
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $assembly/lib/types/basic_types/AString#constructor
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $assembly/lib/types/basic_types/AString#store
  local.set $addrPtr
  i32.const 0
  local.get $variable
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $assembly/lib/types/basic_types/AString#constructor
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $assembly/lib/types/basic_types/AString#store
  local.set $variablePtr
  i32.const 0
  local.get $key
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $assembly/lib/types/basic_types/AUint8Array#constructor
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  call $assembly/lib/types/basic_types/AUint8Array#store
  local.set $keyPtr
  local.get $addrPtr
  local.get $variablePtr
  local.get $keyPtr
  call $assembly/lib/host/hostapi/__HostApi__.getStateChanges
  local.set $dataPtr
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
  local.tee $data
  i32.store $0 offset=8
  local.get $data
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  local.get $dataPtr
  call $assembly/lib/types/basic_types/AUint8Array#load
  global.get $~lib/memory/__stack_pointer
  local.get $data
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=4
  local.get $9
  call $assembly/lib/types/basic_types/AUint8Array#get
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0
  local.get $9
  i32.const 7152
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store $0 offset=12
  local.get $9
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>@varargs
  local.tee $changes
  i32.store $0 offset=16
  local.get $changes
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
  return
 )
 (func $assembly/lib/context/PreContractCallCtx#getStateChanges (param $this i32) (param $addr i32) (param $variable i32) (param $key i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $addr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $variable
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $key
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/lib/host/hostapi/Context.getStateChanges
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/context/PostContractCallCtx#getStateChanges (param $this i32) (param $addr i32) (param $variable i32) (param $key i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $addr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $variable
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $key
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/lib/host/hostapi/Context.getStateChanges
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/context/PostTxExecuteCtx#getStateChanges (param $this i32) (param $addr i32) (param $variable i32) (param $key i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $addr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $variable
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $key
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/lib/host/hostapi/Context.getStateChanges
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/lib/context/OnTxCommitCtx#getStateChanges (param $this i32) (param $addr i32) (param $variable i32) (param $key i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0 offset=8
  local.get $addr
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0
  local.get $4
  local.get $variable
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=4
  local.get $4
  local.get $key
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store $0 offset=8
  local.get $4
  call $assembly/lib/host/hostapi/Context.getStateChanges
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/array/Array<u32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/array/Array<u32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load $0
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load $0
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/AspAccessTuple/AspAccessTuple>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput%2C~lib/as-proto/assembly/Writer/Writer%29=>void>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load $0
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28assembly/lib/abi/ethereum/coders/ethereum.Coder%2Ci32%2C~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>%29=>~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28assembly/lib/abi/ethereum/coders/ethereum.Coder%2Ci32%2C~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>%29=>~lib/string/String>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load $0
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store $0
  local.get $5
  call $~lib/array/Array<assembly/lib/types/message/aspect/v1/StateChange/StateChange>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0
  local.get $2
  call $~lib/function/Function<%28~lib/as-proto/assembly/Reader/Reader%2Ci32%29=>assembly/lib/types/message/aspect/v1/StateChanges/StateChanges>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/rt/__newArray (param $length i32) (param $alignLog2 i32) (param $id i32) (param $data i32) (result i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $array i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $length
  local.get $alignLog2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  local.get $data
  call $~lib/rt/__newBuffer
  local.tee $buffer
  i32.store $0
  i32.const 16
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $array
  local.get $array
  local.get $buffer
  i32.store $0
  local.get $array
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $array
  local.get $buffer
  i32.store $0 offset=4
  local.get $array
  local.get $bufferSize
  i32.store $0 offset=8
  local.get $array
  local.get $length
  i32.store $0 offset=12
  local.get $array
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $buf i32) (param $len i32) (param $nullTerminated i32) (result i32)
  (local $bufOff i32)
  (local $bufEnd i32)
  (local $str i32)
  (local $strOff i32)
  (local $u0 i32)
  (local $u1 i32)
  (local $u2 i32)
  (local $lo i32)
  (local $hi i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $buf
  local.set $bufOff
  local.get $buf
  local.get $len
  i32.add
  local.set $bufEnd
  local.get $bufEnd
  local.get $bufOff
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 672
   i32.const 770
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $len
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $str
  i32.store $0
  local.get $str
  local.set $strOff
  block $while-break|0
   loop $while-continue|0
    local.get $bufOff
    local.get $bufEnd
    i32.lt_u
    if
     local.get $bufOff
     i32.load8_u $0
     local.set $u0
     local.get $bufOff
     i32.const 1
     i32.add
     local.set $bufOff
     local.get $u0
     i32.const 128
     i32.and
     i32.eqz
     if
      local.get $nullTerminated
      local.get $u0
      i32.eqz
      i32.and
      if
       br $while-break|0
      end
      local.get $strOff
      local.get $u0
      i32.store16 $0
     else
      local.get $bufEnd
      local.get $bufOff
      i32.eq
      if
       br $while-break|0
      end
      local.get $bufOff
      i32.load8_u $0
      i32.const 63
      i32.and
      local.set $u1
      local.get $bufOff
      i32.const 1
      i32.add
      local.set $bufOff
      local.get $u0
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $strOff
       local.get $u0
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $u1
       i32.or
       i32.store16 $0
      else
       local.get $bufEnd
       local.get $bufOff
       i32.eq
       if
        br $while-break|0
       end
       local.get $bufOff
       i32.load8_u $0
       i32.const 63
       i32.and
       local.set $u2
       local.get $bufOff
       i32.const 1
       i32.add
       local.set $bufOff
       local.get $u0
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $u0
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $u1
        i32.const 6
        i32.shl
        i32.or
        local.get $u2
        i32.or
        local.set $u0
       else
        local.get $bufEnd
        local.get $bufOff
        i32.eq
        if
         br $while-break|0
        end
        local.get $u0
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $u1
        i32.const 12
        i32.shl
        i32.or
        local.get $u2
        i32.const 6
        i32.shl
        i32.or
        local.get $bufOff
        i32.load8_u $0
        i32.const 63
        i32.and
        i32.or
        local.set $u0
        local.get $bufOff
        i32.const 1
        i32.add
        local.set $bufOff
       end
       local.get $u0
       i32.const 65536
       i32.lt_u
       if
        local.get $strOff
        local.get $u0
        i32.store16 $0
       else
        local.get $u0
        i32.const 65536
        i32.sub
        local.set $u0
        local.get $u0
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.set $lo
        local.get $u0
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        local.set $hi
        local.get $strOff
        local.get $lo
        local.get $hi
        i32.const 16
        i32.shl
        i32.or
        i32.store $0
        local.get $strOff
        i32.const 2
        i32.add
        local.set $strOff
       end
      end
     end
     local.get $strOff
     i32.const 2
     i32.add
     local.set $strOff
     br $while-continue|0
    end
   end
  end
  local.get $str
  local.get $strOff
  local.get $str
  i32.sub
  call $~lib/rt/itcms/__renew
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
 (func $assembly/lib/context/StateCtx#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store $0
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/util/number/itoa32 (param $value i32) (param $radix i32) (result i32)
  (local $sign i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|8 i32)
  (local $buffer|9 i32)
  (local $num|10 i32)
  (local $offset|11 i32)
  (local $val32 i32)
  (local $decimals|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 2256
   i32.const 2384
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 2448
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $value
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.set $sign
  local.get $sign
  if
   i32.const 0
   local.get $value
   i32.sub
   local.set $value
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   local.get $sign
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store $0
   local.get $out
   local.get $sign
   i32.add
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|8
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|8
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.get $sign
    i32.add
    local.set $buffer|9
    local.get $value
    local.set $num|10
    local.get $decimals|8
    local.set $offset|11
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|9
    local.get $num|10
    i64.extend_i32_u
    local.get $offset|11
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    local.set $val32
    local.get $val32
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|13
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|13
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.get $sign
    i32.add
    local.get $val32
    i64.extend_i32_u
    local.get $decimals|13
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $sign
  if
   local.get $out
   i32.const 45
   i32.store16 $0
  end
  local.get $out
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $~lib/util/number/utoa32 (param $value i32) (param $radix i32) (result i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|7 i32)
  (local $buffer|8 i32)
  (local $num|9 i32)
  (local $offset|10 i32)
  (local $decimals|11 i32)
  (local $12 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 2256
   i32.const 2384
   i32.const 350
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 2448
   local.set $12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $12
   return
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store $0
   local.get $out
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|7
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|7
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.set $buffer|8
    local.get $value
    local.set $num|9
    local.get $decimals|7
    local.set $offset|10
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|8
    local.get $num|9
    i64.extend_i32_u
    local.get $offset|10
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|11
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|11
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store $0
    local.get $out
    local.get $value
    i64.extend_i32_u
    local.get $decimals|11
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $out
  local.set $12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $12
  return
 )
)
