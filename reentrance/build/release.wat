(module
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_none (func))
 (type $i32_=>_i64 (func (param i32) (result i64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i64_=>_none (func (param i32 i32 i64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
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
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/as-proto/assembly/Protobuf/WRITER (mut i32) (i32.const 0))
 (global $~lib/as-proto/assembly/Protobuf/READER (mut i32) (i32.const 0))
 (global $assembly/index/firstAspect (mut i32) (i32.const 0))
 (global $assembly/index/entry (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 41196))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $4 (i32.const 1228) "<")
 (data $4.1 (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $5 (i32.const 1292) ",")
 (data $5.1 (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) "\1c")
 (data $8.1 (i32.const 1448) "\01")
 (data $9 (i32.const 1468) "\1c")
 (data $9.1 (i32.const 1480) "\01")
 (data $10 (i32.const 1500) "\1c")
 (data $10.1 (i32.const 1512) "\01")
 (data $11 (i32.const 1532) ",")
 (data $11.1 (i32.const 1544) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $12 (i32.const 1580) "<")
 (data $12.1 (i32.const 1592) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data $13 (i32.const 1644) "\1c")
 (data $13.1 (i32.const 1656) "\02")
 (data $14 (i32.const 1676) ",")
 (data $14.1 (i32.const 1688) "\02\00\00\00\1c\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data $15 (i32.const 1724) "<")
 (data $15.1 (i32.const 1736) "\02\00\00\00&\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00s\00p\00e\00c\00t\00 \00c\00o\00d\00e")
 (data $16 (i32.const 1788) "<")
 (data $16.1 (i32.const 1800) "\02\00\00\00*\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00/\00e\00n\00t\00r\00y\00.\00t\00s")
 (data $17 (i32.const 1852) "<")
 (data $17.1 (i32.const 1864) "\02\00\00\00\"\00\00\00o\00n\00C\00o\00n\00t\00r\00a\00c\00t\00B\00i\00n\00d\00i\00n\00g")
 (data $18 (i32.const 1916) ",")
 (data $18.1 (i32.const 1928) "\02\00\00\00\0e\00\00\00i\00s\00O\00w\00n\00e\00r")
 (data $19 (i32.const 1964) "<")
 (data $19.1 (i32.const 1976) "\02\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $20 (i32.const 2028) "\1c")
 (data $20.1 (i32.const 2040) "\01")
 (data $21 (i32.const 2060) "\1c")
 (data $21.1 (i32.const 2072) "\01")
 (data $22 (i32.const 2092) ",")
 (data $22.1 (i32.const 2104) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $23 (i32.const 2140) "\1c")
 (data $23.1 (i32.const 2152) "\1b\00\00\00\08\00\00\00\01")
 (data $24 (i32.const 2172) ",")
 (data $24.1 (i32.const 2184) "\02\00\00\00\16\00\00\00o\00n\00T\00x\00R\00e\00c\00e\00i\00v\00e")
 (data $25 (i32.const 2220) "<")
 (data $25.1 (i32.const 2232) "\02\00\00\00\"\00\00\00o\00n\00B\00l\00o\00c\00k\00I\00n\00i\00t\00i\00a\00l\00i\00z\00e")
 (data $26 (i32.const 2284) ",")
 (data $26.1 (i32.const 2296) "\02\00\00\00\14\00\00\00o\00n\00T\00x\00V\00e\00r\00i\00f\00y")
 (data $27 (i32.const 2332) "<")
 (data $27.1 (i32.const 2344) "\02\00\00\00\1e\00\00\00o\00n\00A\00c\00c\00o\00u\00n\00t\00V\00e\00r\00i\00f\00y")
 (data $28 (i32.const 2396) ",")
 (data $28.1 (i32.const 2408) "\02\00\00\00\18\00\00\00o\00n\00G\00a\00s\00P\00a\00y\00m\00e\00n\00t")
 (data $29 (i32.const 2444) ",")
 (data $29.1 (i32.const 2456) "\02\00\00\00\18\00\00\00p\00r\00e\00T\00x\00E\00x\00e\00c\00u\00t\00e")
 (data $30 (i32.const 2492) "<")
 (data $30.1 (i32.const 2504) "\02\00\00\00\1e\00\00\00p\00r\00e\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l")
 (data $31 (i32.const 2556) "<")
 (data $31.1 (i32.const 2568) "\02\00\00\00 \00\00\00p\00o\00s\00t\00C\00o\00n\00t\00r\00a\00c\00t\00C\00a\00l\00l")
 (data $32 (i32.const 2620) ",")
 (data $32.1 (i32.const 2632) "\02\00\00\00\1a\00\00\00p\00o\00s\00t\00T\00x\00E\00x\00e\00c\00u\00t\00e")
 (data $33 (i32.const 2668) ",")
 (data $33.1 (i32.const 2680) "\02\00\00\00\14\00\00\00o\00n\00T\00x\00C\00o\00m\00m\00i\00t")
 (data $34 (i32.const 2716) "<")
 (data $34.1 (i32.const 2728) "\02\00\00\00\1e\00\00\00o\00n\00B\00l\00o\00c\00k\00F\00i\00n\00a\00l\00i\00z\00e")
 (data $35 (i32.const 2780) ",")
 (data $35.1 (i32.const 2792) "\02\00\00\00\0e\00\00\00m\00e\00t\00h\00o\00d\00 ")
 (data $36 (i32.const 2828) "L")
 (data $36.1 (i32.const 2840) "\02\00\00\00:\00\00\00 \00n\00o\00t\00 \00f\00o\00u\00n\00d\00 \00o\00r\00 \00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d")
 (data $37 (i32.const 2908) "\1c")
 (data $37.1 (i32.const 2920) "*\00\00\00\08\00\00\00\02")
 (data $38 (i32.const 2940) ",")
 (data $38.1 (i32.const 2952) "\02\00\00\00\0e\00\00\00b\00i\00n\00d\00i\00n\00g")
 (data $39 (i32.const 2988) "<")
 (data $39.1 (i32.const 3000) "\02\00\00\00$\00\00\00U\00n\00p\00a\00i\00r\00e\00d\00 \00s\00u\00r\00r\00o\00g\00a\00t\00e")
 (data $40 (i32.const 3052) "\1c")
 (data $40.1 (i32.const 3064) "\02\00\00\00\n\00\00\00o\00w\00n\00e\00r")
 (data $41 (i32.const 3084) "l")
 (data $41.1 (i32.const 3096) "\02\00\00\00\\\00\00\00~\00l\00i\00b\00/\00a\00s\00-\00p\00r\00o\00t\00o\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00F\00i\00x\00e\00d\00R\00e\00a\00d\00e\00r\00.\00t\00s")
 (data $42 (i32.const 3196) "<")
 (data $42.1 (i32.const 3208) "\02\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00w\00i\00r\00e\00 \00t\00y\00p\00e\00 ")
 (data $43 (i32.const 3260) "|")
 (data $43.1 (i32.const 3272) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $44 (i32.const 3388) "<")
 (data $44.1 (i32.const 3400) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $45 (i32.const 3452) "\1c")
 (data $45.1 (i32.const 3464) "\02\00\00\00\02\00\00\000")
 (data $46 (i32.const 3484) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $47 (i32.const 3884) "\1c\04")
 (data $47.1 (i32.const 3896) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $48 (i32.const 4940) "\\")
 (data $48.1 (i32.const 4952) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $49 (i32.const 5036) "|")
 (data $49.1 (i32.const 5048) "\02\00\00\00^\00\00\00U\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00\'\00n\00u\00l\00l\00\'\00 \00(\00n\00o\00t\00 \00a\00s\00s\00i\00g\00n\00e\00d\00 \00o\00r\00 \00f\00a\00i\00l\00e\00d\00 \00c\00a\00s\00t\00)")
 (data $50 (i32.const 5164) "l")
 (data $50.1 (i32.const 5176) "\02\00\00\00P\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00p\00e\00c\00t\00/\00g\00u\00a\00r\00d\00_\00b\00y\00_\00t\00r\00a\00c\00e\00_\00a\00s\00p\00e\00c\00t\00.\00t\00s")
 (data $51 (i32.const 5276) "<")
 (data $51.1 (i32.const 5288) "\02\00\00\00 \00\00\00o\00r\00i\00g\00i\00n\00a\00l\00_\00b\00a\00l\00a\00n\00c\00e")
 (data $52 (i32.const 5340) "\1c")
 (data $52.1 (i32.const 5352) "\02\00\00\00\04\00\00\000\00x")
 (data $53 (i32.const 5372) "<")
 (data $53.1 (i32.const 5384) "\02\00\00\00\1e\00\00\00i\00n\00v\00a\00l\00i\00d\00 \00a\00d\00d\00r\00e\00s\00s")
 (data $54 (i32.const 5436) "\\")
 (data $54.1 (i32.const 5448) "\02\00\00\00F\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00/\00a\00b\00i\00/\00e\00t\00h\00e\00r\00e\00u\00m\00/\00c\00o\00d\00e\00r\00s\00.\00t\00s")
 (data $55 (i32.const 5532) "\\")
 (data $55.1 (i32.const 5544) "\02\00\00\00@\00\00\00n\00u\00m\00b\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00t\00w\00e\00e\00n\00 \008\00 \00~\00 \002\005\006")
 (data $56 (i32.const 5628) "\\")
 (data $56.1 (i32.const 5640) "\02\00\00\00B\00\00\00n\00u\00m\00b\00e\00r\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00o\00f\00 \008")
 (data $57 (i32.const 5724) "\1c")
 (data $57.1 (i32.const 5736) "\02\00\00\00\0c\00\00\00i\00n\00p\00u\00t\00 ")
 (data $58 (i32.const 5756) "<")
 (data $58.1 (i32.const 5768) "\02\00\00\00\1e\00\00\00 \00h\00a\00s\00 \00o\00d\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $59 (i32.const 5820) "\1c")
 (data $59.1 (i32.const 5832) "\02\00\00\00\02\00\00\00x")
 (data $60 (i32.const 5852) "L")
 (data $60.1 (i32.const 5864) "\02\00\00\004\00\00\00i\00n\00p\00u\00t\00 \00d\00a\00t\00a\00 \00l\00e\00n\00g\00t\00h\00 \00t\00o\00o\00 \00l\00o\00n\00g")
 (data $61 (i32.const 5932) "|")
 (data $61.1 (i32.const 5944) "\02\00\00\00^\00\00\00B\00i\00g\00I\00n\00t\00 \00o\00n\00l\00y\00 \00r\00e\00a\00d\00s\00 \00s\00t\00r\00i\00n\00g\00s\00 \00o\00f\00 \00r\00a\00d\00i\00x\00 \002\00 \00t\00h\00r\00o\00u\00g\00h\00 \001\006")
 (data $62 (i32.const 6060) "L")
 (data $62.1 (i32.const 6072) "\02\00\00\008\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00/\00t\00y\00p\00e\00s\00/\00b\00i\00g\00i\00n\00t\00.\00t\00s")
 (data $63 (i32.const 6140) "\1c")
 (data $63.1 (i32.const 6152) "\02\00\00\00\02\00\00\00-")
 (data $64 (i32.const 6172) ",")
 (data $64.1 (i32.const 6184) "\02\00\00\00\14\00\00\00C\00h\00a\00r\00a\00c\00t\00e\00r\00 ")
 (data $65 (i32.const 6220) "L")
 (data $65.1 (i32.const 6232) "\02\00\00\008\00\00\00 \00i\00s\00 \00n\00o\00t\00 \00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00f\00o\00r\00 \00r\00a\00d\00i\00x\00 ")
 (data $66 (i32.const 6300) "\1c")
 (data $66.1 (i32.const 6312) "\02\00\00\00\02\00\00\00(")
 (data $67 (i32.const 6332) "\1c")
 (data $67.1 (i32.const 6344) "4\00\00\00\08\00\00\00\03")
 (data $68 (i32.const 6364) "\1c")
 (data $68.1 (i32.const 6376) "\02\00\00\00\02\00\00\00,")
 (data $69 (i32.const 6396) "\1c")
 (data $69.1 (i32.const 6408) "\02\00\00\00\02\00\00\00)")
 (data $70 (i32.const 6428) "|")
 (data $70.1 (i32.const 6440) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $71 (i32.const 6556) "\\")
 (data $71.1 (i32.const 6568) "\02\00\00\00H\00\00\00n\00u\00m\00b\00e\00r\00 \00b\00i\00t\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00t\00w\00e\00e\00n\00 \008\00 \00~\00 \002\005\006")
 (data $72 (i32.const 6652) "\\")
 (data $72.1 (i32.const 6664) "\02\00\00\00J\00\00\00n\00u\00m\00b\00e\00r\00 \00b\00i\00t\00 \00s\00i\00z\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00m\00u\00l\00t\00i\00p\00l\00e\00 \00o\00f\00 \008")
 (data $73 (i32.const 6748) "<")
 (data $73.1 (i32.const 6760) "\02\00\00\00$\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00h\00e\00x\00 \00s\00t\00r\00i\00n\00g")
 (data $74 (i32.const 6812) "<")
 (data $74.1 (i32.const 6824) "\02\00\00\00*\00\00\00a\00s\00s\00e\00m\00b\00l\00y\00/\00l\00i\00b\00/\00u\00t\00i\00l\00s\00.\00t\00s")
 (data $75 (i32.const 6876) "<")
 (data $75.1 (i32.const 6888) "\02\00\00\00\"\00\00\00H\00o\00n\00e\00y\00P\00o\00t\00.\00b\00a\00l\00a\00n\00c\00e\00s")
 (data $76 (i32.const 6940) "|")
 (data $76.1 (i32.const 6952) "\02\00\00\00`\00\00\00B\00i\00g\00I\00n\00t\00 \00o\00n\00l\00y\00 \00p\00r\00i\00n\00t\00s\00 \00s\00t\00r\00i\00n\00g\00s\00 \00i\00n\00 \00r\00a\00d\00i\00x\00 \002\00 \00t\00h\00r\00o\00u\00g\00h\00 \001\006")
 (data $77 (i32.const 7068) "\1c")
 (data $77.1 (i32.const 7080) "\01")
 (data $78 (i32.const 7100) ",")
 (data $78.1 (i32.const 7112) "\02\00\00\00\1c\00\00\00D\00i\00v\00i\00d\00e\00 \00b\00y\00 \00z\00e\00r\00o")
 (data $79 (i32.const 7148) "L")
 (data $79.1 (i32.const 7160) "\02\00\00\000\00\00\00s\00u\00m\00_\00b\00a\00l\00a\00n\00c\00e\00_\00c\00h\00a\00n\00g\00e\00_\00v\00a\00l\00u\00e")
 (data $80 (i32.const 7228) "L")
 (data $80.1 (i32.const 7240) "\02\00\00\002\00\00\00U\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00g\00e\00n\00e\00r\00i\00c\00 \00t\00y\00p\00e\00 ")
 (data $81 (i32.const 7308) "\1c")
 (data $81.1 (i32.const 7320) "\02\00\00\00\0c\00\00\00B\00i\00g\00I\00n\00t")
 (data $82 (i32.const 7340) ",")
 (data $82.1 (i32.const 7352) "\02\00\00\00\18\00\00\00H\00o\00n\00e\00y\00P\00o\00t\00A\00d\00d\00r")
 (data $83 (i32.const 7388) "<")
 (data $83.1 (i32.const 7400) "\02\00\00\00*\00\00\00o\00r\00i\00g\00i\00n\00a\00l\00_\00b\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00 ")
 (data $84 (i32.const 7452) "<")
 (data $84.1 (i32.const 7464) "\02\00\00\00$\00\00\00 \00d\00i\00f\00f\00_\00B\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00 ")
 (data $85 (i32.const 7516) "L")
 (data $85.1 (i32.const 7528) "\02\00\00\00<\00\00\00 \00l\00a\00s\00t\00_\00c\00h\00a\00n\00g\00e\00_\00f\00r\00o\00m\00_\00b\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00 ")
 (data $86 (i32.const 7596) "<")
 (data $86.1 (i32.const 7608) "\02\00\00\00(\00\00\00 \00r\00e\00s\00u\00l\00t\00_\00b\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:\00 ")
 (data $87 (i32.const 7660) "\\")
 (data $87.1 (i32.const 7672) "\02\00\00\00@\00\00\00 \00h\00o\00n\00e\00y\00P\00o\00t\00A\00d\00d\00r\00 \00C\00u\00r\00r\00e\00n\00t\00B\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:")
 (data $88 (i32.const 7756) "\\")
 (data $88.1 (i32.const 7768) "\02\00\00\00>\00\00\00 \00f\00r\00o\00m\00B\00a\00l\00a\00n\00c\00e\00 \00C\00u\00r\00r\00e\00n\00t\00B\00a\00l\00a\00n\00c\00e\00 \00i\00s\00:")
 (data $89 (i32.const 7852) "L")
 (data $89.1 (i32.const 7864) "\02\00\00\002\00\00\00b\00a\00l\00a\00n\00c\00e\00 \00i\00s\00 \00l\00e\00s\00s\00 \00t\00h\00a\00n\00 \00z\00e\00r\00o")
 (data $90 (i32.const 7932) "\1c")
 (data $90.1 (i32.const 7944) "\02\00\00\00\06\00\00\00i\00n\00t")
 (data $91 (i32.const 7964) "\1c")
 (data $91.1 (i32.const 7976) "\02\00\00\00\08\00\00\00u\00i\00n\00t")
 (data $92 (i32.const 7996) ",")
 (data $92.1 (i32.const 8008) "\02\00\00\00\0e\00\00\00a\00d\00d\00r\00e\00s\00s")
 (data $93 (i32.const 8044) "L")
 (data $93.1 (i32.const 8056) "\02\00\00\00.\00\00\00m\00e\00t\00h\00o\00d\00 \00n\00o\00t\00 \00i\00m\00p\00l\00e\00m\00e\00n\00t\00e\00d\00.")
 (data $94 (i32.const 8124) "\1c")
 (data $94.1 (i32.const 8136) "\01")
 (data $95 (i32.const 8156) "\1c")
 (data $95.1 (i32.const 8168) "9\00\00\00\08\00\00\00\04")
 (data $96 (i32.const 8192) ":\00\00\00 \00\00\00 \00\00\00 ")
 (data $96.1 (i32.const 8216) " \00\00\00\00\00\00\00\02\01\00\00\02\t\00\00A\00\00\00\00\00\00\00 \00\00\00 \00\00\00 \00\00\00 ")
 (data $96.2 (i32.const 8264) " \00\00\00 ")
 (data $96.3 (i32.const 8288) "\02A\00\00\02A")
 (data $96.4 (i32.const 8320) " ")
 (data $96.5 (i32.const 8344) " ")
 (data $96.6 (i32.const 8372) "A\00\00\00A\00\00\00A\00\00\00 \00\00\00\00\00\00\00\01\01\00\00\00\00\00\00\02A")
 (data $96.7 (i32.const 8420) "\02A")
 (table $0 5 5 funcref)
 (elem $0 (i32.const 1) $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput.decode $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput.encode $assembly/lib/abi/ethereum/coders/ethereum.abiEncode~anonymous|0 $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges.decode)
 (export "execute" (func $assembly/index/execute))
 (export "isBlockLevel" (func $assembly/index/isBlockLevel))
 (export "isTransactionLevel" (func $assembly/index/isTransactionLevel))
 (export "allocate" (func $assembly/index/allocate))
 (export "memory" (memory $0))
 (start $~start)
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/index/firstAspect
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $assembly/index/entry
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  i32.const 1248
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1552
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 6448
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 1056
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3008
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 3904
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  i32.const 4960
  call $byn-split-outlined-A$~lib/rt/itcms/__visit
  global.get $~lib/as-proto/assembly/Protobuf/WRITER
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/as-proto/assembly/Protobuf/READER
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load $0 offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load $0 offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  block $__inlined_func$~lib/rt/itcms/Object#unlink
   local.get $0
   i32.load $0 offset=4
   i32.const -4
   i32.and
   local.tee $1
   i32.eqz
   if
    local.get $0
    i32.load $0 offset=8
    i32.eqz
    local.get $0
    i32.const 41196
    i32.lt_u
    i32.and
    i32.eqz
    if
     i32.const 0
     i32.const 1120
     i32.const 128
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    br $__inlined_func$~lib/rt/itcms/Object#unlink
   end
   local.get $0
   i32.load $0 offset=8
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 132
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load $0 offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store $0 offset=4
  end
  global.get $~lib/rt/itcms/toSpace
  local.set $2
  local.get $0
  i32.load $0 offset=12
  local.tee $1
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 8192
   i32.load $0
   i32.gt_u
   if
    i32.const 1248
    i32.const 1312
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 2
   i32.shl
   i32.const 8196
   i32.add
   i32.load $0
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $2
  i32.load $0 offset=8
  local.set $1
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $2
  i32.or
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $1
  local.get $0
  local.get $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $3
   local.get $2
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $3
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0 offset=8
  local.set $5
  local.get $1
  i32.load $0 offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store $0 offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store $0 offset=4
  end
  local.get $1
  local.get $0
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  i32.eq
  if
   local.get $0
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.store $0 offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load $0 offset=4
    i32.const -2
    local.get $2
    i32.rotl
    i32.and
    local.set $2
    local.get $1
    local.get $2
    i32.store $0 offset=4
    local.get $2
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load $0
     i32.const -2
     local.get $3
     i32.rotl
     i32.and
     i32.store $0
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load $0
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load $0
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load $0
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load $0
   local.tee $1
   i32.load $0
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store $0
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store $0
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store $0
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $3
  i32.store $0 offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store $0 offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0 offset=96
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store $0
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load $0 offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store $0 offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load $0 offset=1568
  local.tee $4
  if
   local.get $4
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $4
    i32.load $0
    local.set $3
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $4
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $3
  i32.const 2
  i32.and
  local.get $4
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size $0
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
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
  i32.const 41200
  i32.const 0
  i32.store $0
  i32.const 42768
  i32.const 0
  i32.store $0
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 41200
    i32.add
    i32.const 0
    i32.store $0 offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 41200
      i32.add
      i32.const 0
      i32.store $0 offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 41200
  i32.const 42772
  memory.size $0
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 41200
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load $0 offset=4
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store $0 offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load $0 offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load $0 offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 41196
      i32.lt_u
      if
       local.get $0
       i32.load $0
       local.tee $2
       if
        local.get $2
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load $0 offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load $0 offset=4
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $0
        i32.load $0 offset=4
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store $0 offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load $0 offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load $0 offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load $0 offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 41196
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store $0 offset=4
     local.get $0
     i32.const 0
     i32.store $0 offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load $0
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 41196
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load $0
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load $0
      i32.const 1
      i32.or
      i32.store $0
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   local.tee $0
   local.get $0
   i32.store $0 offset=4
   local.get $0
   local.get $0
   i32.store $0 offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
   local.get $1
   local.get $1
   i32.const 536870910
   i32.lt_u
   select
   local.tee $1
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $2
   local.get $1
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load $0 offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load $0 offset=96
  else
   local.get $0
   i32.load $0
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load $0 offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 12
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.get $1
  i32.const 12
  i32.le_u
  select
  local.tee $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $1
  i32.eqz
  if
   memory.size $0
   local.tee $1
   local.get $3
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $3
    i32.const 1
    i32.const 27
    local.get $3
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.get $3
    local.get $3
    i32.const 536870910
    i32.lt_u
    select
   else
    local.get $3
   end
   i32.const 4
   local.get $0
   i32.load $0 offset=1568
   local.get $1
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $2
   local.get $1
   local.get $2
   i32.gt_s
   select
   memory.grow $0
   i32.const 0
   i32.lt_s
   if
    local.get $2
    memory.grow $0
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $0
   local.get $1
   i32.const 16
   i32.shl
   memory.size $0
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  local.get $1
  i32.load $0
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/removeBlock
  local.get $1
  i32.load $0
  local.set $4
  local.get $3
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const -4
  i32.and
  local.get $3
  i32.sub
  local.tee $2
  i32.const 16
  i32.ge_u
  if
   local.get $1
   local.get $3
   local.get $4
   i32.const 2
   i32.and
   i32.or
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $3
   i32.add
   local.tee $3
   local.get $2
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store $0
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $4
   i32.const -2
   i32.and
   i32.store $0
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load $0
   i32.const -4
   i32.and
   i32.add
   local.tee $0
   local.get $0
   i32.load $0
   i32.const -3
   i32.and
   i32.store $0
  end
  local.get $1
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    local.tee $2
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    local.get $2
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  local.tee $2
  local.get $1
  i32.store $0 offset=12
  local.get $2
  local.get $0
  i32.store $0 offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load $0 offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store $0 offset=4
  local.get $2
  local.get $3
  i32.store $0 offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store $0 offset=4
  local.get $1
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load $0
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill $0
  local.get $1
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  local.tee $3
  i32.load $0
  i32.const -4
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $3
   local.get $1
   i32.store $0 offset=16
   local.get $0
   return
  end
  local.get $1
  local.get $3
  i32.load $0 offset=12
  call $~lib/rt/itcms/__new
  local.tee $2
  local.get $0
  local.get $1
  local.get $3
  i32.load $0 offset=16
  local.tee $0
  local.get $0
  local.get $1
  i32.gt_u
  select
  memory.copy $0 $0
  local.get $2
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.tee $1
  i32.const 7
  i32.and
  local.get $2
  i32.const 7
  i32.and
  i32.or
  i32.eqz
  local.get $3
  i32.const 4
  i32.ge_u
  i32.and
  if
   loop $do-loop|0
    local.get $1
    i64.load $0
    local.get $2
    i64.load $0
    i64.eq
    if
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $3
     i32.const 4
     i32.sub
     local.tee $3
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u $0
    local.tee $0
    local.get $2
    i32.load16_u $0
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $assembly/index/allocate (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/string/String.UTF8.encodeUnsafe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $3
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $3
   i32.lt_u
   if
    local.get $0
    i32.load16_u $0
    local.tee $2
    i32.const 128
    i32.lt_u
    if (result i32)
     local.get $1
     local.get $2
     i32.store8 $0
     local.get $1
     i32.const 1
     i32.add
    else
     local.get $2
     i32.const 2048
     i32.lt_u
     if (result i32)
      local.get $1
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 192
      i32.or
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16 $0
      local.get $1
      i32.const 2
      i32.add
     else
      local.get $2
      i32.const 56320
      i32.lt_u
      local.get $0
      i32.const 2
      i32.add
      local.get $3
      i32.lt_u
      i32.and
      local.get $2
      i32.const 63488
      i32.and
      i32.const 55296
      i32.eq
      i32.and
      if
       local.get $0
       i32.load16_u $0 offset=2
       local.tee $4
       i32.const 64512
       i32.and
       i32.const 56320
       i32.eq
       if
        local.get $1
        local.get $2
        i32.const 1023
        i32.and
        i32.const 10
        i32.shl
        i32.const 65536
        i32.add
        local.get $4
        i32.const 1023
        i32.and
        i32.or
        local.tee $2
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 24
        i32.shl
        local.get $2
        i32.const 6
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 16
        i32.shl
        i32.or
        local.get $2
        i32.const 12
        i32.shr_u
        i32.const 63
        i32.and
        i32.const 128
        i32.or
        i32.const 8
        i32.shl
        i32.or
        local.get $2
        i32.const 18
        i32.shr_u
        i32.const 240
        i32.or
        i32.or
        i32.store $0
        local.get $1
        i32.const 4
        i32.add
        local.set $1
        local.get $0
        i32.const 4
        i32.add
        local.set $0
        br $while-continue|0
       end
      end
      local.get $1
      local.get $2
      i32.const 12
      i32.shr_u
      i32.const 224
      i32.or
      local.get $2
      i32.const 6
      i32.shr_u
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.const 8
      i32.shl
      i32.or
      i32.store16 $0
      local.get $1
      local.get $2
      i32.const 63
      i32.and
      i32.const 128
      i32.or
      i32.store8 $0 offset=2
      local.get $1
      i32.const 3
      i32.add
     end
    end
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   if
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $3
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $1
    local.get $0
    local.get $2
    i32.const 4
    i32.sub
    local.tee $2
    i32.const 1
    i32.shl
    i32.add
    local.get $3
    i32.const 100
    i32.div_u
    i32.const 2
    i32.shl
    i32.const 3484
    i32.add
    i64.load32_u $0
    local.get $3
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 3484
    i32.add
    i64.load32_u $0
    i64.const 32
    i64.shl
    i64.or
    i64.store $0
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   local.tee $2
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 100
   i32.rem_u
   i32.const 2
   i32.shl
   i32.const 3484
   i32.add
   i32.load $0
   i32.store $0
   local.get $1
   i32.const 100
   i32.div_u
   local.set $1
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $0
   local.get $2
   i32.const 2
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 2
   i32.shl
   i32.const 3484
   i32.add
   i32.load $0
   i32.store $0
  else
   local.get $0
   local.get $2
   i32.const 1
   i32.sub
   i32.const 1
   i32.shl
   i32.add
   local.get $1
   i32.const 48
   i32.add
   i32.store16 $0
  end
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  block $__inlined_func$~lib/util/number/itoa32
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 3472
    local.set $0
    br $__inlined_func$~lib/util/number/itoa32
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $1
   select
   local.tee $3
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $3
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $3
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $3
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $3
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $3
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $3
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $3
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $2
   i32.const 1
   i32.shl
   local.get $1
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   local.get $0
   local.get $1
   i32.add
   local.get $3
   local.get $2
   call $~lib/util/number/utoa32_dec_lut
   local.get $1
   if
    local.get $0
    i32.const 45
    i32.store16 $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $0
 )
 (func $~lib/as-proto/assembly/Reader/Reader#uint32@override (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load $0
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   if
    i32.const 41216
    i32.const 41264
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#int64@override (param $0 i32) (result i64)
  (local $1 i32)
  (local $2 i64)
  local.get $0
  i32.const 8
  i32.sub
  i32.load $0
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   if
    i32.const 41216
    i32.const 41264
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#string@override (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load $0
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   if
    i32.const 41216
    i32.const 41264
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i64.const 0
   i64.store $0 offset=8
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=12
   local.get $0
   local.get $2
   local.get $0
   i32.load $0
   i32.add
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.load $0 offset=4
   i32.gt_u
   if
    i32.const 1248
    i32.const 3104
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $2
   call $~lib/string/String.UTF8.decodeUnsafe
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#bytes@override (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load $0
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   if
    i32.const 41216
    i32.const 41264
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $5
   call $~lib/typedarray/Uint8Array#constructor
   local.tee $4
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i32.load $0 offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=16
   local.get $0
   local.get $5
   local.get $0
   i32.load $0
   i32.add
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.gt_u
   if
    i32.const 1248
    i32.const 3104
    i32.const 210
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   local.get $2
   local.get $5
   memory.copy $0 $0
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Reader/Reader#skipType@override (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load $0
  i32.const 10
  i32.eq
  if
   local.get $0
   local.get $1
   call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType
   return
  end
  unreachable
 )
 (func $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override (param $0 i32) (result i32)
  local.get $0
  i32.const 8
  i32.sub
  i32.load $0
  i32.const 12
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   if
    i32.const 41216
    i32.const 41264
    i32.const 1
    i32.const 1
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   i32.const 1664
   i32.store $0
   call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#uint32@override (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $folding-inner0
   block $default
    block $case1
     local.get $0
     i32.const 8
     i32.sub
     i32.load $0
     local.tee $2
     i32.const 4
     i32.ne
     if
      local.get $2
      i32.const 6
      i32.eq
      br_if $case1
      br $default
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store $0
     local.get $2
     i32.const 0
     i32.store $0 offset=8
     local.get $2
     local.get $0
     i32.store $0
     loop $while-continue|0
      local.get $1
      i32.const 127
      i32.gt_u
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $0
       i32.store $0 offset=4
       local.get $2
       local.get $0
       i32.store $0 offset=8
       local.get $0
       local.get $0
       i32.load $0 offset=4
       local.tee $2
       i32.const 1
       i32.add
       i32.store $0 offset=4
       local.get $2
       local.get $1
       i32.const 127
       i32.and
       i32.const 128
       i32.or
       i32.store8 $0
       local.get $1
       i32.const 7
       i32.shr_u
       local.set $1
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0 offset=4
     local.get $2
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $0
     i32.load $0 offset=4
     local.tee $0
     i32.const 1
     i32.add
     i32.store $0 offset=4
     local.get $0
     local.get $1
     i32.store8 $0
     local.get $2
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     return
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i64.const 0
    i64.store $0
    local.get $2
    i32.const 0
    i32.store $0 offset=8
    local.get $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $1
    i32.const 128
    i32.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $1
     i32.const 16384
     i32.lt_u
     if (result i32)
      i32.const 2
     else
      i32.const 3
      i32.const 4
      i32.const 5
      local.get $1
      i32.const 268435456
      i32.lt_u
      select
      local.get $1
      i32.const 2097152
      i32.lt_u
      select
     end
    end
    local.get $0
    i32.load $0
    i32.add
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   unreachable
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/context/TraceCtx#getStateChanges@override (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $folding-inner0
   block $tablify|0
    local.get $0
    i32.const 8
    i32.sub
    i32.load $0
    i32.const 36
    i32.sub
    br_table $folding-inner0 $tablify|0 $folding-inner0 $folding-inner0 $folding-inner0 $tablify|0
   end
   unreachable
  end
  block $__inlined_func$assembly/lib/context/PreContractCallCtx#getStateChanges (result i32)
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   block $folding-inner00
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner00
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store $0
    local.get $0
    i32.const 0
    i32.store $0 offset=8
    local.get $0
    local.get $1
    i32.store $0
    local.get $0
    i32.const 6896
    i32.store $0 offset=4
    local.get $0
    local.get $2
    i32.store $0 offset=8
    local.get $0
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner00
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i32.const 0
    i32.const 20
    memory.fill $0
    local.get $0
    local.get $1
    i32.store $0 offset=4
    local.get $1
    call $assembly/lib/types/basic_types/AString#constructor
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    call $assembly/lib/types/basic_types/AString#store
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 6896
    i32.store $0 offset=4
    i32.const 6896
    call $assembly/lib/types/basic_types/AString#constructor
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    call $assembly/lib/types/basic_types/AString#store
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0 offset=4
    local.get $2
    call $assembly/lib/types/basic_types/AUint8Array#constructor
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    local.get $0
    local.get $1
    local.get $2
    call $assembly/lib/types/basic_types/AUint8Array#store
    call $assembly/lib/host/hostapi/__HostApi__.getStateChanges
    local.set $0
    i32.const 0
    global.set $~argumentsLength
    global.get $~lib/memory/__stack_pointer
    call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
    local.tee $1
    i32.store $0 offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    local.get $0
    call $assembly/lib/types/basic_types/AUint8Array#load
    global.get $~lib/memory/__stack_pointer
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=4
    local.get $1
    call $assembly/lib/types/basic_types/AString#get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8176
    i32.store $0 offset=12
    i32.const 2
    global.set $~argumentsLength
    local.get $0
    local.get $1
    i32.const 8176
    call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>@varargs
    local.tee $0
    i32.store $0 offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $0
    br $__inlined_func$assembly/lib/context/PreContractCallCtx#getStateChanges
   end
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/array/Array<u32>~visit (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner7
   block $folding-inner0
    block $folding-inner6
     block $folding-inner5
      block $folding-inner4
       block $folding-inner3
        block $folding-inner2
         block $folding-inner1
          block $invalid
           block $assembly/lib/abi/ethereum/coders/ethereum.Coder
            block $assembly/aspect/honeypot/HoneyPot.balances
             block $assembly/lib/context/TraceCtx
              block $assembly/lib/context/ScheduleCtx
               block $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction
                block $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction
                 block $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput
                  block $assembly/lib/context/StateCtx
                   block $assembly/lib/types/basic_types/header
                    block $assembly/lib/interfaces/IAspectBlock
                     block $assembly/lib/interfaces/IAspectTransaction
                      block $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect
                       block $~lib/as-proto/assembly/Reader/Reader
                        block $~lib/array/Array<i32>
                         block $~lib/array/Array<u32>
                          block $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer
                           block $~lib/as-proto/assembly/Writer/Writer
                            block $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter
                             block $~lib/string/String
                              block $~lib/arraybuffer/ArrayBuffer
                               block $~lib/object/Object
                                local.get $0
                                i32.const 8
                                i32.sub
                                i32.load $0
                                br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner5 $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter $~lib/as-proto/assembly/Writer/Writer $~lib/as-proto/assembly/internal/FixedSizer/FixedSizer $~lib/array/Array<u32> $~lib/array/Array<i32> $folding-inner5 $folding-inner6 $~lib/as-proto/assembly/Reader/Reader $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect $assembly/lib/interfaces/IAspectTransaction $assembly/lib/interfaces/IAspectBlock $folding-inner1 $folding-inner1 $assembly/lib/types/basic_types/header $assembly/lib/context/StateCtx $folding-inner5 $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction $folding-inner1 $folding-inner2 $folding-inner2 $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction $folding-inner1 $folding-inner3 $folding-inner7 $folding-inner4 $folding-inner4 $assembly/lib/context/ScheduleCtx $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner4 $assembly/lib/context/TraceCtx $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner4 $folding-inner3 $assembly/aspect/honeypot/HoneyPot.balances $folding-inner5 $folding-inner5 $folding-inner5 $assembly/lib/abi/ethereum/coders/ethereum.Coder $folding-inner5 $folding-inner5 $folding-inner1 $folding-inner2 $folding-inner3 $folding-inner5 $folding-inner5 $folding-inner1 $folding-inner2 $folding-inner3 $invalid
                               end
                               return
                              end
                              return
                             end
                             return
                            end
                            local.get $0
                            i32.load $0
                            local.tee $1
                            if
                             local.get $1
                             call $byn-split-outlined-A$~lib/rt/itcms/__visit
                            end
                            local.get $0
                            i32.load $0 offset=8
                            local.tee $0
                            if
                             local.get $0
                             call $byn-split-outlined-A$~lib/rt/itcms/__visit
                            end
                            return
                           end
                           return
                          end
                          local.get $0
                          i32.load $0 offset=4
                          local.tee $1
                          if
                           local.get $1
                           call $byn-split-outlined-A$~lib/rt/itcms/__visit
                          end
                          local.get $0
                          i32.load $0 offset=8
                          local.tee $1
                          if
                           local.get $1
                           call $byn-split-outlined-A$~lib/rt/itcms/__visit
                          end
                          local.get $0
                          i32.load $0 offset=12
                          local.tee $0
                          if
                           local.get $0
                           call $byn-split-outlined-A$~lib/rt/itcms/__visit
                          end
                          return
                         end
                         local.get $0
                         call $~lib/array/Array<u32>~visit
                         return
                        end
                        local.get $0
                        call $~lib/array/Array<u32>~visit
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
                   return
                  end
                  return
                 end
                 local.get $0
                 i32.load $0 offset=8
                 local.tee $1
                 if
                  local.get $1
                  call $byn-split-outlined-A$~lib/rt/itcms/__visit
                 end
                 local.get $0
                 i32.load $0 offset=12
                 local.tee $0
                 if
                  local.get $0
                  call $byn-split-outlined-A$~lib/rt/itcms/__visit
                 end
                 return
                end
                local.get $0
                i32.load $0
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=16
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=20
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=40
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=56
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=60
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=64
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=80
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=84
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=104
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=108
                local.tee $1
                if
                 local.get $1
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                local.get $0
                i32.load $0 offset=112
                local.tee $0
                if
                 local.get $0
                 call $byn-split-outlined-A$~lib/rt/itcms/__visit
                end
                return
               end
               local.get $0
               i32.load $0
               local.tee $1
               if
                local.get $1
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load $0 offset=4
               local.tee $1
               if
                local.get $1
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load $0 offset=8
               local.tee $1
               if
                local.get $1
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load $0 offset=12
               local.tee $1
               if
                local.get $1
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load $0 offset=16
               local.tee $1
               if
                local.get $1
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
               local.get $0
               i32.load $0 offset=32
               local.tee $0
               if
                local.get $0
                call $byn-split-outlined-A$~lib/rt/itcms/__visit
               end
               return
              end
              return
             end
             return
            end
            local.get $0
            i32.load $0
            local.tee $1
            if
             local.get $1
             call $byn-split-outlined-A$~lib/rt/itcms/__visit
            end
            local.get $0
            i32.load $0 offset=4
            local.tee $1
            if
             local.get $1
             call $byn-split-outlined-A$~lib/rt/itcms/__visit
            end
            br $folding-inner6
           end
           return
          end
          unreachable
         end
         local.get $0
         i32.load $0
         local.tee $1
         if
          local.get $1
          call $byn-split-outlined-A$~lib/rt/itcms/__visit
         end
         br $folding-inner7
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 8428
        i32.lt_s
        br_if $folding-inner0
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        i32.const 0
        i32.store $0
        local.get $2
        local.get $0
        i32.store $0
        local.get $0
        i32.load $0 offset=4
        local.set $1
        local.get $2
        local.get $0
        i32.store $0
        local.get $1
        local.get $0
        i32.load $0 offset=12
        i32.const 2
        i32.shl
        i32.add
        local.set $2
        loop $while-continue|0
         local.get $1
         local.get $2
         i32.lt_u
         if
          local.get $1
          i32.load $0
          local.tee $3
          if
           local.get $3
           call $byn-split-outlined-A$~lib/rt/itcms/__visit
          end
          local.get $1
          i32.const 4
          i32.add
          local.set $1
          br $while-continue|0
         end
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0
        local.get $0
        i32.load $0
        local.tee $0
        if
         local.get $0
         call $byn-split-outlined-A$~lib/rt/itcms/__visit
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        return
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 8428
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       i32.const 0
       i32.store $0
       local.get $1
       local.get $0
       i32.store $0
       local.get $0
       i32.load $0 offset=4
       local.tee $0
       if
        local.get $0
        call $byn-split-outlined-A$~lib/rt/itcms/__visit
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       return
      end
      local.get $0
      i32.load $0 offset=8
      local.tee $0
      if
       local.get $0
       call $byn-split-outlined-A$~lib/rt/itcms/__visit
      end
      return
     end
     local.get $0
     i32.load $0
     local.tee $0
     if
      local.get $0
      call $byn-split-outlined-A$~lib/rt/itcms/__visit
     end
     return
    end
    local.get $0
    i32.load $0 offset=8
    local.tee $0
    if
     local.get $0
     call $byn-split-outlined-A$~lib/rt/itcms/__visit
    end
    return
   end
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load $0 offset=4
  local.tee $0
  if
   local.get $0
   call $byn-split-outlined-A$~lib/rt/itcms/__visit
  end
 )
 (func $~start
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store $0
   memory.size $0
   i32.const 16
   i32.shl
   i32.const 41196
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1172
   i32.const 1168
   i32.store $0
   i32.const 1176
   i32.const 1168
   i32.store $0
   i32.const 1168
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1204
   i32.const 1200
   i32.store $0
   i32.const 1208
   i32.const 1200
   i32.store $0
   i32.const 1200
   global.set $~lib/rt/itcms/toSpace
   i32.const 1348
   i32.const 1344
   i32.store $0
   i32.const 1352
   i32.const 1344
   i32.store $0
   i32.const 1344
   global.set $~lib/rt/itcms/fromSpace
   call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#constructor
   global.set $~lib/as-proto/assembly/Protobuf/WRITER
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 0
   i32.store $0 offset=8
   local.get $0
   i32.const 12
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store $0
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.const 11
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store $0
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0 offset=4
   local.get $3
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $0
   local.get $2
   i32.load $0 offset=4
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $2
   i32.load $0 offset=4
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $0
   local.get $1
   local.get $2
   i32.load $0 offset=8
   i32.add
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $0
   local.get $2
   i32.store $0 offset=8
   local.get $2
   if
    local.get $0
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $~lib/as-proto/assembly/Protobuf/READER
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   i32.const 0
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   call $~lib/object/Object#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $assembly/index/firstAspect
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/index/firstAspect
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   i32.const 8
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   local.get $0
   i32.store $0 offset=8
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   if
    local.get $1
    local.get $0
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   local.get $0
   i32.store $0 offset=8
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   if
    local.get $1
    local.get $0
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   global.set $assembly/index/entry
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Writer/Writer#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  call $~lib/object/Object#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  i64.const 0
  i64.store $0 offset=8
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 3
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=4
  local.get $3
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 1073741820
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 1552
   i32.const 1600
   i32.const 19
   i32.const 57
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  local.get $0
  local.get $2
  i32.store $0
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0 offset=4
  local.get $3
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $3
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=4
  local.get $2
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.const 32
   memory.fill $0
   local.get $0
   i32.const 16
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=12
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   call $~lib/as-proto/assembly/Writer/Writer#constructor
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   local.get $2
   i32.const 16
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0
   local.get $3
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $2
   i32.store $0 offset=4
   local.get $3
   local.get $2
   call $~lib/as-proto/assembly/Writer/Writer#constructor
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   i32.const 0
   i32.const 7
   i32.const 1456
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $2
   local.get $3
   i32.store $0 offset=4
   local.get $3
   if
    local.get $2
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   i32.const 0
   i32.const 8
   i32.const 1488
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $2
   local.get $3
   i32.store $0 offset=8
   local.get $3
   if
    local.get $2
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   i32.const 0
   i32.const 8
   i32.const 1520
   call $~lib/rt/__newArray
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $2
   local.get $3
   i32.store $0 offset=12
   local.get $3
   if
    local.get $2
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $0
   local.get $2
   i32.store $0
   local.get $2
   if
    local.get $0
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.load $0
   local.tee $1
   i32.store $0 offset=16
   local.get $2
   local.get $0
   i32.store $0 offset=20
   local.get $2
   local.get $0
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.store $0 offset=24
   i32.const 0
   local.get $1
   i32.load $0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=8
   local.get $0
   local.get $1
   i32.store $0 offset=8
   local.get $1
   if
    local.get $0
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=4
   local.get $2
   local.get $0
   i32.load $0 offset=8
   local.tee $2
   i32.store $0 offset=28
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $0
   local.get $2
   i32.load $0 offset=4
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   i32.store $0 offset=12
   local.get $1
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/types/basic_types/header#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i32.const 8
  i32.const 17
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store16 $0
  local.get $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=4
  local.get $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store16 $0
  local.get $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $3
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/lib/types/basic_types/AString#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  i32.const 8
  i32.const 16
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  if
   local.get $1
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=12
  i32.const 10
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  call $assembly/lib/types/basic_types/header#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  if
   local.get $1
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/lib/types/basic_types/header#load (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.load16_s $0
  i32.store16 $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $1
  i32.load $0 offset=2
  i32.store $0 offset=4
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/AString#load (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $0
  i32.store $0
  i32.const 0
  i32.const 0
  call $assembly/lib/types/basic_types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.load $0
  local.tee $2
  i32.store $0
  local.get $2
  local.get $1
  call $assembly/lib/types/basic_types/header#load
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0
  local.tee $2
  i32.store $0 offset=8
  local.get $1
  i32.const 6
  i32.add
  local.get $2
  i32.load $0 offset=4
  call $~lib/string/String.UTF8.decodeUnsafe
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/AString#get (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $2
   local.get $3
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $1
   i32.store $0 offset=4
   local.get $0
   i32.const 0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $assembly/lib/entry/Entry#loadInputString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  i32.const 0
  i32.store $0 offset=8
  local.get $1
  i32.const 1664
  i32.store $0
  local.get $1
  i32.const 1664
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $1
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $1
  local.get $0
  call $assembly/lib/types/basic_types/AString#load
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $1
  call $assembly/lib/types/basic_types/AString#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/basic_types/header#store (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load16_s $0
  i32.extend16_s
  i32.store16 $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.store $0 offset=2
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/entry/Entry#storeOutputBool (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   local.get $2
   i32.const 5
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store8 $0 offset=4
   local.get $3
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store8 $0 offset=4
   local.get $3
   local.get $2
   i32.store $0 offset=4
   i32.const 9
   i32.const 1
   call $assembly/lib/types/basic_types/header#constructor
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=8
   local.get $2
   local.get $3
   i32.store $0
   local.get $3
   if
    local.get $2
    local.get $3
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $2
   i32.store $0
   local.get $2
   local.get $0
   i32.store8 $0 offset=4
   local.get $1
   local.get $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.load $0
   local.tee $0
   i32.store $0
   local.get $0
   i32.const 1
   i32.store $0 offset=4
   local.get $1
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   local.get $2
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.load $0
   local.tee $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $1
   local.get $0
   local.get $2
   i32.store $0 offset=4
   local.get $0
   local.get $2
   i32.load $0
   i32.store $0
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $1
   i32.const 6
   i32.add
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.load $0
   local.tee $1
   i32.store $0
   local.get $1
   local.get $0
   call $assembly/lib/types/basic_types/header#store
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $0
   local.get $2
   i32.load8_u $0 offset=4
   i32.const 0
   i32.ne
   i32.store8 $0 offset=6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Uint8Array#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=8
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/basic_types/AUint8Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  i32.const 8
  i32.const 26
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  if
   local.get $1
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=12
  i32.const 11
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  call $assembly/lib/types/basic_types/header#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  if
   local.get $1
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/lib/types/basic_types/AUint8Array#constructor@varargs (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
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
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  call $assembly/lib/types/basic_types/AUint8Array#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=8
  i32.ge_u
  if
   i32.const 1248
   i32.const 1984
   i32.const 178
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.add
  local.get $2
  i32.store8 $0
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/AUint8Array#load (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $0
  i32.store $0
  i32.const 0
  i32.const 0
  call $assembly/lib/types/basic_types/header#constructor
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0
  local.get $2
  if
   local.get $0
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.load $0
  local.tee $2
  i32.store $0
  local.get $2
  local.get $1
  call $assembly/lib/types/basic_types/header#load
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0
  i32.store $0
  local.get $1
  i32.const 6
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0
  local.tee $1
  i32.store $0 offset=8
  i32.const 0
  local.get $1
  i32.load $0 offset=4
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  i32.const 0
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0 offset=4
   local.get $3
   local.get $0
   i32.load $0
   local.tee $3
   i32.store $0
   local.get $1
   local.get $3
   i32.load $0 offset=4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $3
    local.get $0
    i32.store $0 offset=4
    local.get $3
    local.get $0
    i32.load $0 offset=4
    local.tee $3
    i32.store $0
    local.get $3
    local.get $1
    local.get $2
    i32.load8_u $0
    call $~lib/typedarray/Uint8Array#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $7
  i64.const 0
  i64.store $0
  local.get $7
  i32.const 0
  i32.store $0 offset=8
  local.get $7
  i32.const 116
  i32.const 21
  call $~lib/rt/itcms/__new
  local.tee $7
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=8
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=20
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=24
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=32
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=40
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=48
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=56
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=60
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=64
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=72
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=80
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=84
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=88
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=96
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=104
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=108
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i32.const 0
  i32.store $0 offset=112
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $8
  i32.const 1664
  i32.store $0 offset=8
  local.get $7
  i32.const 1664
  i32.store $0
  local.get $7
  i32.const 1664
  i32.const 0
  call $byn-split-outlined-A$~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=8
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $8
  i32.const 1664
  i32.store $0 offset=8
  local.get $7
  i32.const 1664
  i32.store $0 offset=16
  local.get $7
  i32.const 1664
  i32.const 0
  call $byn-split-outlined-A$~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $8
  i32.const 1664
  i32.store $0 offset=8
  local.get $7
  i32.const 1664
  i32.store $0 offset=20
  local.get $7
  i32.const 1664
  i32.const 0
  call $byn-split-outlined-A$~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=24
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=32
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $8
  i32.const 1664
  i32.store $0 offset=8
  local.get $7
  i32.const 1664
  i32.store $0 offset=40
  local.get $7
  i32.const 1664
  i32.const 0
  call $byn-split-outlined-A$~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=48
  local.get $8
  local.get $7
  i32.store $0 offset=4
  local.get $8
  local.get $0
  i32.store $0 offset=8
  local.get $7
  local.get $0
  i32.store $0 offset=56
  local.get $0
  if
   local.get $7
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $7
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=8
  local.get $7
  local.get $1
  i32.store $0 offset=60
  local.get $1
  if
   local.get $7
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $7
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0 offset=8
  local.get $7
  local.get $2
  i32.store $0 offset=64
  local.get $2
  if
   local.get $7
   local.get $2
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=72
  local.get $0
  local.get $7
  i32.store $0 offset=4
  local.get $0
  i32.const 1664
  i32.store $0 offset=8
  local.get $7
  i32.const 1664
  i32.store $0 offset=80
  local.get $7
  i32.const 1664
  i32.const 0
  call $byn-split-outlined-A$~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $7
  i32.store $0 offset=4
  local.get $0
  local.get $3
  i32.store $0 offset=8
  local.get $7
  local.get $3
  i32.store $0 offset=84
  local.get $3
  if
   local.get $7
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=88
  local.get $0
  local.get $7
  i32.store $0 offset=4
  local.get $7
  i64.const 0
  i64.store $0 offset=96
  local.get $0
  local.get $7
  i32.store $0 offset=4
  local.get $0
  local.get $4
  i32.store $0 offset=8
  local.get $7
  local.get $4
  i32.store $0 offset=104
  local.get $4
  if
   local.get $7
   local.get $4
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $7
  i32.store $0 offset=4
  local.get $0
  local.get $5
  i32.store $0 offset=8
  local.get $7
  local.get $5
  i32.store $0 offset=108
  local.get $5
  if
   local.get $7
   local.get $5
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $7
  i32.store $0 offset=4
  local.get $0
  local.get $6
  i32.store $0 offset=8
  local.get $7
  local.get $6
  i32.store $0 offset=112
  local.get $6
  if
   local.get $7
   local.get $6
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=8
  local.tee $3
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 268435455
   i32.gt_u
   if
    i32.const 1552
    i32.const 2112
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 8
   local.get $1
   local.get $1
   i32.const 8
   i32.le_u
   select
   i32.const 2
   i32.shl
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $2
   if
    i32.const 1073741820
    local.get $3
    i32.const 1
    i32.shl
    local.tee $2
    local.get $2
    i32.const 1073741820
    i32.ge_u
    select
    local.tee $2
    local.get $1
    local.get $1
    local.get $2
    i32.lt_u
    select
    local.set $1
   end
   local.get $0
   i32.load $0
   local.tee $4
   local.get $1
   call $~lib/rt/itcms/__renew
   local.tee $2
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $2
    i32.store $0
    local.get $0
    local.get $2
    i32.store $0 offset=4
    local.get $2
    if
     local.get $0
     local.get $2
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
   end
   local.get $0
   local.get $1
   i32.store $0 offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 1
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=12
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   memory.fill $0
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0
    i32.add
   end
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 1664
   i32.store $0 offset=4
   local.get $1
   i32.const 1664
   i32.store $0 offset=8
   local.get $1
   i32.const 1664
   i32.store $0 offset=12
   local.get $1
   i32.const 1664
   i32.store $0 offset=16
   local.get $1
   i32.const 1664
   i32.store $0 offset=20
   i32.const 0
   global.set $~argumentsLength
   local.get $1
   i32.const 100
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 100
   memory.fill $0
   block $19of19
    block $18of19
     block $17of19
      block $16of19
       block $13of19
        block $12of19
         block $10of19
          block $9of19
           block $8of19
            block $6of19
             block $3of19
              block $2of19
               block $0of19
                block $outOfRange
                 global.get $~argumentsLength
                 br_table $0of19 $2of19 $2of19 $3of19 $6of19 $6of19 $6of19 $8of19 $8of19 $9of19 $10of19 $12of19 $12of19 $13of19 $16of19 $16of19 $16of19 $17of19 $18of19 $19of19 $outOfRange
                end
                unreachable
               end
               global.get $~lib/memory/__stack_pointer
               i32.const 1664
               i32.store $0
              end
              global.get $~lib/memory/__stack_pointer
              i32.const 1664
              i32.store $0 offset=4
             end
             global.get $~lib/memory/__stack_pointer
             i32.const 1664
             i32.store $0 offset=8
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 1664
            i32.store $0 offset=12
           end
           global.get $~lib/memory/__stack_pointer
           i32.const 0
           i32.const 0
           call $~lib/typedarray/Uint8Array#constructor
           local.tee $7
           i32.store $0 offset=16
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 0
          i32.const 24
          i32.const 2048
          call $~lib/rt/__newArray
          local.tee $8
          i32.store $0 offset=20
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.const 0
         call $~lib/typedarray/Uint8Array#constructor
         local.tee $4
         i32.store $0 offset=24
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 1664
        i32.store $0 offset=28
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 0
       call $~lib/typedarray/Uint8Array#constructor
       local.tee $2
       i32.store $0 offset=32
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 0
      call $~lib/typedarray/Uint8Array#constructor
      local.tee $5
      i32.store $0 offset=36
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $3
     i32.store $0 offset=40
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 0
    call $~lib/typedarray/Uint8Array#constructor
    local.tee $6
    i32.store $0 offset=44
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $9
   i32.const 0
   i32.store $0 offset=48
   local.get $9
   i32.const 1664
   i32.store $0 offset=52
   local.get $9
   i32.const 1664
   i32.store $0 offset=56
   local.get $9
   i32.const 1664
   i32.store $0 offset=60
   local.get $9
   i32.const 1664
   i32.store $0 offset=64
   local.get $9
   local.get $7
   i32.store $0 offset=68
   local.get $9
   local.get $8
   i32.store $0 offset=72
   local.get $9
   local.get $4
   i32.store $0 offset=76
   local.get $9
   i32.const 1664
   i32.store $0 offset=80
   local.get $9
   local.get $2
   i32.store $0 offset=84
   local.get $9
   local.get $5
   i32.store $0 offset=88
   local.get $9
   local.get $3
   i32.store $0 offset=92
   local.get $9
   local.get $6
   i32.store $0 offset=96
   local.get $7
   local.get $8
   local.get $4
   local.get $2
   local.get $5
   local.get $3
   local.get $6
   call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction#constructor
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 100
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   local.get $3
   i32.store $0 offset=24
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $10
    local.get $0
    i32.load $0
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
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
                         local.get $0
                         call $~lib/as-proto/assembly/Reader/Reader#uint32@override
                         local.tee $1
                         i32.const 3
                         i32.shr_u
                         i32.const 1
                         i32.sub
                         br_table $case0|1 $case1|1 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1 $case7|1 $case8|1 $case9|1 $case10|1 $case11|1 $case12|1 $case13|1 $case14|1 $case15|1 $case16|1 $case17|1 $case18|1 $case19|1
                        end
                        global.get $~lib/memory/__stack_pointer
                        local.tee $1
                        local.get $3
                        i32.store $0
                        local.get $1
                        local.get $0
                        i32.store $0 offset=28
                        local.get $0
                        call $~lib/as-proto/assembly/Reader/Reader#string@override
                        local.set $1
                        global.get $~lib/memory/__stack_pointer
                        local.get $1
                        i32.store $0 offset=4
                        local.get $3
                        local.get $1
                        i32.store $0
                        local.get $1
                        if
                         local.get $3
                         local.get $1
                         i32.const 0
                         call $byn-split-outlined-A$~lib/rt/itcms/__link
                        end
                        br $while-continue|0
                       end
                       global.get $~lib/memory/__stack_pointer
                       local.tee $1
                       local.get $3
                       i32.store $0
                       local.get $1
                       local.get $0
                       i32.store $0 offset=4
                       local.get $3
                       local.get $0
                       call $~lib/as-proto/assembly/Reader/Reader#int64@override
                       i64.store $0 offset=8
                       br $while-continue|0
                      end
                      global.get $~lib/memory/__stack_pointer
                      local.tee $1
                      local.get $3
                      i32.store $0
                      local.get $1
                      local.get $0
                      i32.store $0 offset=28
                      local.get $0
                      call $~lib/as-proto/assembly/Reader/Reader#string@override
                      local.set $1
                      global.get $~lib/memory/__stack_pointer
                      local.get $1
                      i32.store $0 offset=4
                      local.get $3
                      local.get $1
                      i32.store $0 offset=16
                      local.get $1
                      if
                       local.get $3
                       local.get $1
                       i32.const 0
                       call $byn-split-outlined-A$~lib/rt/itcms/__link
                      end
                      br $while-continue|0
                     end
                     global.get $~lib/memory/__stack_pointer
                     local.tee $1
                     local.get $3
                     i32.store $0
                     local.get $1
                     local.get $0
                     i32.store $0 offset=28
                     local.get $0
                     call $~lib/as-proto/assembly/Reader/Reader#string@override
                     local.set $1
                     global.get $~lib/memory/__stack_pointer
                     local.get $1
                     i32.store $0 offset=4
                     local.get $3
                     local.get $1
                     i32.store $0 offset=20
                     local.get $1
                     if
                      local.get $3
                      local.get $1
                      i32.const 0
                      call $byn-split-outlined-A$~lib/rt/itcms/__link
                     end
                     br $while-continue|0
                    end
                    global.get $~lib/memory/__stack_pointer
                    local.tee $1
                    local.get $3
                    i32.store $0
                    local.get $1
                    local.get $0
                    i32.store $0 offset=4
                    local.get $3
                    local.get $0
                    call $~lib/as-proto/assembly/Reader/Reader#int64@override
                    i64.store $0 offset=24
                    br $while-continue|0
                   end
                   global.get $~lib/memory/__stack_pointer
                   local.tee $1
                   local.get $3
                   i32.store $0
                   local.get $1
                   local.get $0
                   i32.store $0 offset=4
                   local.get $3
                   local.get $0
                   call $~lib/as-proto/assembly/Reader/Reader#int64@override
                   i64.store $0 offset=32
                   br $while-continue|0
                  end
                  global.get $~lib/memory/__stack_pointer
                  local.tee $1
                  local.get $3
                  i32.store $0
                  local.get $1
                  local.get $0
                  i32.store $0 offset=28
                  local.get $0
                  call $~lib/as-proto/assembly/Reader/Reader#string@override
                  local.set $1
                  global.get $~lib/memory/__stack_pointer
                  local.get $1
                  i32.store $0 offset=4
                  local.get $3
                  local.get $1
                  i32.store $0 offset=40
                  local.get $1
                  if
                   local.get $3
                   local.get $1
                   i32.const 0
                   call $byn-split-outlined-A$~lib/rt/itcms/__link
                  end
                  br $while-continue|0
                 end
                 global.get $~lib/memory/__stack_pointer
                 local.tee $1
                 local.get $3
                 i32.store $0
                 local.get $1
                 local.get $0
                 i32.store $0 offset=4
                 local.get $3
                 local.get $0
                 call $~lib/as-proto/assembly/Reader/Reader#int64@override
                 i64.store $0 offset=48
                 br $while-continue|0
                end
                global.get $~lib/memory/__stack_pointer
                local.tee $1
                local.get $3
                i32.store $0
                local.get $1
                local.get $0
                i32.store $0 offset=28
                local.get $0
                call $~lib/as-proto/assembly/Reader/Reader#bytes@override
                local.set $1
                global.get $~lib/memory/__stack_pointer
                local.get $1
                i32.store $0 offset=4
                local.get $3
                local.get $1
                i32.store $0 offset=56
                local.get $1
                if
                 local.get $3
                 local.get $1
                 i32.const 0
                 call $byn-split-outlined-A$~lib/rt/itcms/__link
                end
                br $while-continue|0
               end
               global.get $~lib/memory/__stack_pointer
               local.tee $1
               local.get $3
               i32.store $0 offset=28
               local.get $1
               local.get $3
               i32.load $0 offset=60
               local.tee $4
               i32.store $0
               local.get $1
               local.get $0
               i32.store $0 offset=28
               local.get $1
               local.get $0
               i32.store $0 offset=8
               local.get $0
               call $~lib/as-proto/assembly/Reader/Reader#uint32@override
               local.set $1
               global.get $~lib/memory/__stack_pointer
               i32.const 16
               i32.sub
               global.set $~lib/memory/__stack_pointer
               global.get $~lib/memory/__stack_pointer
               i32.const 8428
               i32.lt_s
               br_if $folding-inner1
               global.get $~lib/memory/__stack_pointer
               local.tee $2
               i64.const 0
               i64.store $0
               local.get $2
               i64.const 0
               i64.store $0 offset=8
               local.get $1
               i32.const 0
               i32.lt_s
               if (result i32)
                global.get $~lib/memory/__stack_pointer
                local.get $0
                i32.store $0
                local.get $0
                i32.load $0 offset=4
               else
                global.get $~lib/memory/__stack_pointer
                local.get $0
                i32.store $0
                local.get $1
                local.get $0
                i32.load $0
                i32.add
               end
               local.set $1
               global.get $~lib/memory/__stack_pointer
               local.tee $5
               i32.const 1664
               i32.store $0 offset=4
               i32.const 0
               global.set $~argumentsLength
               i32.const 0
               local.set $2
               local.get $5
               i32.const 20
               i32.sub
               global.set $~lib/memory/__stack_pointer
               global.get $~lib/memory/__stack_pointer
               i32.const 8428
               i32.lt_s
               br_if $folding-inner1
               global.get $~lib/memory/__stack_pointer
               i32.const 0
               i32.const 20
               memory.fill $0
               block $2of2
                block $1of2
                 block $0of2
                  block $outOfRange0
                   global.get $~argumentsLength
                   br_table $0of2 $1of2 $2of2 $outOfRange0
                  end
                  unreachable
                 end
                 global.get $~lib/memory/__stack_pointer
                 i32.const 1664
                 i32.store $0
                end
                global.get $~lib/memory/__stack_pointer
                i32.const 0
                i32.const 23
                i32.const 2080
                call $~lib/rt/__newArray
                local.tee $2
                i32.store $0 offset=4
               end
               global.get $~lib/memory/__stack_pointer
               local.tee $6
               i32.const 0
               i32.store $0 offset=8
               local.get $6
               i32.const 1664
               i32.store $0 offset=12
               local.get $6
               local.get $2
               i32.store $0 offset=16
               local.get $6
               i32.const 12
               i32.sub
               global.set $~lib/memory/__stack_pointer
               global.get $~lib/memory/__stack_pointer
               i32.const 8428
               i32.lt_s
               br_if $folding-inner1
               global.get $~lib/memory/__stack_pointer
               local.tee $6
               i64.const 0
               i64.store $0
               local.get $6
               i32.const 0
               i32.store $0 offset=8
               local.get $6
               i32.const 8
               i32.const 22
               call $~lib/rt/itcms/__new
               local.tee $6
               i32.store $0
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store $0 offset=4
               local.get $6
               i32.const 0
               i32.store $0
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store $0 offset=4
               local.get $6
               i32.const 0
               i32.store $0 offset=4
               global.get $~lib/memory/__stack_pointer
               local.tee $7
               local.get $6
               i32.store $0 offset=4
               local.get $7
               i32.const 1664
               i32.store $0 offset=8
               local.get $6
               i32.const 1664
               i32.store $0
               local.get $6
               i32.const 1664
               i32.const 0
               call $byn-split-outlined-A$~lib/rt/itcms/__link
               global.get $~lib/memory/__stack_pointer
               local.tee $7
               local.get $6
               i32.store $0 offset=4
               local.get $7
               local.get $2
               i32.store $0 offset=8
               local.get $6
               local.get $2
               i32.store $0 offset=4
               local.get $2
               if
                local.get $6
                local.get $2
                i32.const 0
                call $byn-split-outlined-A$~lib/rt/itcms/__link
               end
               global.get $~lib/memory/__stack_pointer
               i32.const 12
               i32.add
               global.set $~lib/memory/__stack_pointer
               global.get $~lib/memory/__stack_pointer
               i32.const 20
               i32.add
               global.set $~lib/memory/__stack_pointer
               local.get $5
               local.get $6
               i32.store $0 offset=8
               loop $while-continue|04
                global.get $~lib/memory/__stack_pointer
                local.get $0
                i32.store $0
                local.get $1
                local.get $0
                i32.load $0
                i32.gt_u
                if
                 global.get $~lib/memory/__stack_pointer
                 local.get $0
                 i32.store $0
                 block $case2|17
                  block $case1|18
                   local.get $0
                   call $~lib/as-proto/assembly/Reader/Reader#uint32@override
                   local.tee $2
                   i32.const 3
                   i32.shr_u
                   local.tee $5
                   i32.const 1
                   i32.ne
                   if
                    local.get $5
                    i32.const 2
                    i32.eq
                    br_if $case1|18
                    br $case2|17
                   end
                   global.get $~lib/memory/__stack_pointer
                   local.tee $2
                   local.get $6
                   i32.store $0
                   local.get $2
                   local.get $0
                   i32.store $0 offset=12
                   local.get $0
                   call $~lib/as-proto/assembly/Reader/Reader#string@override
                   local.set $2
                   global.get $~lib/memory/__stack_pointer
                   local.get $2
                   i32.store $0 offset=4
                   local.get $6
                   local.get $2
                   i32.store $0
                   local.get $2
                   if
                    local.get $6
                    local.get $2
                    i32.const 0
                    call $byn-split-outlined-A$~lib/rt/itcms/__link
                   end
                   br $while-continue|04
                  end
                  global.get $~lib/memory/__stack_pointer
                  local.tee $2
                  local.get $6
                  i32.store $0 offset=12
                  local.get $2
                  local.get $6
                  i32.load $0 offset=4
                  local.tee $5
                  i32.store $0
                  local.get $2
                  local.get $0
                  i32.store $0 offset=12
                  local.get $0
                  call $~lib/as-proto/assembly/Reader/Reader#string@override
                  local.set $2
                  global.get $~lib/memory/__stack_pointer
                  local.get $2
                  i32.store $0 offset=4
                  local.get $5
                  local.get $2
                  call $~lib/array/Array<~lib/string/String>#push
                  br $while-continue|04
                 end
                 global.get $~lib/memory/__stack_pointer
                 local.get $0
                 i32.store $0
                 local.get $0
                 local.get $2
                 i32.const 7
                 i32.and
                 call $~lib/as-proto/assembly/Reader/Reader#skipType@override
                 br $while-continue|04
                end
               end
               global.get $~lib/memory/__stack_pointer
               i32.const 16
               i32.add
               global.set $~lib/memory/__stack_pointer
               global.get $~lib/memory/__stack_pointer
               local.get $6
               i32.store $0 offset=4
               local.get $4
               local.get $6
               call $~lib/array/Array<~lib/string/String>#push
               br $while-continue|0
              end
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              local.get $3
              i32.store $0
              local.get $1
              local.get $0
              i32.store $0 offset=28
              local.get $0
              call $~lib/as-proto/assembly/Reader/Reader#bytes@override
              local.set $1
              global.get $~lib/memory/__stack_pointer
              local.get $1
              i32.store $0 offset=4
              local.get $3
              local.get $1
              i32.store $0 offset=64
              local.get $1
              if
               local.get $3
               local.get $1
               i32.const 0
               call $byn-split-outlined-A$~lib/rt/itcms/__link
              end
              br $while-continue|0
             end
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             local.get $3
             i32.store $0
             local.get $1
             local.get $0
             i32.store $0 offset=4
             local.get $3
             local.get $0
             call $~lib/as-proto/assembly/Reader/Reader#int64@override
             i64.store $0 offset=72
             br $while-continue|0
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $3
            i32.store $0
            local.get $1
            local.get $0
            i32.store $0 offset=28
            local.get $0
            call $~lib/as-proto/assembly/Reader/Reader#string@override
            local.set $1
            global.get $~lib/memory/__stack_pointer
            local.get $1
            i32.store $0 offset=4
            local.get $3
            local.get $1
            i32.store $0 offset=80
            local.get $1
            if
             local.get $3
             local.get $1
             i32.const 0
             call $byn-split-outlined-A$~lib/rt/itcms/__link
            end
            br $while-continue|0
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $1
           local.get $3
           i32.store $0
           local.get $1
           local.get $0
           i32.store $0 offset=28
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#bytes@override
           local.set $1
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store $0 offset=4
           local.get $3
           local.get $1
           i32.store $0 offset=84
           local.get $1
           if
            local.get $3
            local.get $1
            i32.const 0
            call $byn-split-outlined-A$~lib/rt/itcms/__link
           end
           br $while-continue|0
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $3
          i32.store $0
          local.get $1
          local.get $0
          i32.store $0 offset=4
          local.get $3
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#int64@override
          i64.store $0 offset=88
          br $while-continue|0
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $3
         i32.store $0
         local.get $1
         local.get $0
         i32.store $0 offset=4
         local.get $3
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#int64@override
         i64.store $0 offset=96
         br $while-continue|0
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $3
        i32.store $0
        local.get $1
        local.get $0
        i32.store $0 offset=28
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#bytes@override
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=4
        local.get $3
        local.get $1
        i32.store $0 offset=104
        local.get $1
        if
         local.get $3
         local.get $1
         i32.const 0
         call $byn-split-outlined-A$~lib/rt/itcms/__link
        end
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $3
       i32.store $0
       local.get $1
       local.get $0
       i32.store $0 offset=28
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#bytes@override
       local.set $1
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=4
       local.get $3
       local.get $1
       i32.store $0 offset=108
       local.get $1
       if
        local.get $3
        local.get $1
        i32.const 0
        call $byn-split-outlined-A$~lib/rt/itcms/__link
       end
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $3
      i32.store $0
      local.get $1
      local.get $0
      i32.store $0 offset=28
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#bytes@override
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=4
      local.get $3
      local.get $1
      i32.store $0 offset=112
      local.get $1
      if
       local.get $3
       local.get $1
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     local.get $0
     local.get $1
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill $0
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0
    i32.add
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 1664
   i32.store $0 offset=4
   local.get $3
   i32.const 1664
   i32.store $0 offset=8
   local.get $3
   i32.const 1664
   i32.store $0 offset=12
   local.get $3
   i32.const 1664
   i32.store $0 offset=16
   i32.const 0
   global.set $~argumentsLength
   local.get $3
   i32.const 48
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 48
   memory.fill $0
   block $7of7
    block $4of7
     block $3of7
      block $2of7
       block $1of7
        block $0of7
         block $outOfRange
          global.get $~argumentsLength
          br_table $0of7 $1of7 $2of7 $3of7 $4of7 $7of7 $7of7 $7of7 $outOfRange
         end
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 1664
        i32.store $0
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 1664
       i32.store $0 offset=4
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 0
      call $~lib/typedarray/Uint8Array#constructor
      local.tee $2
      i32.store $0 offset=8
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 1664
     i32.store $0 offset=12
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 1664
    i32.store $0 offset=16
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 0
   i32.store $0 offset=20
   local.get $4
   i32.const 1664
   i32.store $0 offset=24
   local.get $4
   i32.const 1664
   i32.store $0 offset=28
   local.get $4
   local.get $2
   i32.store $0 offset=32
   local.get $4
   i32.const 1664
   i32.store $0 offset=36
   local.get $4
   i32.const 1664
   i32.store $0 offset=40
   local.get $4
   i32.const 0
   i32.store $0 offset=44
   local.get $4
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store $0
   local.get $4
   i32.const 0
   i32.store $0 offset=8
   local.get $4
   i32.const 36
   i32.const 25
   call $~lib/rt/itcms/__new
   local.tee $4
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i64.const 0
   i64.store $0 offset=24
   local.get $5
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0 offset=32
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $4
   i32.store $0 offset=4
   local.get $5
   i32.const 1664
   i32.store $0 offset=8
   local.get $4
   i32.const 1664
   i32.store $0
   local.get $4
   i32.const 1664
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $4
   i32.store $0 offset=4
   local.get $5
   i32.const 1664
   i32.store $0 offset=8
   local.get $4
   i32.const 1664
   i32.store $0 offset=4
   local.get $4
   i32.const 1664
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $4
   i32.store $0 offset=4
   local.get $5
   local.get $2
   i32.store $0 offset=8
   local.get $4
   local.get $2
   i32.store $0 offset=8
   local.get $2
   if
    local.get $4
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $4
   i32.store $0 offset=4
   local.get $2
   i32.const 1664
   i32.store $0 offset=8
   local.get $4
   i32.const 1664
   i32.store $0 offset=12
   local.get $4
   i32.const 1664
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $4
   i32.store $0 offset=4
   local.get $2
   i32.const 1664
   i32.store $0 offset=8
   local.get $4
   i32.const 1664
   i32.store $0 offset=16
   local.get $4
   i32.const 1664
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $4
   i32.store $0 offset=4
   local.get $4
   i64.const 0
   i64.store $0 offset=24
   local.get $2
   local.get $4
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   local.get $4
   i32.const 0
   i32.store $0 offset=32
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   i32.store $0 offset=20
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     block $case7|1
      block $case6|1
       block $case5|1
        block $case4|1
         block $case3|1
          block $case2|1
           block $case1|1
            block $case0|1
             local.get $0
             call $~lib/as-proto/assembly/Reader/Reader#uint32@override
             local.tee $2
             i32.const 3
             i32.shr_u
             i32.const 1
             i32.sub
             br_table $case0|1 $case1|1 $case2|1 $case3|1 $case4|1 $case5|1 $case6|1 $case7|1
            end
            global.get $~lib/memory/__stack_pointer
            local.tee $2
            local.get $4
            i32.store $0
            local.get $2
            local.get $0
            i32.store $0 offset=8
            local.get $0
            call $~lib/as-proto/assembly/Reader/Reader#string@override
            local.set $2
            global.get $~lib/memory/__stack_pointer
            local.get $2
            i32.store $0 offset=4
            local.get $4
            local.get $2
            i32.store $0
            local.get $2
            if
             local.get $4
             local.get $2
             i32.const 0
             call $byn-split-outlined-A$~lib/rt/itcms/__link
            end
            br $while-continue|0
           end
           global.get $~lib/memory/__stack_pointer
           local.tee $2
           local.get $4
           i32.store $0
           local.get $2
           local.get $0
           i32.store $0 offset=8
           local.get $0
           call $~lib/as-proto/assembly/Reader/Reader#string@override
           local.set $2
           global.get $~lib/memory/__stack_pointer
           local.get $2
           i32.store $0 offset=4
           local.get $4
           local.get $2
           i32.store $0 offset=4
           local.get $2
           if
            local.get $4
            local.get $2
            i32.const 0
            call $byn-split-outlined-A$~lib/rt/itcms/__link
           end
           br $while-continue|0
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $2
          local.get $4
          i32.store $0
          local.get $2
          local.get $0
          i32.store $0 offset=8
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#bytes@override
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store $0 offset=4
          local.get $4
          local.get $2
          i32.store $0 offset=8
          local.get $2
          if
           local.get $4
           local.get $2
           i32.const 0
           call $byn-split-outlined-A$~lib/rt/itcms/__link
          end
          br $while-continue|0
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         local.get $4
         i32.store $0
         local.get $2
         local.get $0
         i32.store $0 offset=8
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#string@override
         local.set $2
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store $0 offset=4
         local.get $4
         local.get $2
         i32.store $0 offset=12
         local.get $2
         if
          local.get $4
          local.get $2
          i32.const 0
          call $byn-split-outlined-A$~lib/rt/itcms/__link
         end
         br $while-continue|0
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $4
        i32.store $0
        local.get $2
        local.get $0
        i32.store $0 offset=8
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#string@override
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store $0 offset=4
        local.get $4
        local.get $2
        i32.store $0 offset=16
        local.get $2
        if
         local.get $4
         local.get $2
         i32.const 0
         call $byn-split-outlined-A$~lib/rt/itcms/__link
        end
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $4
       i32.store $0
       local.get $2
       local.get $0
       i32.store $0 offset=4
       local.get $4
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#int64@override
       i64.store $0 offset=24
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $4
      i32.store $0
      local.get $2
      local.get $0
      i32.store $0 offset=8
      local.get $2
      local.get $0
      i32.store $0 offset=24
      local.get $0
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction.decode
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=4
      local.get $4
      local.get $2
      i32.store $0 offset=32
      local.get $2
      if
       local.get $4
       local.get $2
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     local.get $0
     local.get $2
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/types/message/aspect/v1/AspectInput/AspectInput.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0
    i32.add
   end
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   i32.const 0
   i32.store $0 offset=8
   local.get $3
   i32.const 16
   i32.const 20
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i64.const 0
   i64.store $0
   local.get $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i64.const 0
   i64.store $0
   local.get $4
   local.get $3
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0 offset=8
   local.get $3
   i32.const 0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $3
   i32.store $0 offset=4
   local.get $4
   i32.const 0
   i32.store $0 offset=8
   local.get $3
   i32.const 0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $3
   i32.store $0 offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     block $case3|1
      block $case2|1
       block $case1|1
        block $case0|1
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#uint32@override
         local.tee $2
         i32.const 3
         i32.shr_u
         i32.const 1
         i32.sub
         br_table $case0|1 $case1|1 $case2|1 $case3|1
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $3
        i32.store $0
        local.get $2
        local.get $0
        i32.store $0 offset=8
        local.get $3
        local.get $0
        call $~lib/as-proto/assembly/Reader/Reader#int64@override
        i64.store $0
        br $while-continue|0
       end
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $3
       i32.store $0
       local.get $2
       local.get $0
       i32.store $0 offset=12
       local.get $2
       local.get $0
       i32.store $0 offset=16
       local.get $0
       local.get $0
       call $~lib/as-proto/assembly/Reader/Reader#uint32@override
       call $assembly/lib/types/message/aspect/v1/AspTransaction/AspTransaction.decode
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0 offset=8
       local.get $3
       local.get $2
       i32.store $0 offset=8
       local.get $2
       if
        local.get $3
        local.get $2
        i32.const 0
        call $byn-split-outlined-A$~lib/rt/itcms/__link
       end
       br $while-continue|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $3
      i32.store $0
      local.get $2
      local.get $0
      i32.store $0 offset=12
      local.get $2
      local.get $0
      i32.store $0 offset=16
      local.get $0
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      call $assembly/lib/types/message/aspect/v1/InnerTransaction/InnerTransaction.decode
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=8
      local.get $3
      local.get $2
      i32.store $0 offset=12
      local.get $2
      if
       local.get $3
       local.get $2
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     local.get $0
     local.get $2
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
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
    local.set $2
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $1
   i32.store $0 offset=4
   local.get $3
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store $0
   local.get $4
   global.get $~lib/as-proto/assembly/Protobuf/READER
   local.tee $3
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store $0
   local.get $4
   local.get $3
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.store $0
   local.get $4
   local.get $3
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0 offset=4
   local.set $5
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $3
   local.get $5
   local.get $0
   i32.load $0 offset=8
   i32.add
   i32.store $0 offset=4
   local.get $4
   local.get $3
   i32.store $0
   local.get $4
   local.get $0
   i32.store $0 offset=4
   local.get $3
   local.get $0
   i32.store $0 offset=8
   local.get $0
   if
    local.get $3
    local.get $0
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/READER
   local.tee $0
   i32.store $0
   i32.const 2
   global.set $~argumentsLength
   local.get $0
   local.get $2
   local.get $1
   i32.load $0
   call_indirect $0 (type $i32_i32_=>_i32)
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   local.get $0
   local.tee $2
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   local.set $4
   local.get $3
   local.get $1
   i32.store $0
   block $__inlined_func$~lib/string/String#concat
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const -2
    i32.and
    local.tee $3
    local.get $4
    i32.add
    local.tee $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1664
     local.set $0
     br $__inlined_func$~lib/string/String#concat
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store $0 offset=4
    local.get $0
    local.get $2
    local.get $4
    memory.copy $0 $0
    local.get $0
    local.get $4
    i32.add
    local.get $1
    local.get $3
    memory.copy $0 $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput.encode (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   local.get $2
   local.get $1
   i32.store $0
   local.get $1
   i32.const 8
   call $~lib/as-proto/assembly/Writer/Writer#uint32@override
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load8_u $0
   local.set $2
   block $__inlined_func$~lib/as-proto/assembly/Writer/Writer#bool@override
    block $default
     block $case1
      local.get $1
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $3
      i32.const 4
      i32.ne
      if
       local.get $3
       i32.const 6
       i32.eq
       br_if $case1
       br $default
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      i64.const 0
      i64.store $0
      local.get $3
      i32.const 0
      i32.store $0 offset=8
      local.get $3
      local.get $1
      i32.store $0
      local.get $3
      local.get $1
      i32.store $0 offset=4
      local.get $1
      i32.load $0 offset=4
      local.get $2
      i32.const 0
      i32.ne
      i32.store8 $0
      local.get $3
      local.get $1
      i32.store $0 offset=4
      local.get $3
      local.get $1
      i32.store $0 offset=8
      local.get $1
      local.get $1
      i32.load $0 offset=4
      i32.const 1
      i32.add
      i32.store $0 offset=4
      local.get $3
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      br $__inlined_func$~lib/as-proto/assembly/Writer/Writer#bool@override
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i64.const 0
     i64.store $0
     local.get $2
     local.get $1
     i32.store $0
     local.get $2
     local.get $1
     i32.store $0 offset=4
     local.get $1
     local.get $1
     i32.load $0
     i32.const 1
     i32.add
     i32.store $0
     local.get $2
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/as-proto/assembly/Writer/Writer#bool@override
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   i32.const 18
   call $~lib/as-proto/assembly/Writer/Writer#uint32@override
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=4
   local.tee $2
   i32.store $0 offset=4
   block $__inlined_func$~lib/as-proto/assembly/Writer/Writer#string@override
    block $default0
     block $case11
      local.get $1
      i32.const 8
      i32.sub
      i32.load $0
      local.tee $0
      i32.const 4
      i32.ne
      if
       local.get $0
       i32.const 6
       i32.eq
       br_if $case11
       br $default0
      end
      local.get $1
      local.get $2
      call $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#string
      br $__inlined_func$~lib/as-proto/assembly/Writer/Writer#string@override
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i64.const 0
     i64.store $0
     local.get $0
     i64.const 0
     i64.store $0 offset=8
     local.get $0
     local.get $2
     i32.store $0
     i32.const 0
     local.set $0
     local.get $2
     local.get $2
     i32.const 20
     i32.sub
     i32.load $0 offset=16
     i32.add
     local.set $4
     loop $while-continue|0
      local.get $2
      local.get $4
      i32.lt_u
      if
       local.get $2
       i32.load16_u $0
       local.tee $3
       i32.const 128
       i32.lt_u
       if (result i32)
        local.get $0
        i32.const 1
        i32.add
       else
        local.get $3
        i32.const 2048
        i32.lt_u
        if (result i32)
         local.get $0
         i32.const 2
         i32.add
        else
         local.get $3
         i32.const 64512
         i32.and
         i32.const 55296
         i32.eq
         local.get $2
         i32.const 2
         i32.add
         local.get $4
         i32.lt_u
         i32.and
         if
          local.get $2
          i32.load16_u $0 offset=2
          i32.const 64512
          i32.and
          i32.const 56320
          i32.eq
          if
           local.get $0
           i32.const 4
           i32.add
           local.set $0
           local.get $2
           i32.const 4
           i32.add
           local.set $2
           br $while-continue|0
          end
         end
         local.get $0
         i32.const 3
         i32.add
        end
       end
       local.set $0
       local.get $2
       i32.const 2
       i32.add
       local.set $2
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store $0 offset=4
     local.get $2
     local.get $1
     i32.load $0 offset=8
     local.tee $2
     i32.store $0
     local.get $2
     local.get $0
     call $~lib/array/Array<i32>#push
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=4
     local.get $1
     local.get $0
     i32.const 128
     i32.lt_u
     if (result i32)
      i32.const 1
     else
      local.get $0
      i32.const 16384
      i32.lt_u
      if (result i32)
       i32.const 2
      else
       i32.const 3
       i32.const 4
       i32.const 5
       local.get $0
       i32.const 268435456
       i32.lt_u
       select
       local.get $0
       i32.const 2097152
       i32.lt_u
       select
      end
     end
     local.get $1
     i32.load $0
     i32.add
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store $0
     local.get $2
     local.get $1
     i32.store $0 offset=4
     local.get $1
     local.get $0
     local.get $1
     i32.load $0
     i32.add
     i32.store $0
     local.get $2
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/as-proto/assembly/Writer/Writer#string@override
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<u32>#set:length (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 0
  i32.const 0
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/as-proto/assembly/Protobuf/Protobuf.encode<assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.load $0
   local.tee $2
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $2
   i32.store $0
   local.get $2
   i32.const 0
   i32.store $0
   local.get $1
   local.get $2
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.load $0 offset=4
   local.tee $1
   i32.store $0
   local.get $1
   call $~lib/array/Array<u32>#set:length
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load $0 offset=8
   local.tee $1
   i32.store $0
   local.get $1
   call $~lib/array/Array<u32>#set:length
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load $0 offset=12
   local.tee $1
   i32.store $0
   local.get $1
   call $~lib/array/Array<u32>#set:length
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $1
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load $0
   local.tee $1
   i32.store $0 offset=4
   i32.const 2
   global.set $~argumentsLength
   local.get $0
   local.get $1
   i32.const 2928
   i32.load $0
   call_indirect $0 (type $i32_i32_=>_none)
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i64.const 0
   i64.store $0 offset=8
   local.get $1
   local.get $2
   i32.store $0
   local.get $1
   local.get $2
   i32.store $0 offset=12
   local.get $1
   local.get $2
   i32.load $0
   local.tee $1
   i32.store $0 offset=8
   i32.const 0
   local.get $1
   i32.load $0
   call $~lib/typedarray/Uint8Array#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.store $0 offset=8
   local.get $1
   if
    local.get $2
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $2
   i32.store $0
   local.get $1
   local.get $2
   i32.store $0 offset=8
   local.get $1
   local.get $2
   i32.load $0 offset=8
   local.tee $3
   i32.store $0 offset=4
   local.get $2
   local.get $3
   i32.load $0 offset=4
   i32.store $0 offset=4
   local.get $1
   local.get $2
   i32.store $0
   local.get $2
   i32.const 0
   i32.store $0 offset=12
   local.get $1
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $1
   i32.store $0 offset=4
   i32.const 2
   global.set $~argumentsLength
   local.get $0
   local.get $1
   i32.const 2928
   i32.load $0
   call_indirect $0 (type $i32_i32_=>_none)
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/as-proto/assembly/Protobuf/WRITER
   local.tee $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=8
   local.set $0
   local.get $1
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Uint8Array#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=8
  i32.ge_u
  if
   i32.const 1248
   i32.const 1984
   i32.const 167
   i32.const 45
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=4
  i32.add
  i32.load8_u $0
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/basic_types/AUint8Array#store (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0
  local.tee $3
  i32.store $0
  local.get $3
  i32.load $0 offset=4
  local.set $3
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0
  i32.store $0
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $3
  i32.const 6
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0
  local.tee $1
  i32.store $0
  local.get $1
  local.get $3
  call $assembly/lib/types/basic_types/header#store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0
  i32.store $0
  local.get $3
  i32.const 6
  i32.add
  local.set $1
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0 offset=4
   local.get $4
   local.get $0
   i32.load $0
   local.tee $4
   i32.store $0
   local.get $2
   local.get $4
   i32.load $0 offset=4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    local.tee $4
    i32.store $0
    local.get $1
    local.get $4
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    i32.store8 $0
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/lib/entry/Entry#execute (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   block $folding-inner3
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner3
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i32.const 0
    i32.const 84
    memory.fill $0
    local.get $4
    i32.const 1664
    i32.store $0
    local.get $4
    i32.const 1664
    call $assembly/lib/types/basic_types/AString#constructor
    local.tee $4
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=8
    local.get $4
    local.get $1
    call $assembly/lib/types/basic_types/AString#load
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store $0 offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $4
    call $assembly/lib/types/basic_types/AString#get
    local.tee $1
    i32.store $0 offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=8
    local.get $0
    i32.load $0
    if (result i32)
     i32.const 1
    else
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=8
     local.get $0
     i32.load $0 offset=4
    end
    i32.eqz
    if
     i32.const 1744
     i32.const 1808
     i32.const 68
     i32.const 13
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $1
    i32.store $0 offset=8
    local.get $4
    i32.const 1872
    i32.store $0
    block $folding-inner2
     block $folding-inner1
      local.get $1
      i32.const 1872
      call $~lib/string/String.__eq
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0 offset=8
       local.get $0
       i32.load $0 offset=4
      else
       i32.const 0
      end
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $0
       i32.store $0 offset=8
       local.get $1
       local.get $2
       call $assembly/lib/entry/Entry#loadInputString
       local.tee $1
       i32.store $0 offset=16
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0 offset=24
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load $0 offset=4
       local.tee $2
       i32.store $0 offset=8
       call $assembly/lib/context/StateCtx#constructor
       local.set $4
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store $0
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=20
       block $__inlined_func$assembly/lib/interfaces/IAspectTransaction#onContractBinding@override
        local.get $2
        i32.const 8
        i32.sub
        i32.load $0
        i32.const 12
        i32.eq
        if
         block $__inlined_func$assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onContractBinding (result i32)
          global.get $~lib/memory/__stack_pointer
          i32.const 12
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 8428
          i32.lt_s
          br_if $folding-inner3
          global.get $~lib/memory/__stack_pointer
          local.tee $2
          i64.const 0
          i64.store $0
          local.get $2
          i32.const 0
          i32.store $0 offset=8
          local.get $2
          local.get $4
          i32.store $0
          local.get $2
          i32.const 2960
          i32.store $0 offset=4
          local.get $2
          i32.const 2960
          call $assembly/lib/context/StateCtx#getProperty
          local.tee $2
          i32.store $0 offset=8
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store $0
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store $0 offset=4
          local.get $2
          local.get $1
          call $~lib/string/String#includes
          if
           global.get $~lib/memory/__stack_pointer
           i32.const 12
           i32.add
           global.set $~lib/memory/__stack_pointer
           i32.const 1
           br $__inlined_func$assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#onContractBinding
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 12
          i32.add
          global.set $~lib/memory/__stack_pointer
          i32.const 0
         end
         local.set $1
         br $__inlined_func$assembly/lib/interfaces/IAspectTransaction#onContractBinding@override
        end
        unreachable
       end
       br $folding-inner2
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $1
       i32.store $0 offset=8
       local.get $4
       i32.const 1936
       i32.store $0
       local.get $1
       i32.const 1936
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $0
        i32.store $0 offset=8
        local.get $1
        local.get $2
        call $assembly/lib/entry/Entry#loadInputString
        local.tee $1
        i32.store $0 offset=28
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0 offset=8
        local.get $0
        i32.load $0 offset=4
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         local.get $0
         i32.store $0 offset=24
         local.get $2
         local.get $0
         i32.load $0 offset=4
         local.tee $2
         i32.store $0 offset=8
         br $folding-inner1
        end
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $0
        i32.store $0 offset=24
        local.get $2
        local.get $0
        i32.load $0
        local.tee $2
        i32.store $0 offset=8
        br $folding-inner1
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      local.get $0
      i32.store $0 offset=8
      local.get $4
      i32.const 16
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner3
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      i64.const 0
      i64.store $0
      local.get $5
      i64.const 0
      i64.store $0 offset=8
      i32.const 0
      global.set $~argumentsLength
      local.get $5
      call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
      local.tee $5
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store $0 offset=4
      local.get $5
      local.get $2
      call $assembly/lib/types/basic_types/AUint8Array#load
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store $0 offset=12
      local.get $5
      call $assembly/lib/types/basic_types/AString#get
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 2160
      i32.store $0 offset=8
      i32.const 2
      global.set $~argumentsLength
      local.get $2
      i32.const 2160
      call $~lib/as-proto/assembly/Protobuf/Protobuf.decode<assembly/lib/types/message/aspect/v1/AspectInput/AspectInput>@varargs
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $4
      local.get $2
      i32.store $0 offset=32
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=8
      global.get $~lib/memory/__stack_pointer
      i32.const 2192
      i32.store $0
      local.get $1
      i32.const 2192
      call $~lib/string/String.__eq
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0 offset=8
       local.get $0
       i32.load $0 offset=4
      else
       i32.const 0
      end
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $2
       i32.store $0
       local.get $2
       i64.load $0
       local.set $3
       local.get $1
       local.get $2
       i32.store $0
       local.get $1
       local.get $2
       i32.load $0 offset=8
       local.tee $2
       i32.store $0 offset=20
       local.get $1
       i32.const 12
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 8428
       i32.lt_s
       br_if $folding-inner3
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       i64.const 0
       i64.store $0
       local.get $4
       i32.const 0
       i32.store $0 offset=8
       local.get $4
       i32.const 12
       i32.const 29
       call $~lib/rt/itcms/__new
       local.tee $4
       i32.store $0
       global.get $~lib/memory/__stack_pointer
       local.tee $5
       local.get $4
       i32.store $0 offset=4
       local.get $4
       i64.const 0
       i64.store $0
       local.get $5
       local.get $4
       i32.store $0 offset=4
       local.get $4
       i32.const 0
       i32.store $0 offset=8
       global.get $~lib/memory/__stack_pointer
       local.tee $5
       local.get $4
       i32.store $0 offset=4
       local.get $4
       local.get $3
       i64.store $0
       local.get $5
       local.get $4
       i32.store $0 offset=4
       local.get $5
       local.get $2
       i32.store $0 offset=8
       local.get $4
       local.get $2
       i32.store $0 offset=8
       local.get $2
       if
        local.get $4
        local.get $2
        i32.const 0
        call $byn-split-outlined-A$~lib/rt/itcms/__link
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $1
       local.get $4
       i32.store $0 offset=36
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0 offset=20
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load $0 offset=4
       local.tee $1
       i32.store $0 offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store $0
       global.get $~lib/memory/__stack_pointer
       local.get $1
       call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
       local.tee $2
       i32.store $0 offset=40
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $4
       local.get $1
       i32.store $0 offset=8
       local.get $4
       i32.const 2240
       i32.store $0
       local.get $1
       i32.const 2240
       call $~lib/string/String.__eq
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0 offset=8
        local.get $0
        i32.load $0
       else
        i32.const 0
       end
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $1
        local.get $2
        i32.store $0
        local.get $2
        i64.load $0
        local.set $3
        local.get $1
        local.get $2
        i32.store $0
        local.get $1
        local.get $2
        i32.load $0 offset=8
        local.tee $2
        i32.store $0 offset=20
        local.get $1
        i32.const 12
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 8428
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        local.tee $4
        i64.const 0
        i64.store $0
        local.get $4
        i32.const 0
        i32.store $0 offset=8
        local.get $4
        i32.const 12
        i32.const 30
        call $~lib/rt/itcms/__new
        local.tee $4
        i32.store $0
        global.get $~lib/memory/__stack_pointer
        local.tee $5
        local.get $4
        i32.store $0 offset=4
        local.get $4
        i64.const 0
        i64.store $0
        local.get $5
        local.get $4
        i32.store $0 offset=4
        local.get $4
        i32.const 0
        i32.store $0 offset=8
        global.get $~lib/memory/__stack_pointer
        local.tee $5
        local.get $4
        i32.store $0 offset=4
        local.get $4
        local.get $3
        i64.store $0
        local.get $5
        local.get $4
        i32.store $0 offset=4
        local.get $5
        local.get $2
        i32.store $0 offset=8
        local.get $4
        local.get $2
        i32.store $0 offset=8
        local.get $2
        if
         local.get $4
         local.get $2
         i32.const 0
         call $byn-split-outlined-A$~lib/rt/itcms/__link
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 12
        i32.add
        global.set $~lib/memory/__stack_pointer
        local.get $1
        local.get $4
        i32.store $0 offset=44
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0 offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load $0
        local.tee $1
        i32.store $0 offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $4
        i32.store $0
        global.get $~lib/memory/__stack_pointer
        local.get $1
        call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
        local.tee $2
        i32.store $0 offset=40
       else
        global.get $~lib/memory/__stack_pointer
        local.tee $4
        local.get $1
        i32.store $0 offset=8
        local.get $4
        i32.const 2304
        i32.store $0
        local.get $1
        i32.const 2304
        call $~lib/string/String.__eq
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store $0 offset=8
         local.get $0
         i32.load $0 offset=4
        else
         i32.const 0
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $2
         i32.store $0
         local.get $2
         i64.load $0
         local.set $3
         local.get $1
         local.get $2
         i32.store $0
         local.get $1
         local.get $2
         i32.load $0 offset=8
         local.tee $2
         i32.store $0 offset=20
         local.get $1
         i32.const 12
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 8428
         i32.lt_s
         br_if $folding-inner3
         global.get $~lib/memory/__stack_pointer
         local.tee $4
         i64.const 0
         i64.store $0
         local.get $4
         i32.const 0
         i32.store $0 offset=8
         local.get $4
         i32.const 12
         i32.const 32
         call $~lib/rt/itcms/__new
         local.tee $4
         i32.store $0
         global.get $~lib/memory/__stack_pointer
         local.tee $5
         local.get $4
         i32.store $0 offset=4
         local.get $4
         i64.const 0
         i64.store $0
         local.get $5
         local.get $4
         i32.store $0 offset=4
         local.get $4
         i32.const 0
         i32.store $0 offset=8
         global.get $~lib/memory/__stack_pointer
         local.tee $5
         local.get $4
         i32.store $0 offset=4
         local.get $4
         local.get $3
         i64.store $0
         local.get $5
         local.get $4
         i32.store $0 offset=4
         local.get $5
         local.get $2
         i32.store $0 offset=8
         local.get $4
         local.get $2
         i32.store $0 offset=8
         local.get $2
         if
          local.get $4
          local.get $2
          i32.const 0
          call $byn-split-outlined-A$~lib/rt/itcms/__link
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 12
         i32.add
         global.set $~lib/memory/__stack_pointer
         local.get $1
         local.get $4
         i32.store $0 offset=48
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.store $0 offset=20
         global.get $~lib/memory/__stack_pointer
         local.get $0
         i32.load $0 offset=4
         local.tee $1
         i32.store $0 offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.store $0
         global.get $~lib/memory/__stack_pointer
         local.get $1
         call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
         local.tee $2
         i32.store $0 offset=40
        else
         global.get $~lib/memory/__stack_pointer
         local.tee $4
         local.get $1
         i32.store $0 offset=8
         local.get $4
         i32.const 2352
         i32.store $0
         local.get $1
         i32.const 2352
         call $~lib/string/String.__eq
         if (result i32)
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.store $0 offset=8
          local.get $0
          i32.load $0 offset=4
         else
          i32.const 0
         end
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $1
          local.get $2
          i32.store $0
          local.get $2
          i64.load $0
          local.set $3
          local.get $1
          local.get $2
          i32.store $0
          local.get $1
          local.get $2
          i32.load $0 offset=8
          local.tee $2
          i32.store $0 offset=20
          local.get $1
          i32.const 12
          i32.sub
          global.set $~lib/memory/__stack_pointer
          global.get $~lib/memory/__stack_pointer
          i32.const 8428
          i32.lt_s
          br_if $folding-inner3
          global.get $~lib/memory/__stack_pointer
          local.tee $4
          i64.const 0
          i64.store $0
          local.get $4
          i32.const 0
          i32.store $0 offset=8
          local.get $4
          i32.const 12
          i32.const 33
          call $~lib/rt/itcms/__new
          local.tee $4
          i32.store $0
          global.get $~lib/memory/__stack_pointer
          local.tee $5
          local.get $4
          i32.store $0 offset=4
          local.get $4
          i64.const 0
          i64.store $0
          local.get $5
          local.get $4
          i32.store $0 offset=4
          local.get $4
          i32.const 0
          i32.store $0 offset=8
          global.get $~lib/memory/__stack_pointer
          local.tee $5
          local.get $4
          i32.store $0 offset=4
          local.get $4
          local.get $3
          i64.store $0
          local.get $5
          local.get $4
          i32.store $0 offset=4
          local.get $5
          local.get $2
          i32.store $0 offset=8
          local.get $4
          local.get $2
          i32.store $0 offset=8
          local.get $2
          if
           local.get $4
           local.get $2
           i32.const 0
           call $byn-split-outlined-A$~lib/rt/itcms/__link
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 12
          i32.add
          global.set $~lib/memory/__stack_pointer
          local.get $1
          local.get $4
          i32.store $0 offset=52
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.store $0 offset=20
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.load $0 offset=4
          local.tee $1
          i32.store $0 offset=8
          global.get $~lib/memory/__stack_pointer
          local.get $4
          i32.store $0
          global.get $~lib/memory/__stack_pointer
          local.get $1
          call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
          local.tee $2
          i32.store $0 offset=40
         else
          global.get $~lib/memory/__stack_pointer
          local.tee $4
          local.get $1
          i32.store $0 offset=8
          local.get $4
          i32.const 2416
          i32.store $0
          local.get $1
          i32.const 2416
          call $~lib/string/String.__eq
          if (result i32)
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.store $0 offset=8
           local.get $0
           i32.load $0 offset=4
          else
           i32.const 0
          end
          if
           global.get $~lib/memory/__stack_pointer
           local.tee $1
           local.get $2
           i32.store $0
           local.get $2
           i64.load $0
           local.set $3
           local.get $1
           local.get $2
           i32.store $0
           local.get $1
           local.get $2
           i32.load $0 offset=8
           local.tee $2
           i32.store $0 offset=20
           local.get $1
           i32.const 12
           i32.sub
           global.set $~lib/memory/__stack_pointer
           global.get $~lib/memory/__stack_pointer
           i32.const 8428
           i32.lt_s
           br_if $folding-inner3
           global.get $~lib/memory/__stack_pointer
           local.tee $4
           i64.const 0
           i64.store $0
           local.get $4
           i32.const 0
           i32.store $0 offset=8
           local.get $4
           i32.const 12
           i32.const 34
           call $~lib/rt/itcms/__new
           local.tee $4
           i32.store $0
           global.get $~lib/memory/__stack_pointer
           local.tee $5
           local.get $4
           i32.store $0 offset=4
           local.get $4
           i64.const 0
           i64.store $0
           local.get $5
           local.get $4
           i32.store $0 offset=4
           local.get $4
           i32.const 0
           i32.store $0 offset=8
           global.get $~lib/memory/__stack_pointer
           local.tee $5
           local.get $4
           i32.store $0 offset=4
           local.get $4
           local.get $3
           i64.store $0
           local.get $5
           local.get $4
           i32.store $0 offset=4
           local.get $5
           local.get $2
           i32.store $0 offset=8
           local.get $4
           local.get $2
           i32.store $0 offset=8
           local.get $2
           if
            local.get $4
            local.get $2
            i32.const 0
            call $byn-split-outlined-A$~lib/rt/itcms/__link
           end
           global.get $~lib/memory/__stack_pointer
           i32.const 12
           i32.add
           global.set $~lib/memory/__stack_pointer
           local.get $1
           local.get $4
           i32.store $0 offset=56
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.store $0 offset=20
           global.get $~lib/memory/__stack_pointer
           local.get $0
           i32.load $0 offset=4
           local.tee $1
           i32.store $0 offset=8
           global.get $~lib/memory/__stack_pointer
           local.get $4
           i32.store $0
           global.get $~lib/memory/__stack_pointer
           local.get $1
           call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
           local.tee $2
           i32.store $0 offset=40
          else
           global.get $~lib/memory/__stack_pointer
           local.tee $4
           local.get $1
           i32.store $0 offset=8
           local.get $4
           i32.const 2464
           i32.store $0
           local.get $1
           i32.const 2464
           call $~lib/string/String.__eq
           if (result i32)
            global.get $~lib/memory/__stack_pointer
            local.get $0
            i32.store $0 offset=8
            local.get $0
            i32.load $0 offset=4
           else
            i32.const 0
           end
           if
            global.get $~lib/memory/__stack_pointer
            local.tee $1
            local.get $2
            i32.store $0
            local.get $2
            i64.load $0
            local.set $3
            local.get $1
            local.get $2
            i32.store $0
            local.get $1
            local.get $2
            i32.load $0 offset=8
            local.tee $2
            i32.store $0 offset=20
            local.get $1
            i32.const 12
            i32.sub
            global.set $~lib/memory/__stack_pointer
            global.get $~lib/memory/__stack_pointer
            i32.const 8428
            i32.lt_s
            br_if $folding-inner3
            global.get $~lib/memory/__stack_pointer
            local.tee $4
            i64.const 0
            i64.store $0
            local.get $4
            i32.const 0
            i32.store $0 offset=8
            local.get $4
            i32.const 12
            i32.const 35
            call $~lib/rt/itcms/__new
            local.tee $4
            i32.store $0
            global.get $~lib/memory/__stack_pointer
            local.tee $5
            local.get $4
            i32.store $0 offset=4
            local.get $4
            i64.const 0
            i64.store $0
            local.get $5
            local.get $4
            i32.store $0 offset=4
            local.get $4
            i32.const 0
            i32.store $0 offset=8
            global.get $~lib/memory/__stack_pointer
            local.tee $5
            local.get $4
            i32.store $0 offset=4
            local.get $4
            local.get $3
            i64.store $0
            local.get $5
            local.get $4
            i32.store $0 offset=4
            local.get $5
            local.get $2
            i32.store $0 offset=8
            local.get $4
            local.get $2
            i32.store $0 offset=8
            local.get $2
            if
             local.get $4
             local.get $2
             i32.const 0
             call $byn-split-outlined-A$~lib/rt/itcms/__link
            end
            global.get $~lib/memory/__stack_pointer
            i32.const 12
            i32.add
            global.set $~lib/memory/__stack_pointer
            local.get $1
            local.get $4
            i32.store $0 offset=60
            global.get $~lib/memory/__stack_pointer
            local.get $0
            i32.store $0 offset=20
            global.get $~lib/memory/__stack_pointer
            local.get $0
            i32.load $0 offset=4
            local.tee $1
            i32.store $0 offset=8
            global.get $~lib/memory/__stack_pointer
            local.get $4
            i32.store $0
            global.get $~lib/memory/__stack_pointer
            local.get $1
            call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
            local.tee $2
            i32.store $0 offset=40
           else
            global.get $~lib/memory/__stack_pointer
            local.tee $4
            local.get $1
            i32.store $0 offset=8
            local.get $4
            i32.const 2512
            i32.store $0
            local.get $1
            i32.const 2512
            call $~lib/string/String.__eq
            if (result i32)
             global.get $~lib/memory/__stack_pointer
             local.get $0
             i32.store $0 offset=8
             local.get $0
             i32.load $0 offset=4
            else
             i32.const 0
            end
            if
             global.get $~lib/memory/__stack_pointer
             local.tee $1
             local.get $2
             i32.store $0
             local.get $2
             i64.load $0
             local.set $3
             local.get $1
             local.get $2
             i32.store $0
             local.get $1
             local.get $2
             i32.load $0 offset=8
             local.tee $2
             i32.store $0 offset=20
             local.get $1
             i32.const 12
             i32.sub
             global.set $~lib/memory/__stack_pointer
             global.get $~lib/memory/__stack_pointer
             i32.const 8428
             i32.lt_s
             br_if $folding-inner3
             global.get $~lib/memory/__stack_pointer
             local.tee $4
             i64.const 0
             i64.store $0
             local.get $4
             i32.const 0
             i32.store $0 offset=8
             local.get $4
             i32.const 12
             i32.const 36
             call $~lib/rt/itcms/__new
             local.tee $4
             i32.store $0
             global.get $~lib/memory/__stack_pointer
             local.tee $5
             local.get $4
             i32.store $0 offset=4
             local.get $4
             i64.const 0
             i64.store $0
             local.get $5
             local.get $4
             i32.store $0 offset=4
             local.get $4
             i32.const 0
             i32.store $0 offset=8
             global.get $~lib/memory/__stack_pointer
             local.tee $5
             local.get $4
             i32.store $0 offset=4
             local.get $4
             local.get $3
             i64.store $0
             local.get $5
             local.get $4
             i32.store $0 offset=4
             local.get $5
             local.get $2
             i32.store $0 offset=8
             local.get $4
             local.get $2
             i32.store $0 offset=8
             local.get $2
             if
              local.get $4
              local.get $2
              i32.const 0
              call $byn-split-outlined-A$~lib/rt/itcms/__link
             end
             global.get $~lib/memory/__stack_pointer
             i32.const 12
             i32.add
             global.set $~lib/memory/__stack_pointer
             local.get $1
             local.get $4
             i32.store $0 offset=64
             global.get $~lib/memory/__stack_pointer
             local.get $0
             i32.store $0 offset=20
             global.get $~lib/memory/__stack_pointer
             local.get $0
             i32.load $0 offset=4
             local.tee $1
             i32.store $0 offset=8
             global.get $~lib/memory/__stack_pointer
             local.get $4
             i32.store $0
             global.get $~lib/memory/__stack_pointer
             local.get $1
             call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
             local.tee $2
             i32.store $0 offset=40
            else
             global.get $~lib/memory/__stack_pointer
             local.tee $4
             local.get $1
             i32.store $0 offset=8
             local.get $4
             i32.const 2576
             i32.store $0
             local.get $1
             i32.const 2576
             call $~lib/string/String.__eq
             if (result i32)
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.store $0 offset=8
              local.get $0
              i32.load $0 offset=4
             else
              i32.const 0
             end
             if
              global.get $~lib/memory/__stack_pointer
              local.tee $1
              local.get $2
              i32.store $0
              local.get $2
              i64.load $0
              local.set $3
              local.get $1
              local.get $2
              i32.store $0
              local.get $1
              local.get $2
              i32.load $0 offset=8
              local.tee $2
              i32.store $0 offset=20
              local.get $1
              i32.const 12
              i32.sub
              global.set $~lib/memory/__stack_pointer
              global.get $~lib/memory/__stack_pointer
              i32.const 8428
              i32.lt_s
              br_if $folding-inner3
              global.get $~lib/memory/__stack_pointer
              local.tee $4
              i64.const 0
              i64.store $0
              local.get $4
              i32.const 0
              i32.store $0 offset=8
              local.get $4
              i32.const 12
              i32.const 38
              call $~lib/rt/itcms/__new
              local.tee $4
              i32.store $0
              global.get $~lib/memory/__stack_pointer
              local.tee $5
              local.get $4
              i32.store $0 offset=4
              local.get $4
              i64.const 0
              i64.store $0
              local.get $5
              local.get $4
              i32.store $0 offset=4
              local.get $4
              i32.const 0
              i32.store $0 offset=8
              global.get $~lib/memory/__stack_pointer
              local.tee $5
              local.get $4
              i32.store $0 offset=4
              local.get $4
              local.get $3
              i64.store $0
              local.get $5
              local.get $4
              i32.store $0 offset=4
              local.get $5
              local.get $2
              i32.store $0 offset=8
              local.get $4
              local.get $2
              i32.store $0 offset=8
              local.get $2
              if
               local.get $4
               local.get $2
               i32.const 0
               call $byn-split-outlined-A$~lib/rt/itcms/__link
              end
              global.get $~lib/memory/__stack_pointer
              i32.const 12
              i32.add
              global.set $~lib/memory/__stack_pointer
              local.get $1
              local.get $4
              i32.store $0 offset=68
              global.get $~lib/memory/__stack_pointer
              local.set $1
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.store $0 offset=20
              global.get $~lib/memory/__stack_pointer
              local.get $0
              i32.load $0 offset=4
              local.tee $2
              i32.store $0 offset=8
              global.get $~lib/memory/__stack_pointer
              local.get $4
              i32.store $0
              block $__inlined_func$assembly/lib/interfaces/IAspectTransaction#postContractCall@override
               local.get $2
               i32.const 8
               i32.sub
               i32.load $0
               i32.const 12
               i32.eq
               if
                local.get $4
                call $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#postContractCall
                local.set $2
                br $__inlined_func$assembly/lib/interfaces/IAspectTransaction#postContractCall@override
               end
               unreachable
              end
              local.get $1
              local.get $2
              i32.store $0 offset=40
             else
              global.get $~lib/memory/__stack_pointer
              local.tee $4
              local.get $1
              i32.store $0 offset=8
              local.get $4
              i32.const 2640
              i32.store $0
              local.get $1
              i32.const 2640
              call $~lib/string/String.__eq
              if (result i32)
               global.get $~lib/memory/__stack_pointer
               local.get $0
               i32.store $0 offset=8
               local.get $0
               i32.load $0 offset=4
              else
               i32.const 0
              end
              if
               global.get $~lib/memory/__stack_pointer
               local.tee $1
               local.get $2
               i32.store $0
               local.get $2
               i64.load $0
               local.set $3
               local.get $1
               local.get $2
               i32.store $0
               local.get $1
               local.get $2
               i32.load $0 offset=8
               local.tee $2
               i32.store $0 offset=20
               local.get $1
               i32.const 12
               i32.sub
               global.set $~lib/memory/__stack_pointer
               global.get $~lib/memory/__stack_pointer
               i32.const 8428
               i32.lt_s
               br_if $folding-inner3
               global.get $~lib/memory/__stack_pointer
               local.tee $4
               i64.const 0
               i64.store $0
               local.get $4
               i32.const 0
               i32.store $0 offset=8
               local.get $4
               i32.const 12
               i32.const 39
               call $~lib/rt/itcms/__new
               local.tee $4
               i32.store $0
               global.get $~lib/memory/__stack_pointer
               local.tee $5
               local.get $4
               i32.store $0 offset=4
               local.get $4
               i64.const 0
               i64.store $0
               local.get $5
               local.get $4
               i32.store $0 offset=4
               local.get $4
               i32.const 0
               i32.store $0 offset=8
               global.get $~lib/memory/__stack_pointer
               local.tee $5
               local.get $4
               i32.store $0 offset=4
               local.get $4
               local.get $3
               i64.store $0
               local.get $5
               local.get $4
               i32.store $0 offset=4
               local.get $5
               local.get $2
               i32.store $0 offset=8
               local.get $4
               local.get $2
               i32.store $0 offset=8
               local.get $2
               if
                local.get $4
                local.get $2
                i32.const 0
                call $byn-split-outlined-A$~lib/rt/itcms/__link
               end
               global.get $~lib/memory/__stack_pointer
               i32.const 12
               i32.add
               global.set $~lib/memory/__stack_pointer
               local.get $1
               local.get $4
               i32.store $0 offset=72
               global.get $~lib/memory/__stack_pointer
               local.get $0
               i32.store $0 offset=20
               global.get $~lib/memory/__stack_pointer
               local.get $0
               i32.load $0 offset=4
               local.tee $1
               i32.store $0 offset=8
               global.get $~lib/memory/__stack_pointer
               local.get $4
               i32.store $0
               global.get $~lib/memory/__stack_pointer
               local.get $1
               call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
               local.tee $2
               i32.store $0 offset=40
              else
               global.get $~lib/memory/__stack_pointer
               local.tee $4
               local.get $1
               i32.store $0 offset=8
               local.get $4
               i32.const 2688
               i32.store $0
               local.get $1
               i32.const 2688
               call $~lib/string/String.__eq
               if (result i32)
                global.get $~lib/memory/__stack_pointer
                local.get $0
                i32.store $0 offset=8
                local.get $0
                i32.load $0 offset=4
               else
                i32.const 0
               end
               if
                global.get $~lib/memory/__stack_pointer
                local.tee $1
                local.get $2
                i32.store $0
                local.get $2
                i64.load $0
                local.set $3
                local.get $1
                local.get $2
                i32.store $0
                local.get $1
                local.get $2
                i32.load $0 offset=8
                local.tee $2
                i32.store $0 offset=20
                local.get $1
                i32.const 12
                i32.sub
                global.set $~lib/memory/__stack_pointer
                global.get $~lib/memory/__stack_pointer
                i32.const 8428
                i32.lt_s
                br_if $folding-inner3
                global.get $~lib/memory/__stack_pointer
                local.tee $4
                i64.const 0
                i64.store $0
                local.get $4
                i32.const 0
                i32.store $0 offset=8
                local.get $4
                i32.const 12
                i32.const 40
                call $~lib/rt/itcms/__new
                local.tee $4
                i32.store $0
                global.get $~lib/memory/__stack_pointer
                local.tee $5
                local.get $4
                i32.store $0 offset=4
                local.get $4
                i64.const 0
                i64.store $0
                local.get $5
                local.get $4
                i32.store $0 offset=4
                local.get $4
                i32.const 0
                i32.store $0 offset=8
                global.get $~lib/memory/__stack_pointer
                local.tee $5
                local.get $4
                i32.store $0 offset=4
                local.get $4
                local.get $3
                i64.store $0
                local.get $5
                local.get $4
                i32.store $0 offset=4
                local.get $5
                local.get $2
                i32.store $0 offset=8
                local.get $4
                local.get $2
                i32.store $0 offset=8
                local.get $2
                if
                 local.get $4
                 local.get $2
                 i32.const 0
                 call $byn-split-outlined-A$~lib/rt/itcms/__link
                end
                global.get $~lib/memory/__stack_pointer
                i32.const 12
                i32.add
                global.set $~lib/memory/__stack_pointer
                local.get $1
                local.get $4
                i32.store $0 offset=76
                global.get $~lib/memory/__stack_pointer
                local.get $0
                i32.store $0 offset=20
                global.get $~lib/memory/__stack_pointer
                local.get $0
                i32.load $0 offset=4
                local.tee $1
                i32.store $0 offset=8
                global.get $~lib/memory/__stack_pointer
                local.get $4
                i32.store $0
                global.get $~lib/memory/__stack_pointer
                local.get $1
                call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
                local.tee $2
                i32.store $0 offset=40
               else
                global.get $~lib/memory/__stack_pointer
                local.tee $4
                local.get $1
                i32.store $0 offset=8
                local.get $4
                i32.const 2736
                i32.store $0
                local.get $1
                i32.const 2736
                call $~lib/string/String.__eq
                if (result i32)
                 global.get $~lib/memory/__stack_pointer
                 local.get $0
                 i32.store $0 offset=8
                 local.get $0
                 i32.load $0
                else
                 i32.const 0
                end
                if
                 global.get $~lib/memory/__stack_pointer
                 local.tee $1
                 local.get $2
                 i32.store $0
                 local.get $2
                 i64.load $0
                 local.set $3
                 local.get $1
                 local.get $2
                 i32.store $0
                 local.get $1
                 local.get $2
                 i32.load $0 offset=8
                 local.tee $2
                 i32.store $0 offset=20
                 local.get $1
                 i32.const 12
                 i32.sub
                 global.set $~lib/memory/__stack_pointer
                 global.get $~lib/memory/__stack_pointer
                 i32.const 8428
                 i32.lt_s
                 br_if $folding-inner3
                 global.get $~lib/memory/__stack_pointer
                 local.tee $4
                 i64.const 0
                 i64.store $0
                 local.get $4
                 i32.const 0
                 i32.store $0 offset=8
                 local.get $4
                 i32.const 12
                 i32.const 41
                 call $~lib/rt/itcms/__new
                 local.tee $4
                 i32.store $0
                 global.get $~lib/memory/__stack_pointer
                 local.tee $5
                 local.get $4
                 i32.store $0 offset=4
                 local.get $4
                 i64.const 0
                 i64.store $0
                 local.get $5
                 local.get $4
                 i32.store $0 offset=4
                 local.get $4
                 i32.const 0
                 i32.store $0 offset=8
                 global.get $~lib/memory/__stack_pointer
                 local.tee $5
                 local.get $4
                 i32.store $0 offset=4
                 local.get $4
                 local.get $3
                 i64.store $0
                 local.get $5
                 local.get $4
                 i32.store $0 offset=4
                 local.get $5
                 local.get $2
                 i32.store $0 offset=8
                 local.get $4
                 local.get $2
                 i32.store $0 offset=8
                 local.get $2
                 if
                  local.get $4
                  local.get $2
                  i32.const 0
                  call $byn-split-outlined-A$~lib/rt/itcms/__link
                 end
                 global.get $~lib/memory/__stack_pointer
                 i32.const 12
                 i32.add
                 global.set $~lib/memory/__stack_pointer
                 local.get $1
                 local.get $4
                 i32.store $0 offset=80
                 global.get $~lib/memory/__stack_pointer
                 local.get $0
                 i32.store $0 offset=20
                 global.get $~lib/memory/__stack_pointer
                 local.get $0
                 i32.load $0
                 local.tee $1
                 i32.store $0 offset=8
                 global.get $~lib/memory/__stack_pointer
                 local.get $4
                 i32.store $0
                 global.get $~lib/memory/__stack_pointer
                 local.get $1
                 call $assembly/lib/interfaces/IAspectTransaction#onTxReceive@override
                 local.tee $2
                 i32.store $0 offset=40
                else
                 global.get $~lib/memory/__stack_pointer
                 local.tee $0
                 i32.const 2800
                 i32.store $0 offset=20
                 local.get $0
                 local.get $1
                 i32.store $0 offset=24
                 i32.const 2800
                 local.get $1
                 call $~lib/string/String.__concat
                 local.set $0
                 global.get $~lib/memory/__stack_pointer
                 local.get $0
                 i32.store $0 offset=8
                 global.get $~lib/memory/__stack_pointer
                 i32.const 2848
                 i32.store $0
                 local.get $0
                 i32.const 2848
                 call $~lib/string/String.__concat
                 i32.const 1808
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
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store $0 offset=8
      local.get $1
      local.get $2
      i32.store $0
      local.get $1
      i32.const 16
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner3
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i64.const 0
      i64.store $0
      local.get $0
      i64.const 0
      i64.store $0 offset=8
      local.get $0
      local.get $2
      i32.store $0
      local.get $0
      i32.const 2928
      i32.store $0 offset=4
      local.get $0
      local.get $2
      call $~lib/as-proto/assembly/Protobuf/Protobuf.encode<assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput>
      local.tee $0
      i32.store $0 offset=8
      i32.const 0
      global.set $~argumentsLength
      global.get $~lib/memory/__stack_pointer
      call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
      local.tee $1
      i32.store $0 offset=12
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner3
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      i64.const 0
      i64.store $0
      local.get $2
      local.get $1
      i32.store $0
      local.get $2
      local.get $0
      i32.store $0 offset=4
      local.get $1
      local.get $0
      i32.store $0 offset=4
      local.get $0
      if
       local.get $1
       local.get $0
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $1
      i32.store $0 offset=4
      local.get $2
      local.get $1
      i32.load $0
      local.tee $4
      i32.store $0
      local.get $2
      local.get $0
      i32.store $0 offset=4
      local.get $4
      local.get $0
      call $~lib/typedarray/Uint8Array#get:length
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0
      local.get $1
      call $assembly/lib/types/basic_types/AUint8Array#store
      local.set $0
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      br $folding-inner0
     end
     call $assembly/lib/context/StateCtx#constructor
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $4
     i32.store $0
     local.get $5
     local.get $1
     i32.store $0 offset=20
     block $__inlined_func$assembly/lib/interfaces/IAspectTransaction#isOwner@override
      local.get $2
      i32.const 8
      i32.sub
      i32.load $0
      i32.const 12
      i32.eq
      if
       block $__inlined_func$assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#isOwner (result i32)
        global.get $~lib/memory/__stack_pointer
        i32.const 12
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 8428
        i32.lt_s
        br_if $folding-inner3
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        i64.const 0
        i64.store $0
        local.get $2
        i32.const 0
        i32.store $0 offset=8
        local.get $2
        local.get $4
        i32.store $0
        local.get $2
        i32.const 3072
        i32.store $0 offset=4
        local.get $2
        i32.const 3072
        call $assembly/lib/context/StateCtx#getProperty
        local.tee $2
        i32.store $0 offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store $0
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=4
        local.get $2
        local.get $1
        call $~lib/string/String#includes
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 12
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 1
         br $__inlined_func$assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#isOwner
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 12
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const 0
       end
       local.set $1
       br $__inlined_func$assembly/lib/interfaces/IAspectTransaction#isOwner@override
      end
      unreachable
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=8
    local.get $1
    call $assembly/lib/entry/Entry#storeOutputBool
    local.set $0
    br $folding-inner0
   end
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 84
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/execute (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  global.get $assembly/index/entry
  local.tee $2
  i32.store $0
  local.get $2
  local.get $0
  local.get $1
  call $assembly/lib/entry/Entry#execute
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/isBlockLevel (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   global.get $assembly/index/entry
   local.tee $0
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0
   i32.const 0
   i32.ne
   call $assembly/lib/entry/Entry#storeOutputBool
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/isTransactionLevel (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   global.get $assembly/index/entry
   local.tee $0
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0 offset=4
   i32.const 0
   i32.ne
   call $assembly/lib/entry/Entry#storeOutputBool
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/types/basic_types/AString#set (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.store $0 offset=4
  local.get $1
  if
   local.get $0
   local.get $1
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.load $0
  local.tee $0
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $0
  local.get $1
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.store $0 offset=4
  local.get $2
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/basic_types/AString#store (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0
  local.tee $2
  i32.store $0
  local.get $2
  i32.load $0 offset=4
  local.set $2
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.load $0
  i32.store $0
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $2
  i32.const 6
  i32.add
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.load $0
  local.tee $2
  i32.store $0
  local.get $2
  local.get $1
  call $assembly/lib/types/basic_types/header#store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load $0
  local.tee $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.set $0
  i32.const 3
  global.set $~argumentsLength
  local.get $2
  local.get $0
  local.get $1
  i32.const 6
  i32.add
  call $~lib/string/String.UTF8.encodeUnsafe
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $assembly/lib/host/hostapi/Context.getProperty (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  i32.const 1664
  i32.store $0
  local.get $1
  i32.const 1664
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $1
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  call $assembly/lib/types/basic_types/AString#set
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $1
  call $assembly/lib/types/basic_types/AString#store
  call $assembly/lib/host/hostapi/__HostApi__.getProperty
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1664
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1664
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $1
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $1
  local.get $0
  call $assembly/lib/types/basic_types/AString#load
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0 offset=8
  local.get $1
  call $assembly/lib/types/basic_types/AString#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/context/StateCtx#getProperty (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  call $assembly/lib/host/hostapi/Context.getProperty
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/string/String#includes (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   local.get $1
   i32.store $0
   block $__inlined_func$~lib/string/String#indexOf
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const 1
    i32.shr_u
    local.tee $3
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     local.set $0
     br $__inlined_func$~lib/string/String#indexOf
    end
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    local.get $2
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const 1
    i32.shr_u
    local.tee $4
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const -1
     local.set $0
     br $__inlined_func$~lib/string/String#indexOf
    end
    i32.const 0
    local.set $0
    local.get $4
    local.get $3
    i32.sub
    local.set $4
    loop $for-loop|0
     local.get $0
     local.get $4
     i32.le_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $2
      i32.store $0
      local.get $5
      local.get $1
      i32.store $0 offset=4
      local.get $2
      local.get $0
      local.get $1
      local.get $3
      call $~lib/util/string/compareImpl
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$~lib/string/String#indexOf
      end
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const -1
    local.set $0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const -1
   i32.ne
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.const 48
  memory.fill $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.load $0
  local.set $2
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  i32.add
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.load $0
  local.set $3
  local.get $1
  local.get $0
  i32.store $0 offset=4
  block $folding-inner1
   block $folding-inner0
    local.get $3
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $2
    i32.load8_u $0
    local.tee $2
    i32.const 127
    i32.and
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=12
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i32.load8_u $0
    local.tee $2
    i32.const 127
    i32.and
    i32.const 7
    i32.shl
    i32.or
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=16
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i32.load8_u $0
    local.tee $2
    i32.const 127
    i32.and
    i32.const 14
    i32.shl
    i32.or
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=20
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i32.load8_u $0
    local.tee $2
    i32.const 127
    i32.and
    i32.const 21
    i32.shl
    i32.or
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=24
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i32.load8_u $0
    local.tee $2
    i32.const 15
    i32.and
    i32.const 28
    i32.shl
    i32.or
    local.set $1
    local.get $2
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=28
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u $0
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=32
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u $0
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=36
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u $0
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=40
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u $0
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=44
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i32.load8_u $0
    i32.const 128
    i32.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 48
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    return
   end
   i32.const 1248
   i32.const 3104
   i32.const 210
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint64 (param $0 i32) (result i64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.const 48
  memory.fill $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.load $0
  local.set $3
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0 offset=8
  local.get $0
  local.get $0
  i32.load $0
  i32.const 1
  i32.add
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.load $0
  local.set $4
  local.get $2
  local.get $0
  i32.store $0 offset=4
  block $folding-inner1
   block $folding-inner0
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $3
    i64.load8_u $0
    local.tee $5
    i64.const 127
    i64.and
    local.set $1
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=12
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i64.load8_u $0
    local.tee $5
    i64.const 127
    i64.and
    i64.const 7
    i64.shl
    i64.or
    local.set $1
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=16
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i64.load8_u $0
    local.tee $5
    i64.const 127
    i64.and
    i64.const 14
    i64.shl
    i64.or
    local.set $1
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=20
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i64.load8_u $0
    local.tee $5
    i64.const 127
    i64.and
    i64.const 21
    i64.shl
    i64.or
    local.set $1
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=24
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i64.load8_u $0
    local.tee $5
    i64.const 127
    i64.and
    i64.const 28
    i64.shl
    i64.or
    local.set $1
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=28
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i64.load8_u $0
    local.tee $5
    i64.const 127
    i64.and
    i64.const 35
    i64.shl
    i64.or
    local.set $1
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=32
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i64.load8_u $0
    local.tee $5
    i64.const 127
    i64.and
    i64.const 42
    i64.shl
    i64.or
    local.set $1
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=36
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i64.load8_u $0
    local.tee $5
    i64.const 127
    i64.and
    i64.const 49
    i64.shl
    i64.or
    local.set $1
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=40
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i64.load8_u $0
    local.tee $5
    i64.const 127
    i64.and
    i64.const 56
    i64.shl
    i64.or
    local.set $1
    local.get $5
    i64.const 128
    i64.lt_u
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=44
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $3
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $0
    i32.load $0
    i32.const 1
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $4
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
    local.get $1
    local.get $3
    i64.load8_u $0
    i64.const 1
    i64.and
    i64.const 63
    i64.shl
    i64.or
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 48
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    return
   end
   i32.const 1248
   i32.const 3104
   i32.const 210
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  block $folding-inner0
   local.get $1
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0 offset=12
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    drop
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $1
    local.get $0
    i32.load $0
    i32.add
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0
    local.set $1
    local.get $2
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0 offset=4
    i32.gt_u
    br_if $folding-inner0
   else
    loop $while-continue|0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0
     local.get $2
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0
     local.set $1
     local.get $2
     local.get $0
     i32.store $0 offset=4
     local.get $2
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $0
     i32.load $0
     i32.const 1
     i32.add
     i32.store $0
     local.get $2
     local.get $0
     i32.store $0 offset=4
     local.get $0
     i32.load $0
     local.set $3
     local.get $2
     local.get $0
     i32.store $0 offset=4
     local.get $3
     local.get $0
     i32.load $0 offset=4
     i32.gt_u
     br_if $folding-inner0
     local.get $1
     i32.load8_u $0
     i32.const 128
     i32.and
     br_if $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 1248
  i32.const 3104
  i32.const 210
  i32.const 5
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         br_table $case0|0 $case1|0 $case2|0 $case3|0 $case5|0 $case4|0 $case5|0
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0
        local.get $0
        i32.const 0
        call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
        br $break|0
       end
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0
       local.get $0
       i32.const 8
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
       br $break|0
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store $0
      local.get $1
      local.get $0
      i32.store $0 offset=4
      local.get $1
      local.get $0
      i32.store $0 offset=8
      local.get $0
      local.get $0
      call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
      call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
      br $break|0
     end
     loop $while-continue|1
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      local.get $0
      i32.store $0 offset=12
      local.get $1
      local.get $0
      i32.store $0
      local.get $0
      call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#varint32
      i32.const 7
      i32.and
      local.tee $1
      i32.const 4
      i32.ne
      if
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0
       local.get $0
       local.get $1
       call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skipType
       br $while-continue|1
      end
     end
     br $break|0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.const 4
    call $~lib/as-proto/assembly/internal/FixedReader/FixedReader#skip
    br $break|0
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 3216
   i32.store $0
   local.get $1
   call $~lib/number/I32#toString
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   i32.const 3216
   local.get $0
   call $~lib/string/String.__concat
   i32.const 3104
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
 (func $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor (result i32)
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i64.const 0
  i64.store $0
  local.get $0
  i32.const 0
  i32.store $0 offset=8
  local.get $0
  i32.const 8
  i32.const 28
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store8 $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 0
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  i32.const 1
  i32.store8 $0
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $1
  i32.const 1664
  i32.store $0 offset=8
  local.get $0
  i32.const 1664
  i32.store $0 offset=4
  local.get $0
  i32.const 1664
  i32.const 0
  call $byn-split-outlined-A$~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/context/PostContractCallCtx#getContext (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i64.const 0
   i64.store $0 offset=8
   local.get $1
   i32.const 1664
   i32.store $0
   local.get $1
   i32.const 1664
   call $assembly/lib/types/basic_types/AString#constructor
   local.tee $1
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $1
   local.get $0
   call $assembly/lib/types/basic_types/AString#set
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=8
   local.get $1
   call $assembly/lib/types/basic_types/AString#store
   call $assembly/lib/host/hostapi/__HostApi__.getContext
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1664
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1664
   call $assembly/lib/types/basic_types/AString#constructor
   local.tee $1
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=8
   local.get $1
   local.get $0
   call $assembly/lib/types/basic_types/AString#load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=8
   local.get $1
   call $assembly/lib/types/basic_types/AString#get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String#charAt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1664
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0 offset=4
  local.get $2
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u $0
  i32.store16 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String#substr (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $0
  i32.const 20
  i32.sub
  i32.load $0 offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  local.get $1
  i32.const 0
  i32.lt_s
  if
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
   local.set $1
  end
  local.get $1
  i32.sub
  local.tee $3
  local.get $2
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $2
  i32.const 0
  i32.le_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1664
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store $0 offset=4
  local.get $3
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  memory.copy $0 $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/util/string/strtol<i32> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  block $folding-inner0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.tee $1
   i32.eqz
   br_if $folding-inner0
   local.get $0
   local.tee $2
   i32.load16_u $0
   local.set $0
   loop $while-continue|0
    block $__inlined_func$~lib/util/string/isSpace (result i32)
     local.get $0
     i32.const 128
     i32.or
     i32.const 160
     i32.eq
     local.get $0
     i32.const 9
     i32.sub
     i32.const 4
     i32.le_u
     i32.or
     local.get $0
     i32.const 5760
     i32.lt_u
     br_if $__inlined_func$~lib/util/string/isSpace
     drop
     i32.const 1
     local.get $0
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace
     drop
     block $break|0
      block $case0|0
       local.get $0
       i32.const 5760
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8232
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8233
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8239
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 8287
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 12288
       i32.eq
       br_if $case0|0
       local.get $0
       i32.const 65279
       i32.eq
       br_if $case0|0
       br $break|0
      end
      i32.const 1
      br $__inlined_func$~lib/util/string/isSpace
     end
     i32.const 0
    end
    if
     local.get $2
     i32.const 2
     i32.add
     local.tee $2
     i32.load16_u $0
     local.set $0
     local.get $1
     i32.const 1
     i32.sub
     local.set $1
     br $while-continue|0
    end
   end
   i32.const 1
   local.set $3
   local.get $0
   i32.const 43
   i32.eq
   local.get $0
   i32.const 45
   i32.eq
   i32.or
   if (result i32)
    local.get $1
    i32.const 1
    i32.sub
    local.tee $1
    i32.eqz
    br_if $folding-inner0
    i32.const -1
    i32.const 1
    local.get $0
    i32.const 45
    i32.eq
    select
    local.set $3
    local.get $2
    i32.const 2
    i32.add
    local.tee $2
    i32.load16_u $0
   else
    local.get $0
   end
   i32.const 48
   i32.eq
   local.get $1
   i32.const 2
   i32.gt_s
   i32.and
   if (result i32)
    local.get $2
    i32.load16_u $0 offset=2
    i32.const 32
    i32.or
    i32.const 120
    i32.eq
   else
    i32.const 0
   end
   if
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    local.get $1
    i32.const 2
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 1
   i32.sub
   local.set $5
   loop $while-continue|2
    local.get $1
    local.tee $0
    i32.const 1
    i32.sub
    local.set $1
    local.get $0
    if
     block $while-break|2
      local.get $2
      i32.load16_u $0
      local.tee $0
      i32.const 48
      i32.sub
      i32.const 10
      i32.lt_u
      if (result i32)
       local.get $0
       i32.const 48
       i32.sub
      else
       local.get $0
       i32.const 65
       i32.sub
       i32.const 25
       i32.le_u
       if (result i32)
        local.get $0
        i32.const 55
        i32.sub
       else
        local.get $0
        i32.const 87
        i32.sub
        local.get $0
        local.get $0
        i32.const 97
        i32.sub
        i32.const 25
        i32.le_u
        select
       end
      end
      local.tee $0
      i32.const 16
      i32.ge_u
      if
       local.get $1
       local.get $5
       i32.eq
       br_if $folding-inner0
       br $while-break|2
      end
      local.get $4
      i32.const 4
      i32.shl
      local.get $0
      i32.add
      local.set $4
      local.get $2
      i32.const 2
      i32.add
      local.set $2
      br $while-continue|2
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $4
   i32.mul
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.Address.fromHexString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store $0
   local.get $4
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $5
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   i32.const 5360
   i32.store $0 offset=4
   local.get $4
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   i64.const 0
   i64.store $0
   local.get $6
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $4
   local.get $6
   i32.const 5360
   i32.store $0
   block $__inlined_func$~lib/string/String#startsWith
    local.get $4
    i32.const 5356
    i32.load $0
    i32.const 1
    i32.shr_u
    local.tee $4
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     br $__inlined_func$~lib/string/String#startsWith
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    i32.const 5360
    i32.store $0 offset=4
    local.get $0
    i32.const 0
    i32.const 5360
    local.get $4
    call $~lib/util/string/compareImpl
    i32.eqz
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   i32.const 42
   i32.const 40
   local.get $1
   local.get $5
   i32.eq
   select
   i32.eqz
   if
    i32.const 5392
    i32.const 5456
    i32.const 356
    i32.const 13
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 14
   i32.const 44
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $1
   i32.store $0 offset=4
   local.get $4
   block $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Number#constructor (result i32)
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner00
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store $0
     local.get $1
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 14
      i32.const 45
      call $~lib/rt/itcms/__new
      local.tee $1
      i32.store $0
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $1
     i32.store $0 offset=4
     local.get $1
     i32.const 32
     i32.store8 $0 offset=12
     local.get $4
     local.get $1
     i32.store $0 offset=4
     local.get $1
     i32.const 0
     i32.store8 $0 offset=13
     local.get $4
     local.get $1
     i32.store $0 offset=4
     local.get $4
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner00
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store $0
     local.get $1
     i32.eqz
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.const 46
      call $~lib/rt/itcms/__new
      local.tee $1
      i32.store $0
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $1
     i32.store $0 offset=4
     local.get $5
     local.get $1
     i32.const 32
     call $~lib/typedarray/Uint8Array#constructor
     local.tee $1
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $4
     local.get $1
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=4
     local.get $1
     i32.const 0
     i32.store8 $0 offset=13
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=4
     local.get $1
     i32.const 20
     i32.store8 $0 offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     br $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Number#constructor
    end
    br $folding-inner1
   end
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store $0
   local.get $4
   i32.const 0
   i32.store $0 offset=8
   local.get $4
   local.get $0
   i32.store $0
   local.get $4
   block $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.ByteArray.validateAndTrimHex (result i32)
    local.get $4
    i32.const 20
    i32.sub
    global.set $~lib/memory/__stack_pointer
    block $folding-inner01
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner01
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     i32.const 0
     i32.const 20
     memory.fill $0
     local.get $4
     local.get $0
     i32.store $0
     local.get $0
     i32.const 20
     i32.sub
     i32.load $0 offset=16
     i32.const 1
     i32.shr_u
     i32.const 1
     i32.and
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      i32.const 5744
      i32.store $0 offset=8
      local.get $1
      local.get $0
      i32.store $0 offset=12
      i32.const 5744
      local.get $0
      call $~lib/string/String.__concat
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      i32.const 5776
      i32.store $0 offset=4
      local.get $0
      i32.const 5776
      call $~lib/string/String.__concat
      i32.const 5456
      i32.const 73
      i32.const 13
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     local.get $0
     i32.const 20
     i32.sub
     i32.load $0 offset=16
     i32.const 1
     i32.shr_u
     i32.const 2
     i32.ge_u
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=8
      local.get $0
      i32.const 0
      call $~lib/string/String#charAt
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      i32.const 3472
      i32.store $0 offset=4
      local.get $4
      i32.const 3472
      call $~lib/string/String.__eq
     else
      i32.const 0
     end
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=8
      local.get $0
      i32.const 1
      call $~lib/string/String#charAt
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      i32.const 5840
      i32.store $0 offset=4
      local.get $4
      i32.const 5840
      call $~lib/string/String.__eq
     else
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      local.get $0
      i32.store $0
      i32.const 1
      global.set $~argumentsLength
      local.get $4
      i32.const 4
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner01
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
       i32.const 2147483647
       local.set $3
      end
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0
      local.get $0
      i32.const 2
      local.get $3
      call $~lib/string/String#substr
      local.set $0
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $4
      local.get $0
      i32.store $0 offset=16
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $0
     br $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.ByteArray.validateAndTrimHex
    end
    br $folding-inner1
   end
   local.tee $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $0
   i32.store $0
   local.get $3
   local.get $1
   i32.store $0 offset=8
   local.get $3
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   i32.const 0
   i32.store $0 offset=8
   local.get $3
   local.get $0
   i32.store $0
   i32.const 64
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   i32.sub
   i32.const 1
   i32.shr_s
   local.set $3
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $2
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const 1
    i32.shr_u
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $1
     i32.store $0
     local.get $4
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $2
     i32.const 2
     call $~lib/string/String#substr
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     i32.const 0
     i32.store $0
     local.get $5
     local.get $4
     i32.store $0
     local.get $4
     call $~lib/util/string/strtol<i32>
     local.set $4
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $1
     local.get $3
     local.get $2
     i32.const 1
     i32.shr_s
     i32.add
     local.get $4
     i32.const 255
     i32.and
     call $~lib/typedarray/Uint8Array#__set
     local.get $2
     i32.const 2
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Uint32Array#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  i32.const 12
  i32.const 49
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $1
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/bigint/BigInt#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i32.const 0
  i32.store $0 offset=8
  local.get $2
  i32.const 9
  i32.const 48
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store $0 offset=4
  local.get $3
  local.get $2
  i32.store $0 offset=4
  local.get $2
  i32.const 0
  i32.store8 $0 offset=8
  local.get $3
  local.get $2
  i32.store $0 offset=4
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=8
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  if
   local.get $2
   local.get $0
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  local.get $2
  i32.store $0 offset=4
  local.get $2
  local.get $1
  i32.store8 $0 offset=8
  local.get $0
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/typedarray/Uint32Array#__set (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i32.const 0
  i32.store $0
  local.get $3
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1248
   i32.const 1984
   i32.const 889
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store $0
  local.get $3
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/typedarray/Uint32Array#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 1248
   i32.const 1984
   i32.const 878
   i32.const 64
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.set $0
  local.get $2
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/bigint/BigInt.fromUInt16 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  i32.const 5
  i32.const 0
  call $assembly/lib/types/bigint/BigInt#constructor
  local.tee $2
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load $0
  local.tee $1
  i32.store $0 offset=4
  local.get $1
  i32.const 0
  local.get $0
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load $0
  local.tee $0
  i32.store $0 offset=8
  local.get $2
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 0
  i32.ne
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/string/String.__ne (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $1
  i32.const 1664
  i32.store $0 offset=4
  local.get $0
  i32.const 1664
  call $~lib/string/String.__eq
  i32.eqz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/bigint/BigInt#trimLeadingZeros (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store $0
  loop $while-continue|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   i32.const 0
   i32.gt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0 offset=4
    local.get $1
    local.get $0
    i32.load $0
    local.tee $2
    i32.store $0
    local.get $1
    local.get $0
    i32.store $0 offset=4
    local.get $2
    local.get $0
    i32.load $0 offset=4
    i32.const 1
    i32.sub
    call $~lib/typedarray/Uint32Array#__get
   else
    i32.const 1
   end
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.store $0 offset=4
    local.get $0
    local.get $0
    i32.load $0 offset=4
    i32.const 1
    i32.sub
    i32.store $0 offset=4
    br $while-continue|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.const 0
   i32.store8 $0 offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/bigint/BigInt.getEmptyResultContainer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  local.get $0
  i32.const 5
  i32.add
  local.get $0
  i32.const 5
  i32.rem_s
  i32.sub
  local.get $1
  call $assembly/lib/types/bigint/BigInt#constructor
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0 offset=4
  local.get $0
  local.get $2
  i32.store $0 offset=4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/bigint/BigInt#mul<assembly/lib/types/bigint/BigInt> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   i64.const 0
   i64.store $0 offset=8
   local.get $3
   local.get $1
   i32.store $0
   local.get $3
   local.get $1
   local.tee $2
   i32.store $0 offset=4
   local.get $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.set $5
   local.get $3
   local.get $1
   i32.store $0
   local.get $5
   local.get $1
   i32.load $0 offset=4
   i32.add
   i32.const 1
   i32.add
   local.set $8
   local.get $3
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.set $5
   local.get $3
   local.get $1
   i32.store $0
   local.get $5
   local.get $1
   i32.load $0 offset=4
   i32.le_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.tee $1
    i32.store $0
   else
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
   end
   local.get $1
   i32.load $0 offset=4
   i32.const 256
   i32.lt_s
   local.get $8
   i32.const 256
   i32.lt_s
   i32.and
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    local.get $2
    i32.store $0 offset=8
    local.get $1
    local.get $1
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store $0
    local.get $1
    i32.const 0
    i32.store $0 offset=8
    local.get $1
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    local.set $3
    local.get $1
    local.get $2
    i32.store $0
    local.get $1
    local.get $8
    local.get $3
    local.get $2
    i32.load $0 offset=4
    i32.add
    local.tee $1
    local.get $1
    local.get $8
    i32.gt_s
    select
    local.tee $5
    i32.const 0
    local.get $5
    call $assembly/lib/types/bigint/BigInt.getEmptyResultContainer
    local.tee $1
    i32.store $0 offset=4
    loop $for-loop|0
     local.get $4
     local.get $5
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $2
      i32.store $0
      local.get $4
      local.get $2
      i32.load $0 offset=4
      i32.const 1
      i32.sub
      local.tee $7
      local.get $4
      local.get $4
      local.get $7
      i32.gt_s
      select
      local.tee $7
      i32.sub
      local.set $8
      local.get $3
      local.get $0
      i32.store $0
      local.get $0
      i32.load $0 offset=4
      local.get $8
      i32.sub
      local.tee $3
      local.get $7
      i32.const 1
      i32.add
      local.tee $9
      local.get $3
      local.get $9
      i32.lt_s
      select
      local.set $9
      i32.const 0
      local.set $3
      loop $for-loop|1
       local.get $3
       local.get $9
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $10
        local.get $0
        i32.store $0 offset=8
        local.get $10
        local.get $0
        i32.load $0
        local.tee $10
        i32.store $0
        local.get $10
        local.get $3
        local.get $8
        i32.add
        call $~lib/typedarray/Uint32Array#__get
        i64.extend_i32_u
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store $0 offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.load $0
        local.tee $10
        i32.store $0
        local.get $6
        local.get $11
        local.get $10
        local.get $7
        local.get $3
        i32.sub
        call $~lib/typedarray/Uint32Array#__get
        i64.extend_i32_u
        i64.mul
        i64.add
        local.set $6
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        br $for-loop|1
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $1
      i32.store $0 offset=8
      local.get $3
      local.get $1
      i32.load $0
      local.tee $3
      i32.store $0
      local.get $3
      local.get $4
      local.get $6
      i32.wrap_i64
      i32.const 268435455
      i32.and
      call $~lib/typedarray/Uint32Array#__set
      local.get $6
      i64.const 28
      i64.shr_u
      local.set $6
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=12
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    local.get $2
    i32.store $0 offset=8
    local.get $1
    local.get $1
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store $0
    local.get $1
    i32.const 0
    i32.store $0 offset=8
    local.get $1
    local.get $8
    i32.const 0
    local.get $8
    call $assembly/lib/types/bigint/BigInt.getEmptyResultContainer
    local.tee $1
    i32.store $0
    loop $for-loop|00
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=4
     local.get $4
     local.get $0
     i32.load $0 offset=4
     i32.lt_s
     if
      i32.const 0
      local.set $5
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=4
      local.get $8
      local.get $4
      i32.sub
      local.tee $3
      local.get $2
      i32.load $0 offset=4
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0 offset=4
       local.get $2
       i32.load $0 offset=4
       local.set $3
      end
      i32.const 0
      local.set $7
      loop $for-loop|11
       local.get $3
       local.get $7
       i32.gt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $9
        local.get $1
        i32.store $0 offset=8
        local.get $9
        local.get $1
        i32.load $0
        local.tee $9
        i32.store $0 offset=4
        local.get $9
        local.get $4
        local.get $7
        i32.add
        local.tee $9
        call $~lib/typedarray/Uint32Array#__get
        i64.extend_i32_u
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0 offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.load $0
        local.tee $10
        i32.store $0 offset=4
        local.get $10
        local.get $4
        call $~lib/typedarray/Uint32Array#__get
        i64.extend_i32_u
        local.set $11
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store $0 offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.load $0
        local.tee $10
        i32.store $0 offset=4
        local.get $5
        i64.extend_i32_u
        local.get $6
        local.get $11
        local.get $10
        local.get $7
        call $~lib/typedarray/Uint32Array#__get
        i64.extend_i32_u
        i64.mul
        i64.add
        i64.add
        local.set $6
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.load $0
        local.tee $5
        i32.store $0 offset=4
        local.get $5
        local.get $9
        local.get $6
        i64.const 268435455
        i64.and
        i32.wrap_i64
        call $~lib/typedarray/Uint32Array#__set
        local.get $6
        i64.const 28
        i64.shr_u
        i32.wrap_i64
        local.set $5
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        br $for-loop|11
       end
      end
      local.get $3
      local.get $4
      i32.add
      local.get $8
      i32.lt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $7
       local.get $1
       i32.store $0 offset=8
       local.get $7
       local.get $1
       i32.load $0
       local.tee $7
       i32.store $0 offset=4
       local.get $7
       local.get $3
       local.get $4
       i32.add
       local.get $5
       call $~lib/typedarray/Uint32Array#__set
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $for-loop|00
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=4
    local.get $1
    call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=12
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.store $0
   local.get $3
   local.get $0
   i32.store $0 offset=8
   local.get $0
   i32.load8_u $0 offset=8
   i32.const 0
   i32.ne
   local.set $0
   local.get $3
   local.get $2
   i32.store $0 offset=8
   local.get $1
   local.get $0
   local.get $2
   i32.load8_u $0 offset=8
   i32.const 0
   i32.ne
   i32.ne
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=8
    local.get $1
    i32.load $0 offset=4
    i32.const 0
    i32.gt_s
   else
    i32.const 0
   end
   i32.store8 $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/typedarray/Uint32Array#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=8
  i32.const 2
  i32.shr_u
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/bigint/BigInt#inplaceMulInt (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   block $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store $0
    local.get $5
    i32.const 0
    i32.store $0 offset=8
    local.get $1
    i32.const 268435456
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0
     local.get $1
     local.set $2
     local.get $3
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner1
     local.get $0
     local.set $3
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i64.const 0
     i64.store $0
     local.get $0
     i32.const 0
     i32.store $0 offset=8
     local.get $0
     i32.const 5
     i32.const 0
     call $assembly/lib/types/bigint/BigInt#constructor
     local.tee $5
     i32.store $0
     i32.const 0
     local.set $0
     loop $while-continue|0
      local.get $2
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $5
       i32.store $0 offset=8
       local.get $1
       local.get $5
       i32.load $0
       local.tee $6
       i32.store $0 offset=4
       local.get $0
       local.tee $1
       i32.const 1
       i32.add
       local.set $0
       local.get $6
       local.get $1
       local.get $2
       i32.const 268435455
       i32.and
       call $~lib/typedarray/Uint32Array#__set
       local.get $2
       i32.const 28
       i32.shr_u
       local.set $2
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $5
     i32.store $0 offset=4
     local.get $5
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $5
     i32.store $0 offset=4
     local.get $5
     call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     local.get $3
     local.get $5
     call $assembly/lib/types/bigint/BigInt#mul<assembly/lib/types/bigint/BigInt>
     local.set $0
     br $folding-inner0
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $0
    i32.store $0
    local.get $5
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=4
    i32.const 1
    i32.add
    local.set $6
    local.get $5
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store $0
    local.get $5
    local.get $0
    i32.store $0 offset=4
    local.get $5
    local.get $0
    i32.load $0
    local.tee $5
    i32.store $0
    local.get $5
    call $~lib/typedarray/Uint32Array#get:length
    local.get $6
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $0
     i32.store $0
     local.get $5
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     i64.const 0
     i64.store $0
     local.get $5
     i64.const 0
     i64.store $0 offset=8
     local.get $5
     local.get $6
     i32.const 10
     i32.add
     local.get $6
     i32.const 5
     i32.rem_s
     i32.sub
     call $~lib/typedarray/Uint32Array#constructor
     local.tee $5
     i32.store $0
     loop $for-loop|0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=4
      local.get $3
      local.get $0
      i32.load $0 offset=4
      i32.lt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $6
       local.get $5
       i32.store $0 offset=4
       local.get $6
       local.get $0
       i32.store $0 offset=12
       local.get $6
       local.get $0
       i32.load $0
       local.tee $6
       i32.store $0 offset=8
       local.get $5
       local.get $3
       local.get $6
       local.get $3
       call $~lib/typedarray/Uint32Array#__get
       call $~lib/typedarray/Uint32Array#__set
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $for-loop|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0 offset=4
     local.get $3
     local.get $5
     i32.store $0 offset=8
     local.get $0
     local.get $5
     i32.store $0
     local.get $5
     if
      local.get $0
      local.get $5
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    local.set $3
    loop $for-loop|05
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     local.get $2
     local.get $0
     i32.load $0 offset=4
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $5
      local.get $0
      i32.store $0 offset=4
      local.get $5
      local.get $0
      i32.load $0
      local.tee $5
      i32.store $0
      local.get $3
      i64.extend_i32_u
      local.get $5
      local.get $2
      call $~lib/typedarray/Uint32Array#__get
      i64.extend_i32_u
      local.get $1
      i64.extend_i32_u
      i64.mul
      i64.add
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.load $0
      local.tee $3
      i32.store $0
      local.get $3
      local.get $2
      local.get $4
      i64.const 268435455
      i64.and
      i32.wrap_i64
      call $~lib/typedarray/Uint32Array#__set
      local.get $4
      i64.const 28
      i64.shr_u
      i32.wrap_i64
      local.set $3
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $for-loop|05
     end
    end
    local.get $3
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $0
     i32.load $0
     local.tee $2
     i32.store $0
     local.get $1
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $0
     i32.load $0 offset=4
     local.tee $1
     i32.const 1
     i32.add
     i32.store $0 offset=4
     local.get $2
     local.get $1
     local.get $3
     call $~lib/typedarray/Uint32Array#__set
    end
    br $folding-inner0
   end
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/bigint/BigInt#_add (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.const 20
  memory.fill $0
  local.get $5
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.set $6
  local.get $5
  local.get $1
  i32.store $0
  local.get $6
  local.get $1
  i32.load $0 offset=4
  i32.gt_s
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $5
   local.get $6
   local.get $0
   i32.store $0
   local.get $0
  else
   global.get $~lib/memory/__stack_pointer
   local.tee $6
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   local.set $5
   local.get $6
   local.get $1
   i32.store $0
   local.get $1
  end
  local.tee $7
  i32.load $0 offset=4
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.tee $8
  local.get $7
  i32.store $0 offset=4
  local.get $8
  local.get $6
  i32.const 1
  i32.add
  local.get $2
  local.get $6
  call $assembly/lib/types/bigint/BigInt.getEmptyResultContainer
  local.tee $8
  i32.store $0 offset=8
  loop $for-loop|0
   local.get $3
   local.get $5
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $8
    i32.store $0 offset=12
    local.get $2
    local.get $8
    i32.load $0
    local.tee $9
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=16
    local.get $2
    local.get $0
    i32.load $0
    local.tee $2
    i32.store $0 offset=12
    local.get $2
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load $0
    local.tee $2
    i32.store $0 offset=12
    local.get $9
    local.get $3
    local.get $2
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    local.get $10
    i32.add
    local.get $4
    i32.add
    call $~lib/typedarray/Uint32Array#__set
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.load $0
    local.tee $2
    i32.store $0
    local.get $2
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    i32.const 28
    i32.shr_u
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.load $0
    local.tee $2
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store $0 offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.load $0
    local.tee $9
    i32.store $0 offset=12
    local.get $2
    local.get $3
    local.get $9
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    i32.const 268435455
    i32.and
    call $~lib/typedarray/Uint32Array#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $5
  local.get $6
  i32.ne
  if
   loop $for-loop|1
    local.get $3
    local.get $6
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $8
     i32.store $0 offset=12
     local.get $0
     local.get $8
     i32.load $0
     local.tee $1
     i32.store $0
     local.get $0
     local.get $7
     i32.store $0 offset=16
     local.get $0
     local.get $7
     i32.load $0
     local.tee $0
     i32.store $0 offset=12
     local.get $1
     local.get $3
     local.get $0
     local.get $3
     call $~lib/typedarray/Uint32Array#__get
     local.get $4
     i32.add
     call $~lib/typedarray/Uint32Array#__set
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.load $0
     local.tee $0
     i32.store $0
     local.get $0
     local.get $3
     call $~lib/typedarray/Uint32Array#__get
     i32.const 28
     i32.shr_u
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.load $0
     local.tee $0
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.load $0
     local.tee $1
     i32.store $0 offset=12
     local.get $0
     local.get $3
     local.get $1
     local.get $3
     call $~lib/typedarray/Uint32Array#__get
     i32.const 268435455
     i32.and
     call $~lib/typedarray/Uint32Array#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
  end
  local.get $4
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $8
   i32.store $0 offset=12
   local.get $0
   local.get $8
   i32.load $0
   local.tee $0
   i32.store $0
   local.get $0
   local.get $6
   local.get $4
   call $~lib/typedarray/Uint32Array#__set
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store $0 offset=12
   local.get $8
   local.get $8
   i32.load $0 offset=4
   i32.const 1
   i32.add
   i32.store $0 offset=4
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $assembly/lib/types/bigint/BigInt#magCompareTo (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.set $3
  local.get $2
  local.get $1
  i32.store $0
  block $folding-inner1
   block $folding-inner0
    local.get $3
    local.get $1
    i32.load $0 offset=4
    i32.gt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    local.set $3
    local.get $2
    local.get $1
    i32.store $0
    local.get $3
    local.get $1
    i32.load $0 offset=4
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
    i32.const 1
    i32.sub
    local.set $2
    loop $for-loop|0
     local.get $2
     i32.const 0
     i32.ge_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $3
      local.get $0
      i32.store $0 offset=4
      local.get $3
      local.get $0
      i32.load $0
      local.tee $3
      i32.store $0
      local.get $3
      local.get $2
      call $~lib/typedarray/Uint32Array#__get
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.load $0
      local.tee $3
      i32.store $0
      local.get $3
      local.get $2
      call $~lib/typedarray/Uint32Array#__get
      local.get $4
      i32.ne
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $3
       local.get $0
       i32.store $0 offset=4
       local.get $3
       local.get $0
       i32.load $0
       local.tee $0
       i32.store $0
       local.get $0
       local.get $2
       call $~lib/typedarray/Uint32Array#__get
       local.set $0
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store $0 offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.load $0
       local.tee $1
       i32.store $0
       local.get $1
       local.get $2
       call $~lib/typedarray/Uint32Array#__get
       local.get $0
       i32.gt_u
       br_if $folding-inner1
       br $folding-inner0
      end
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    return
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const -1
 )
 (func $assembly/lib/types/bigint/BigInt#_sub (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i64.const 0
  i64.store $0
  local.get $5
  i64.const 0
  i64.store $0 offset=8
  local.get $5
  local.get $1
  i32.store $0
  local.get $1
  i32.load $0 offset=4
  local.set $6
  local.get $5
  local.get $0
  i32.store $0
  local.get $5
  local.get $0
  i32.load $0 offset=4
  local.tee $5
  local.get $2
  local.get $5
  call $assembly/lib/types/bigint/BigInt.getEmptyResultContainer
  local.tee $7
  i32.store $0 offset=4
  loop $for-loop|0
   local.get $3
   local.get $6
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $7
    i32.store $0 offset=8
    local.get $2
    local.get $7
    i32.load $0
    local.tee $8
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=12
    local.get $2
    local.get $0
    i32.load $0
    local.tee $2
    i32.store $0 offset=8
    local.get $2
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    local.set $9
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.load $0
    local.tee $2
    i32.store $0 offset=8
    local.get $8
    local.get $3
    local.get $9
    local.get $2
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    i32.sub
    local.get $4
    i32.sub
    call $~lib/typedarray/Uint32Array#__set
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.load $0
    local.tee $2
    i32.store $0
    local.get $2
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    i32.const 31
    i32.shr_u
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.load $0
    local.tee $2
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.load $0
    local.tee $8
    i32.store $0 offset=8
    local.get $2
    local.get $3
    local.get $8
    local.get $3
    call $~lib/typedarray/Uint32Array#__get
    i32.const 268435455
    i32.and
    call $~lib/typedarray/Uint32Array#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $5
  local.get $6
  i32.gt_s
  if
   loop $for-loop|1
    local.get $3
    local.get $5
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $7
     i32.store $0 offset=8
     local.get $1
     local.get $7
     i32.load $0
     local.tee $2
     i32.store $0
     local.get $1
     local.get $0
     i32.store $0 offset=12
     local.get $1
     local.get $0
     i32.load $0
     local.tee $1
     i32.store $0 offset=8
     local.get $2
     local.get $3
     local.get $1
     local.get $3
     call $~lib/typedarray/Uint32Array#__get
     local.get $4
     i32.sub
     call $~lib/typedarray/Uint32Array#__set
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load $0
     local.tee $1
     i32.store $0
     local.get $1
     local.get $3
     call $~lib/typedarray/Uint32Array#__get
     i32.const 31
     i32.shr_u
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load $0
     local.tee $1
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.load $0
     local.tee $2
     i32.store $0 offset=8
     local.get $1
     local.get $3
     local.get $2
     local.get $3
     call $~lib/typedarray/Uint32Array#__get
     i32.const 268435455
     i32.and
     call $~lib/typedarray/Uint32Array#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|1
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store $0
  local.get $7
  call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $assembly/lib/types/bigint/BigInt#add<assembly/lib/types/bigint/BigInt> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  i64.const 0
  i64.store $0 offset=8
  local.get $2
  local.get $1
  i32.store $0
  local.get $2
  local.get $1
  i32.store $0 offset=4
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load8_u $0 offset=8
  i32.const 0
  i32.ne
  local.set $3
  local.get $2
  local.get $1
  i32.store $0
  local.get $3
  local.get $1
  i32.load8_u $0 offset=8
  i32.const 0
  i32.ne
  i32.eq
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=8
   local.get $2
   local.get $0
   i32.store $0 offset=12
   local.get $0
   local.get $1
   local.get $0
   i32.load8_u $0 offset=8
   call $assembly/lib/types/bigint/BigInt#_add
  else
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=8
   local.get $0
   local.get $1
   call $assembly/lib/types/bigint/BigInt#magCompareTo
   i32.const 0
   i32.lt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $2
    local.get $1
    i32.store $0 offset=12
    local.get $1
    local.get $0
    local.get $1
    i32.load8_u $0 offset=8
    call $assembly/lib/types/bigint/BigInt#_sub
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $1
    i32.store $0 offset=8
    local.get $2
    local.get $0
    i32.store $0 offset=12
    local.get $0
    local.get $1
    local.get $0
    i32.load8_u $0 offset=8
    call $assembly/lib/types/bigint/BigInt#_sub
   end
  end
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/types/bigint/BigInt.fromString (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 32
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 32
   memory.fill $0
   local.get $1
   i32.const 2
   i32.lt_s
   local.get $1
   i32.const 16
   i32.gt_s
   i32.or
   if
    i32.const 5952
    i32.const 6080
    i32.const 67
    i32.const 13
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   local.get $0
   i32.const 0
   call $~lib/string/String#charAt
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 6160
   i32.store $0 offset=4
   local.get $2
   i32.const 6160
   call $~lib/string/String.__eq
   if (result i32)
    i32.const 1
    local.set $5
    i32.const 1
   else
    i32.const 0
   end
   local.set $3
   local.get $1
   i32.const 10
   i32.eq
   local.get $1
   i32.const 16
   i32.eq
   i32.or
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $3
    call $~lib/string/String#charAt
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    i32.const 3472
    i32.store $0 offset=4
    local.get $2
    i32.const 3472
    call $~lib/string/String.__eq
   else
    i32.const 0
   end
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=8
    local.get $0
    local.get $3
    i32.const 1
    i32.add
    call $~lib/string/String#charAt
    local.set $2
    global.get $~lib/memory/__stack_pointer
    local.get $2
    i32.store $0
    global.get $~lib/memory/__stack_pointer
    i32.const 5840
    i32.store $0 offset=4
    local.get $2
    i32.const 5840
    call $~lib/string/String.__eq
   else
    i32.const 0
   end
   if
    local.get $3
    i32.const 2
    i32.add
    local.set $3
    i32.const 16
    local.set $1
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $assembly/lib/types/bigint/BigInt.fromUInt16
   local.tee $4
   i32.store $0 offset=12
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $3
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const 1
    i32.shr_u
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0
     local.get $2
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     i32.const 0
     i32.store $0
     local.get $2
     local.get $0
     i32.store $0
     block $__inlined_func$~lib/string/String#charCodeAt
      local.get $3
      local.get $0
      i32.const 20
      i32.sub
      i32.load $0 offset=16
      i32.const 1
      i32.shr_u
      i32.ge_u
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 4
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const -1
       local.set $2
       br $__inlined_func$~lib/string/String#charCodeAt
      end
      local.get $0
      local.get $3
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u $0
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 4
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     local.get $2
     i32.const 57
     i32.le_s
     local.get $2
     i32.const 48
     i32.ge_s
     i32.and
     if (result i32)
      local.get $2
      i32.const 48
      i32.sub
     else
      local.get $2
      i32.const 70
      i32.le_s
      local.get $2
      i32.const 65
      i32.ge_s
      i32.and
      if (result i32)
       local.get $2
       i32.const 55
       i32.sub
      else
       local.get $2
       i32.const 102
       i32.le_s
       local.get $2
       i32.const 97
       i32.ge_s
       i32.and
       if (result i32)
        local.get $2
        i32.const 87
        i32.sub
       else
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        i32.const 6192
        i32.store $0 offset=20
        local.get $2
        local.get $0
        i32.store $0 offset=28
        local.get $0
        local.get $3
        call $~lib/string/String#charAt
        local.set $0
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0 offset=24
        i32.const 6192
        local.get $0
        call $~lib/string/String.__concat
        local.set $0
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0 offset=8
        global.get $~lib/memory/__stack_pointer
        i32.const 6240
        i32.store $0 offset=16
        local.get $0
        i32.const 6240
        call $~lib/string/String.__concat
        local.set $0
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0
        local.get $1
        call $~lib/number/I32#toString
        local.set $1
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store $0 offset=4
        local.get $0
        local.get $1
        call $~lib/string/String.__concat
        i32.const 6080
        i32.const 95
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
      end
     end
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     local.get $4
     i32.store $0 offset=8
     local.get $4
     local.get $1
     i32.const 65535
     i32.and
     call $assembly/lib/types/bigint/BigInt#inplaceMulInt
     local.set $4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0
     local.get $2
     call $assembly/lib/types/bigint/BigInt.fromUInt16
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=4
     local.get $6
     local.get $4
     local.get $2
     call $assembly/lib/types/bigint/BigInt#add<assembly/lib/types/bigint/BigInt>
     local.tee $4
     i32.store $0 offset=12
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $4
   i32.store $0
   local.get $4
   local.get $5
   i32.store8 $0 offset=8
   local.get $0
   local.get $4
   i32.store $0
   local.get $4
   call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.abiEncode~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0
   block $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#typeName@override
    block $default
     block $case2
      block $case1
       block $case0
        local.get $0
        i32.const 8
        i32.sub
        i32.load $0
        i32.const 44
        i32.sub
        br_table $case1 $case0 $case2 $default
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 8428
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       i64.const 0
       i64.store $0
       local.get $1
       i32.const 0
       i32.store $0 offset=8
       local.get $1
       local.get $0
       i32.store $0 offset=8
       local.get $1
       i32.const 7952
       i32.const 7984
       local.get $0
       i32.load8_u $0 offset=13
       select
       local.tee $2
       i32.store $0
       local.get $1
       local.get $0
       i32.store $0 offset=8
       local.get $0
       i32.load8_u $0 offset=12
       i32.const 3
       i32.shl
       i32.const 10
       call $~lib/util/number/utoa32
       local.set $0
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0 offset=4
       local.get $2
       local.get $0
       call $~lib/string/String.__concat
       local.set $0
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#typeName@override
      end
      i32.const 8016
      local.set $0
      br $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#typeName@override
     end
     i32.const 8064
     i32.const 5456
     i32.const 134
     i32.const 13
     call $~lib/builtins/abort
     unreachable
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $4
  i64.const 0
  i64.store $0
  local.get $4
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1664
   return
  end
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.load $0
   local.tee $0
   i32.store $0
   local.get $1
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1664
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $5
    i32.store $0 offset=4
    local.get $5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=8
     local.get $2
     local.get $5
     i32.const 20
     i32.sub
     i32.load $0 offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $2
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 6384
  i32.store $0 offset=8
  local.get $1
  local.get $2
  i32.const 6380
  i32.load $0
  i32.const 1
  i32.shr_u
  local.tee $1
  local.get $4
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store $0 offset=12
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.tee $6
    i32.store $0 offset=4
    local.get $6
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=8
     local.get $5
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     local.get $6
     i32.const 20
     i32.sub
     i32.load $0 offset=16
     i32.const 1
     i32.shr_u
     local.tee $6
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $3
     local.get $6
     i32.add
     local.set $3
    end
    local.get $1
    if
     local.get $5
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     i32.const 6384
     local.get $1
     i32.const 1
     i32.shl
     memory.copy $0 $0
     local.get $1
     local.get $3
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $0
  i32.store $0 offset=4
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   local.get $5
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const -2
   i32.and
   memory.copy $0 $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/lib/utils/utils.stringToUint8Array (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   block $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $6
    i64.const 0
    i64.store $0
    local.get $6
    i32.const 0
    i32.store $0 offset=8
    local.get $6
    local.get $0
    i32.store $0
    i32.const 1
    global.set $~argumentsLength
    local.get $6
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store $0
    block $2of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $2of2 $2of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.get $0
    i32.store $0
    local.get $1
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    i64.const 0
    i64.store $0
    local.get $5
    local.get $0
    i32.store $0
    local.get $0
    local.tee $1
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    local.get $0
    i32.add
    local.set $3
    loop $while-continue|0
     local.get $1
     local.get $3
     i32.lt_u
     if
      local.get $1
      i32.load16_u $0
      local.tee $4
      i32.const 128
      i32.lt_u
      if (result i32)
       local.get $2
       i32.const 1
       i32.add
      else
       local.get $4
       i32.const 2048
       i32.lt_u
       if (result i32)
        local.get $2
        i32.const 2
        i32.add
       else
        local.get $4
        i32.const 64512
        i32.and
        i32.const 55296
        i32.eq
        local.get $1
        i32.const 2
        i32.add
        local.get $3
        i32.lt_u
        i32.and
        if
         local.get $1
         i32.load16_u $0 offset=2
         i32.const 64512
         i32.and
         i32.const 56320
         i32.eq
         if
          local.get $2
          i32.const 4
          i32.add
          local.set $2
          local.get $1
          i32.const 4
          i32.add
          local.set $1
          br $while-continue|0
         end
        end
        local.get $2
        i32.const 3
        i32.add
       end
      end
      local.set $2
      local.get $1
      i32.const 2
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $5
    local.get $2
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $1
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const 1
    i32.shr_u
    local.get $1
    call $~lib/string/String.UTF8.encodeUnsafe
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $6
    local.get $1
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.eqz
    if
     i32.const 0
     i32.const 0
     call $~lib/typedarray/Uint8Array#constructor
     local.set $0
     br $folding-inner1
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $1
    i32.store $0
    local.get $2
    local.get $0
    i32.store $0 offset=8
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const 1
    i32.shr_u
    local.set $3
    local.get $2
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $0
    i64.const 0
    i64.store $0
    local.get $0
    i32.const 0
    i32.store $0 offset=8
    local.get $0
    local.get $1
    i32.store $0
    local.get $0
    local.get $1
    i32.store $0 offset=4
    local.get $1
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    local.get $3
    i32.lt_s
    if
     i32.const 1552
     i32.const 1984
     i32.const 1874
     i32.const 7
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.const 9
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store $0 offset=8
    local.get $0
    local.get $1
    i32.store $0
    local.get $1
    if
     local.get $0
     local.get $1
     i32.const 0
     call $byn-split-outlined-A$~lib/rt/itcms/__link
    end
    local.get $0
    local.get $3
    i32.store $0 offset=8
    local.get $0
    local.get $1
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    br $folding-inner1
   end
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/host/hostapi/crypto.keccak (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $assembly/lib/types/basic_types/AUint8Array#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   call $assembly/lib/types/basic_types/AUint8Array#store
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i32.const 0
   i32.store $0 offset=8
   local.get $1
   i32.const 8
   i32.const 53
   call $~lib/rt/itcms/__new
   local.tee $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 0
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.store $0 offset=4
   i32.const 3
   i32.const 4
   call $assembly/lib/types/basic_types/header#constructor
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $1
   local.get $2
   i32.store $0
   local.get $2
   if
    local.get $1
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.load $0
   local.tee $3
   i32.store $0
   local.get $3
   i32.load $0 offset=4
   local.set $3
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   local.get $1
   i32.load $0
   i32.store $0
   global.get $~lib/rt/tlsf/ROOT
   i32.eqz
   if
    call $~lib/rt/tlsf/initialize
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $3
   i32.const 6
   i32.add
   call $~lib/rt/tlsf/allocateBlock
   i32.const 4
   i32.add
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $1
   i32.store $0 offset=4
   local.get $3
   local.get $1
   i32.load $0
   local.tee $3
   i32.store $0
   local.get $3
   local.get $2
   call $assembly/lib/types/basic_types/header#store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.load $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.load $0 offset=4
   i32.store $0 offset=6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $0
   call $assembly/lib/host/hostapi/__HostApi__.hash
   local.set $0
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
   local.tee $1
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   local.get $0
   call $assembly/lib/types/basic_types/AUint8Array#load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   i32.load $0 offset=4
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/utils/utils.uint8ArrayToHex (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i64.const 0
  i64.store $0
  local.get $1
  i64.const 0
  i64.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=4
  local.get $0
  call $assembly/lib/types/basic_types/AUint8Array#constructor
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  call $assembly/lib/types/basic_types/AUint8Array#store
  call $assembly/lib/utils/__Util__.toHexString
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 1664
  i32.store $0 offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 1664
  call $assembly/lib/types/basic_types/AString#constructor
  local.tee $1
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  local.get $0
  call $assembly/lib/types/basic_types/AString#load
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $1
  call $assembly/lib/types/basic_types/AString#get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $1
  i32.const 0
  i32.store $0
  local.get $1
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=12
  local.set $0
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $1
  local.get $0
  i32.load $0 offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 2112
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  local.get $0
  i32.store $0
  local.get $2
  local.get $0
  i32.load $0 offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load $0
  local.tee $0
  i32.store $0 offset=4
  local.get $0
  i32.eqz
  if
   i32.const 6448
   i32.const 2112
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/abi/ethereum/coders/ethereum.abiEncode (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 52
   memory.fill $0
   i32.const 5360
   local.set $3
   local.get $1
   i32.const 5360
   i32.store $0
   local.get $1
   i32.const 1664
   i32.store $0 offset=4
   i32.const 1660
   i32.load $0
   i32.const 1
   i32.shr_u
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    local.set $4
    local.get $1
    i32.const 1664
    i32.store $0 offset=20
    local.get $1
    i32.const 6320
    i32.store $0 offset=24
    i32.const 1664
    i32.const 6320
    call $~lib/string/String.__concat
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=12
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=28
    global.get $~lib/memory/__stack_pointer
    i32.const 6352
    i32.store $0 offset=32
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store $0
    local.get $1
    i64.const 0
    i64.store $0 offset=8
    local.get $1
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0 offset=12
    local.tee $8
    i32.const 23
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $9
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0
    local.get $9
    i32.load $0 offset=4
    local.set $10
    loop $for-loop|0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     local.get $5
     local.get $8
     local.get $0
     i32.load $0 offset=12
     local.tee $1
     local.get $1
     local.get $8
     i32.gt_s
     select
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $11
      local.get $0
      i32.store $0 offset=8
      local.get $11
      local.get $5
      i32.const 2
      i32.shl
      local.tee $1
      local.get $0
      i32.load $0 offset=4
      i32.add
      i32.load $0
      local.tee $3
      i32.store $0
      local.get $11
      local.get $0
      i32.store $0 offset=8
      i32.const 3
      global.set $~argumentsLength
      local.get $11
      local.get $3
      local.get $5
      local.get $0
      i32.const 6352
      i32.load $0
      call_indirect $0 (type $i32_i32_i32_=>_i32)
      local.tee $3
      i32.store $0 offset=12
      local.get $1
      local.get $10
      i32.add
      local.get $3
      i32.store $0
      local.get $3
      if
       local.get $9
       local.get $3
       i32.const 1
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $for-loop|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 16
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $9
    i32.store $0 offset=20
    global.get $~lib/memory/__stack_pointer
    i32.const 6384
    i32.store $0 offset=24
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i64.const 0
    i64.store $0
    local.get $1
    local.get $9
    i32.store $0
    local.get $9
    i32.load $0 offset=4
    local.set $3
    local.get $1
    local.get $9
    i32.store $0
    local.get $9
    i32.load $0 offset=12
    local.set $5
    local.get $1
    i32.const 6384
    i32.store $0 offset=4
    local.get $3
    local.get $5
    call $~lib/util/string/joinStringArray
    local.set $1
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=16
    local.get $7
    local.get $1
    call $~lib/string/String.__concat
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 6416
    i32.store $0 offset=8
    local.get $4
    local.get $1
    i32.const 6416
    call $~lib/string/String.__concat
    local.tee $1
    i32.store $0 offset=36
    global.get $~lib/memory/__stack_pointer
    i32.const 5360
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    local.set $3
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=24
    local.get $1
    call $assembly/lib/utils/utils.stringToUint8Array
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=20
    local.get $1
    call $assembly/lib/host/hostapi/crypto.keccak
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=16
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i64.const 0
    i64.store $0
    local.get $4
    i32.const 0
    i32.store $0 offset=8
    local.get $4
    local.get $1
    i32.store $0
    local.get $4
    local.get $1
    i32.store $0 offset=4
    local.get $1
    call $~lib/typedarray/Uint8Array#get:length
    local.tee $4
    i32.const 0
    local.get $4
    i32.const 0
    i32.le_s
    select
    local.set $5
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 4
    local.get $4
    local.get $4
    i32.const 4
    i32.gt_s
    select
    local.get $5
    i32.sub
    local.tee $4
    i32.const 0
    local.get $4
    i32.const 0
    i32.gt_s
    select
    local.tee $4
    call $~lib/typedarray/Uint8Array#constructor
    local.tee $7
    i32.store $0 offset=8
    global.get $~lib/memory/__stack_pointer
    local.tee $8
    local.get $7
    i32.store $0 offset=4
    local.get $7
    i32.load $0 offset=4
    local.set $9
    local.get $8
    local.get $1
    i32.store $0 offset=4
    local.get $9
    local.get $5
    local.get $1
    i32.load $0 offset=4
    i32.add
    local.get $4
    memory.copy $0 $0
    local.get $8
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store $0 offset=12
    local.get $7
    call $assembly/lib/utils/utils.uint8ArrayToHex
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=8
    local.get $3
    i32.const 5360
    local.get $1
    call $~lib/string/String.__concat
    local.tee $3
    i32.store $0
   end
   loop $for-loop|01
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=4
    local.get $0
    call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length
    local.get $2
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $2
     call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=4
     block $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#typeSize@override
      block $default
       local.get $1
       i32.const 8
       i32.sub
       i32.load $0
       i32.const 44
       i32.sub
       br_table $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#typeSize@override $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#typeSize@override $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#typeSize@override $default
      end
      unreachable
     end
     local.get $6
     i64.const 32
     i64.add
     local.set $6
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|01
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 1664
   i32.store $0 offset=40
   i32.const 0
   local.set $5
   loop $for-loop|1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=4
    local.get $0
    call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length
    local.get $5
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $0
     local.get $5
     call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get
     local.tee $7
     i32.store $0 offset=44
     global.get $~lib/memory/__stack_pointer
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=4
     block $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#encodeHex@override
      block $default0
       block $case01
        local.get $7
        i32.const 8
        i32.sub
        i32.load $0
        i32.const 44
        i32.sub
        br_table $case01 $case01 $case01 $default0
       end
       i32.const 0
       local.set $4
       global.get $~lib/memory/__stack_pointer
       i32.const 16
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 8428
       i32.lt_s
       br_if $folding-inner1
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       i64.const 0
       i64.store $0
       local.get $1
       i64.const 0
       i64.store $0 offset=8
       i32.const 1664
       local.set $2
       local.get $1
       i32.const 1664
       i32.store $0
       loop $for-loop|00
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store $0 offset=4
        local.get $7
        call $~lib/typedarray/Uint8Array#get:length
        local.get $4
        i32.gt_s
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $1
         local.get $7
         i32.store $0 offset=4
         local.get $1
         local.get $7
         local.get $4
         call $~lib/typedarray/Uint8Array#__get
         i32.const 255
         i32.and
         i32.const 16
         call $~lib/util/number/utoa32
         local.tee $1
         i32.store $0 offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store $0 offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.const 20
         i32.sub
         i32.load $0 offset=16
         i32.const 1
         i32.shr_u
         i32.const 1
         i32.and
         if
          global.get $~lib/memory/__stack_pointer
          local.tee $9
          i32.const 3472
          i32.store $0 offset=4
          local.get $9
          local.get $1
          i32.store $0 offset=12
          i32.const 3472
          local.get $1
          call $~lib/string/String.__concat
          local.set $1
         end
         local.get $1
         i32.store $0 offset=8
         global.get $~lib/memory/__stack_pointer
         local.tee $9
         local.get $2
         i32.store $0 offset=4
         local.get $9
         local.get $1
         i32.store $0 offset=12
         local.get $9
         local.get $2
         local.get $1
         call $~lib/string/String.__concat
         local.tee $2
         i32.store $0
         local.get $4
         i32.const 1
         i32.add
         local.set $4
         br $for-loop|00
        end
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 16
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#encodeHex@override
      end
      unreachable
     end
     local.get $8
     local.get $2
     i32.store $0 offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $7
     i32.store $0 offset=4
     block $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#isDynamicType@override
      block $default1
       local.get $7
       i32.const 8
       i32.sub
       i32.load $0
       i32.const 44
       i32.sub
       br_table $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#isDynamicType@override $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#isDynamicType@override $__inlined_func$assembly/lib/abi/ethereum/coders/ethereum.Coder#isDynamicType@override $default1
      end
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $3
     i32.store $0 offset=4
     local.get $1
     local.get $2
     i32.store $0 offset=8
     local.get $1
     local.get $3
     local.get $2
     call $~lib/string/String.__concat
     local.tee $3
     i32.store $0
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $3
   i32.store $0 offset=4
   local.get $0
   i32.const 1664
   i32.store $0 offset=8
   local.get $3
   i32.const 1664
   call $~lib/string/String.__concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/host/abi/Abi.encodeAddress (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $2
   i32.const 1664
   i32.store $0
   local.get $2
   i32.const 1
   i32.const 51
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load $0 offset=4
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $3
   i32.store $0
   local.get $3
   i32.load $0 offset=12
   i32.eqz
   if
    local.get $3
    i32.const 1
    i32.const 1
    call $~lib/array/ensureCapacity
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store $0
    local.get $3
    i32.const 1
    i32.store $0 offset=12
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0
   local.get $3
   i32.load $0 offset=4
   local.get $0
   i32.store $0
   local.get $0
   if
    local.get $3
    local.get $0
    i32.const 1
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   local.get $2
   local.get $3
   call $assembly/lib/abi/ethereum/coders/ethereum.abiEncode
   local.tee $0
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i64.const 0
   i64.store $0
   local.get $1
   i64.const 0
   i64.store $0 offset=8
   local.get $1
   local.get $0
   i32.store $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   i32.const 1
   i32.and
   if
    i32.const 6768
    i32.const 6832
    i32.const 45
    i32.const 13
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $assembly/lib/types/basic_types/AString#constructor
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   call $assembly/lib/types/basic_types/AString#store
   call $assembly/lib/utils/__Util__.fromHexString
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   call $assembly/lib/types/basic_types/AUint8Array#constructor@varargs
   local.tee $2
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $2
   local.get $1
   call $assembly/lib/types/basic_types/AUint8Array#load
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   call $assembly/lib/types/basic_types/AString#get
   local.tee $1
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   call $~lib/typedarray/Uint8Array#get:length
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.const 20
    i32.sub
    i32.load $0 offset=16
    i32.const 1
    i32.shr_u
   end
   if
    i32.const 6768
    i32.const 6832
    i32.const 53
    i32.const 13
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/utils/utils.concatUint8Arrays (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $3
  i64.const 0
  i64.store $0
  local.get $3
  i32.const 0
  i32.store $0 offset=8
  local.get $3
  local.get $0
  i32.store $0
  local.get $0
  call $~lib/typedarray/Uint8Array#get:length
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store $0
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#get:length
  local.get $4
  i32.add
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $3
  i32.store $0 offset=4
  loop $for-loop|0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   call $~lib/typedarray/Uint8Array#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $3
    i32.store $0
    local.get $4
    local.get $0
    i32.store $0 offset=8
    local.get $3
    local.get $2
    local.get $0
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $2
  loop $for-loop|1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   call $~lib/typedarray/Uint8Array#get:length
   local.get $2
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    local.get $3
    i32.store $0
    local.get $4
    local.get $0
    i32.store $0 offset=8
    local.get $0
    call $~lib/typedarray/Uint8Array#get:length
    local.get $2
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=8
    local.get $3
    local.get $4
    local.get $1
    local.get $2
    call $~lib/typedarray/Uint8Array#__get
    call $~lib/typedarray/Uint8Array#__set
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#before (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 48
   memory.fill $0
   local.get $2
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   call $assembly/lib/host/abi/Abi.encodeAddress
   local.tee $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=4
   local.tee $4
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 6896
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=8
   local.tee $0
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=24
   local.get $0
   local.get $2
   call $assembly/lib/utils/utils.concatUint8Arrays
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=16
   local.get $1
   local.get $3
   local.get $4
   local.get $0
   call $assembly/lib/context/TraceCtx#getStateChanges@override
   local.tee $0
   i32.store $0 offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0
   local.tee $1
   i32.store $0
   local.get $1
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 48
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=12
   local.get $1
   local.get $0
   i32.load $0
   local.tee $2
   i32.store $0 offset=8
   local.get $2
   i32.const 0
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0
   local.get $1
   local.get $2
   i32.load $0
   local.tee $1
   i32.store $0 offset=36
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0
   local.tee $0
   i32.store $0 offset=12
   local.get $0
   i32.const 0
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=4
   local.tee $0
   i32.store $0
   local.get $2
   local.get $0
   call $assembly/lib/utils/utils.uint8ArrayToHex
   local.tee $0
   i32.store $0 offset=40
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 16
   call $assembly/lib/types/bigint/BigInt.fromString
   local.tee $0
   i32.store $0 offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i32.const 0
   i32.store $0 offset=8
   local.get $2
   i32.const 8
   i32.const 50
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=4
   local.get $2
   i32.const 0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   local.get $2
   i32.store $0 offset=4
   local.get $3
   local.get $1
   i32.store $0 offset=8
   local.get $2
   local.get $1
   i32.store $0
   local.get $1
   if
    local.get $2
    local.get $1
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $2
   i32.store $0 offset=4
   local.get $1
   local.get $0
   i32.store $0 offset=8
   local.get $2
   local.get $0
   i32.store $0 offset=4
   local.get $0
   if
    local.get $2
    local.get $0
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/types/bigint/BigInt.fromDigits@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
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
      local.set $1
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     local.get $0
     call $~lib/typedarray/Uint32Array#get:length
     local.set $2
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    call $~lib/typedarray/Uint32Array#get:length
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   local.get $0
   i32.store $0
   local.get $4
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i64.const 0
   i64.store $0
   local.get $4
   i32.const 0
   i32.store $0 offset=8
   local.get $4
   local.get $0
   i32.store $0
   local.get $0
   call $~lib/typedarray/Uint32Array#get:length
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    call $~lib/typedarray/Uint32Array#get:length
    local.set $3
   end
   local.get $3
   i32.const 5
   i32.rem_s
   local.tee $4
   if
    local.get $3
    i32.const 5
    local.get $4
    i32.sub
    i32.add
    local.set $3
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.get $1
   call $assembly/lib/types/bigint/BigInt#constructor
   local.tee $4
   i32.store $0 offset=4
   i32.const 0
   local.set $3
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    call $~lib/typedarray/Uint32Array#get:length
    local.get $3
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $4
     i32.store $0 offset=8
     local.get $1
     local.get $4
     i32.load $0
     local.tee $5
     i32.store $0
     local.get $1
     local.get $0
     i32.store $0 offset=8
     local.get $5
     local.get $3
     local.get $0
     local.get $3
     call $~lib/typedarray/Uint32Array#__get
     call $~lib/typedarray/Uint32Array#__set
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $4
   i32.store $0
   local.get $4
   local.get $2
   i32.store $0 offset=4
   local.get $0
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/types/bigint/BigInt#compareTo (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i64.const 0
  i64.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  i32.load8_u $0 offset=8
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   i32.load8_u $0 offset=8
  else
   i32.const 1
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   i32.load8_u $0 offset=8
   if (result i32)
    i32.const 0
   else
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    i32.load8_u $0 offset=8
   end
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1
    local.set $0
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.load8_u $0 offset=8
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store $0
     local.get $2
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $0
     call $assembly/lib/types/bigint/BigInt#magCompareTo
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0
     local.get $2
     local.get $1
     i32.store $0 offset=4
     local.get $0
     local.get $1
     call $assembly/lib/types/bigint/BigInt#magCompareTo
    end
    local.set $0
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
  else
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $assembly/lib/types/bigint/BigInt#divPowTwo (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner2
   block $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i64.const 0
    i64.store $0
    local.get $2
    i64.const 0
    i64.store $0 offset=8
    local.get $2
    local.get $0
    i32.store $0
    local.get $2
    i32.const 8
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $4
    i64.const 0
    i64.store $0
    local.get $4
    local.get $0
    i32.store $0 offset=4
    local.get $4
    local.get $0
    i32.load $0
    local.tee $5
    i32.store $0
    local.get $4
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load8_u $0 offset=8
    local.set $6
    local.get $4
    local.get $0
    i32.store $0 offset=4
    local.get $0
    i32.load $0 offset=4
    local.set $0
    i32.const 3
    global.set $~argumentsLength
    local.get $5
    local.get $6
    local.get $0
    call $assembly/lib/types/bigint/BigInt.fromDigits@varargs
    local.set $5
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    local.get $5
    i32.store $0 offset=4
    local.get $1
    i32.const 0
    i32.le_s
    br_if $folding-inner2
    local.get $1
    i32.const 28
    i32.ge_s
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $5
     i32.store $0
     local.get $0
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i64.const 0
     i64.store $0
     local.get $0
     i32.const 0
     i32.store $0 offset=8
     block $__inlined_func$assembly/lib/types/bigint/BigInt#divBasisPow
      local.get $1
      i32.const 28
      i32.div_s
      local.tee $0
      i32.const 0
      i32.le_s
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$assembly/lib/types/bigint/BigInt#divBasisPow
      end
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store $0
      local.get $0
      local.get $5
      i32.load $0 offset=4
      i32.ge_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $0
       local.get $5
       i32.store $0
       local.get $5
       i32.const 0
       i32.store $0 offset=4
       local.get $0
       local.get $5
       i32.store $0
       local.get $5
       call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$assembly/lib/types/bigint/BigInt#divBasisPow
      end
      local.get $0
      local.set $2
      loop $for-loop|0
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0
       local.get $3
       local.get $5
       i32.load $0 offset=4
       local.get $0
       i32.sub
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $4
        local.get $5
        i32.store $0 offset=4
        local.get $4
        local.get $5
        i32.load $0
        local.tee $6
        i32.store $0
        local.get $4
        local.get $5
        i32.store $0 offset=8
        local.get $4
        local.get $5
        i32.load $0
        local.tee $4
        i32.store $0 offset=4
        local.get $6
        local.get $3
        local.get $4
        local.get $2
        call $~lib/typedarray/Uint32Array#__get
        call $~lib/typedarray/Uint32Array#__set
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        br $for-loop|0
       end
      end
      loop $for-loop|1
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0
       local.get $3
       local.get $5
       i32.load $0 offset=4
       i32.lt_s
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $2
        local.get $5
        i32.store $0 offset=4
        local.get $2
        local.get $5
        i32.load $0
        local.tee $2
        i32.store $0
        local.get $2
        local.get $3
        i32.const 0
        call $~lib/typedarray/Uint32Array#__set
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        br $for-loop|1
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $5
      i32.store $0
      local.get $2
      local.get $5
      i32.store $0 offset=4
      local.get $5
      local.get $5
      i32.load $0 offset=4
      local.get $0
      i32.sub
      i32.store $0 offset=4
      local.get $2
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
    end
    local.get $1
    i32.const 28
    i32.rem_s
    local.tee $6
    if
     i32.const 1
     local.get $6
     i32.shl
     i32.const 1
     i32.sub
     local.set $7
     i32.const 28
     local.get $6
     i32.sub
     local.set $8
     i32.const 0
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0
     local.get $5
     i32.load $0 offset=4
     i32.const 1
     i32.sub
     local.set $2
     loop $for-loop|00
      local.get $2
      i32.const 0
      i32.ge_s
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $0
       local.get $5
       i32.store $0 offset=8
       local.get $0
       local.get $5
       i32.load $0
       local.tee $0
       i32.store $0
       local.get $0
       local.get $2
       call $~lib/typedarray/Uint32Array#__get
       local.get $7
       i32.and
       local.set $0
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0 offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.load $0
       local.tee $3
       i32.store $0
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store $0 offset=12
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.load $0
       local.tee $4
       i32.store $0 offset=8
       local.get $3
       local.get $2
       local.get $1
       local.get $8
       i32.shl
       local.get $4
       local.get $2
       call $~lib/typedarray/Uint32Array#__get
       local.get $6
       i32.shr_u
       i32.or
       call $~lib/typedarray/Uint32Array#__set
       local.get $0
       local.set $1
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       br $for-loop|00
      end
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store $0
    local.get $5
    call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
    br $folding-inner2
   end
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/array/Array<i32>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $2
  i32.const 0
  i32.store $0
  local.get $2
  local.get $0
  i32.store $0
  local.get $0
  local.get $0
  i32.load $0 offset=12
  local.tee $2
  i32.const 1
  i32.add
  local.tee $3
  i32.const 1
  call $~lib/array/ensureCapacity
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  i32.load $0 offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store $0
  local.get $0
  local.get $3
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/lib/types/bigint/BigInt#toString (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 28
   memory.fill $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load $0 offset=4
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 28
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 3472
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0
   local.get $2
   i32.const 6160
   i32.const 1664
   local.get $0
   i32.load8_u $0 offset=8
   select
   local.tee $4
   i32.store $0 offset=4
   local.get $2
   local.get $0
   i32.store $0
   local.get $2
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   local.get $0
   i32.store $0 offset=4
   local.get $3
   local.get $0
   i32.load $0
   local.tee $5
   i32.store $0
   local.get $3
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0 offset=4
   local.set $0
   i32.const 3
   global.set $~argumentsLength
   local.get $5
   i32.const 0
   local.get $0
   call $assembly/lib/types/bigint/BigInt.fromDigits@varargs
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   call $assembly/lib/types/bigint/BigInt.fromUInt16
   local.tee $5
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 8
   i32.const 7088
   call $~lib/rt/__newArray
   local.tee $6
   i32.store $0 offset=16
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $5
    i32.store $0 offset=20
    local.get $2
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i64.const 0
    i64.store $0
    local.get $2
    i32.const 0
    i32.store $0 offset=8
    local.get $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $5
    i32.store $0 offset=8
    local.get $2
    local.get $5
    i32.store $0 offset=4
    local.get $2
    i32.const 12
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i64.const 0
    i64.store $0
    local.get $2
    i32.const 0
    i32.store $0 offset=8
    local.get $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $5
    i32.store $0 offset=8
    local.get $2
    local.get $5
    i32.store $0 offset=4
    local.get $0
    local.get $5
    call $assembly/lib/types/bigint/BigInt#compareTo
    i32.eqz
    local.set $2
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 12
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $2
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0
     block $__inlined_func$assembly/lib/types/bigint/BigInt#modInt (result i32)
      i64.const 0
      local.set $1
      local.get $2
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      i64.const 0
      i64.store $0
      local.get $2
      local.get $0
      i32.store $0
      local.get $0
      i32.load $0 offset=4
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       i32.const 0
       br $__inlined_func$assembly/lib/types/bigint/BigInt#modInt
      end
      i32.const 1
      local.set $3
      block $__inlined_func$assembly/lib/types/bigint/BigInt.isPow2
       loop $for-loop|0
        local.get $3
        i32.const 28
        i32.lt_s
        if
         i32.const 1
         local.get $3
         i32.shl
         i32.const 10
         i32.eq
         br_if $__inlined_func$assembly/lib/types/bigint/BigInt.isPow2
         local.get $3
         i32.const 1
         i32.add
         local.set $3
         br $for-loop|0
        end
       end
       i32.const 0
       local.set $3
      end
      local.get $3
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $0
       i32.store $0 offset=4
       local.get $2
       local.get $0
       i32.load $0
       local.tee $2
       i32.store $0
       local.get $2
       i32.const 0
       call $~lib/typedarray/Uint32Array#__get
       i32.const 1
       local.get $3
       i32.shl
       i32.const 1
       i32.sub
       i32.and
       local.set $2
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $2
       br $__inlined_func$assembly/lib/types/bigint/BigInt#modInt
      end
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0
      local.get $0
      i32.load $0 offset=4
      i32.const 1
      i32.sub
      local.set $2
      loop $for-loop|00
       local.get $2
       i32.const 0
       i32.ge_s
       if
        global.get $~lib/memory/__stack_pointer
        local.tee $3
        local.get $0
        i32.store $0 offset=4
        local.get $3
        local.get $0
        i32.load $0
        local.tee $3
        i32.store $0
        local.get $3
        local.get $2
        call $~lib/typedarray/Uint32Array#__get
        i64.extend_i32_u
        local.get $1
        i64.const 28
        i64.shl
        i64.or
        local.tee $1
        i64.const 10
        i64.ge_u
        if
         local.get $1
         local.get $1
         i64.const 10
         i64.div_u
         i32.wrap_i64
         i64.extend_i32_u
         i64.const 10
         i64.mul
         i64.sub
         local.set $1
        end
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
        br $for-loop|00
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $1
      i32.wrap_i64
     end
     local.set $7
     global.get $~lib/memory/__stack_pointer
     local.tee $3
     local.get $0
     i32.store $0
     local.get $3
     block $__inlined_func$assembly/lib/types/bigint/BigInt#inplaceDivInt (result i32)
      local.get $0
      local.set $2
      i64.const 0
      local.set $1
      local.get $3
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner1
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i64.const 0
      i64.store $0
      local.get $0
      local.get $2
      i32.store $0
      block $folding-inner00
       local.get $2
       i32.load $0 offset=4
       i32.eqz
       br_if $folding-inner00
       i32.const 1
       local.set $0
       block $__inlined_func$assembly/lib/types/bigint/BigInt.isPow21
        loop $for-loop|02
         local.get $0
         i32.const 28
         i32.lt_s
         if
          i32.const 1
          local.get $0
          i32.shl
          i32.const 10
          i32.eq
          br_if $__inlined_func$assembly/lib/types/bigint/BigInt.isPow21
          local.get $0
          i32.const 1
          i32.add
          local.set $0
          br $for-loop|02
         end
        end
        i32.const 0
        local.set $0
       end
       local.get $0
       if
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store $0
        local.get $2
        local.get $0
        call $assembly/lib/types/bigint/BigInt#divPowTwo
        local.set $2
        br $folding-inner00
       end
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0
       local.get $2
       i32.load $0 offset=4
       i32.const 1
       i32.sub
       local.set $0
       loop $for-loop|003
        local.get $0
        i32.const 0
        i32.ge_s
        if
         global.get $~lib/memory/__stack_pointer
         local.tee $3
         local.get $2
         i32.store $0 offset=4
         local.get $3
         local.get $2
         i32.load $0
         local.tee $3
         i32.store $0
         local.get $3
         local.get $0
         call $~lib/typedarray/Uint32Array#__get
         i64.extend_i32_u
         local.get $1
         i64.const 28
         i64.shl
         i64.or
         local.tee $1
         i64.const 10
         i64.ge_u
         if
          local.get $1
          local.get $1
          i64.const 10
          i64.div_u
          i32.wrap_i64
          local.tee $3
          i64.extend_i32_u
          i64.const 10
          i64.mul
          i64.sub
          local.set $1
         else
          i32.const 0
          local.set $3
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $8
         local.get $2
         i32.store $0 offset=4
         local.get $8
         local.get $2
         i32.load $0
         local.tee $8
         i32.store $0
         local.get $8
         local.get $0
         local.get $3
         call $~lib/typedarray/Uint32Array#__set
         local.get $0
         i32.const 1
         i32.sub
         local.set $0
         br $for-loop|003
        end
       end
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0
       local.get $2
       call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $2
       br $__inlined_func$assembly/lib/types/bigint/BigInt#inplaceDivInt
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $2
     end
     local.tee $0
     i32.store $0 offset=8
     local.get $7
     i32.const 10
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $7
      i32.const 48
      i32.add
      call $~lib/array/Array<i32>#push
     else
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0
      local.get $6
      local.get $7
      i32.const 87
      i32.add
      call $~lib/array/Array<i32>#push
     end
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   local.get $6
   i32.store $0
   local.get $0
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i32.const 0
   i32.store $0
   local.get $0
   local.get $6
   i32.store $0
   local.get $6
   i32.load $0 offset=4
   local.set $2
   local.get $0
   local.get $6
   i32.store $0
   local.get $6
   i32.load $0 offset=12
   local.tee $3
   i32.const 1
   i32.gt_u
   if
    i32.const 0
    local.set $0
    local.get $3
    i32.const 1
    i32.shr_u
    local.set $5
    local.get $3
    i32.const 1
    i32.sub
    local.set $3
    loop $while-continue|03
     local.get $0
     local.get $5
     i32.lt_u
     if
      local.get $2
      local.get $0
      i32.const 2
      i32.shl
      i32.add
      local.tee $7
      i32.load $0
      local.set $8
      local.get $7
      local.get $2
      local.get $3
      local.get $0
      i32.sub
      i32.const 2
      i32.shl
      i32.add
      local.tee $7
      i32.load $0
      i32.store $0
      local.get $7
      local.get $8
      i32.store $0
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|03
     end
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0 offset=24
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.tee $0
   i64.const 0
   i64.store $0
   local.get $0
   local.get $6
   i32.store $0
   local.get $6
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store $0
   local.get $6
   i32.load $0 offset=4
   local.set $6
   i32.const 0
   local.set $0
   loop $for-loop|01
    local.get $0
    local.get $3
    i32.lt_s
    if
     local.get $5
     local.get $0
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     local.get $0
     i32.const 2
     i32.shl
     i32.add
     i32.load $0
     i32.store16 $0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|01
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store $0 offset=20
   local.get $2
   local.get $4
   local.get $5
   call $~lib/string/String.__concat
   local.tee $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/context/PostContractCallCtx#setContext (param $0 i32) (param $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   local.get $0
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i64.const 0
   i64.store $0 offset=8
   local.get $2
   i32.const 1664
   i32.store $0
   local.get $2
   i32.const 1664
   call $assembly/lib/types/basic_types/AString#constructor
   local.tee $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $2
   local.get $0
   call $assembly/lib/types/basic_types/AString#set
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $2
   call $assembly/lib/types/basic_types/AString#store
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1664
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1664
   call $assembly/lib/types/basic_types/AString#constructor
   local.tee $2
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   call $assembly/lib/types/basic_types/AString#set
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   local.get $0
   local.get $2
   call $assembly/lib/types/basic_types/AString#store
   call $assembly/lib/host/hostapi/__HostApi__.setContext
   drop
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/aspect/honeypot/HoneyPot.balances#diff (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 52
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i32.const 0
   i32.const 52
   memory.fill $0
   local.get $2
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   call $assembly/lib/host/abi/Abi.encodeAddress
   local.tee $2
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=4
   local.tee $1
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 6896
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=8
   local.tee $0
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=24
   local.get $0
   local.get $2
   call $assembly/lib/utils/utils.concatUint8Arrays
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=16
   local.get $4
   local.get $3
   local.get $1
   local.get $0
   call $assembly/lib/context/TraceCtx#getStateChanges@override
   local.tee $0
   i32.store $0 offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0
   local.tee $1
   i32.store $0
   local.get $1
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length
   i32.const 2
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 52
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 0
    return
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   local.get $0
   i32.store $0 offset=16
   local.get $1
   local.get $0
   i32.load $0
   local.tee $2
   i32.store $0 offset=12
   local.get $2
   i32.const 0
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.load $0 offset=4
   local.tee $2
   i32.store $0
   local.get $1
   local.get $2
   call $assembly/lib/utils/utils.uint8ArrayToHex
   local.tee $1
   i32.store $0 offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 16
   call $assembly/lib/types/bigint/BigInt.fromString
   local.tee $1
   i32.store $0 offset=40
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0
   local.tee $3
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0
   local.tee $0
   i32.store $0 offset=16
   local.get $3
   local.get $0
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length
   i32.const 1
   i32.sub
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#__get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load $0 offset=4
   local.tee $0
   i32.store $0
   local.get $2
   local.get $0
   call $assembly/lib/utils/utils.uint8ArrayToHex
   local.tee $0
   i32.store $0 offset=44
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 16
   call $assembly/lib/types/bigint/BigInt.fromString
   local.tee $0
   i32.store $0 offset=48
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   i64.const 0
   i64.store $0
   local.get $2
   i64.const 0
   i64.store $0 offset=8
   local.get $2
   local.get $1
   i32.store $0
   local.get $2
   local.get $1
   i32.store $0 offset=4
   local.get $2
   local.get $0
   i32.store $0
   local.get $0
   i32.load8_u $0 offset=8
   i32.const 0
   i32.ne
   local.set $3
   local.get $2
   local.get $1
   i32.store $0
   local.get $3
   local.get $1
   i32.load8_u $0 offset=8
   i32.const 0
   i32.ne
   i32.ne
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $1
    i32.store $0 offset=8
    local.get $2
    local.get $0
    i32.store $0 offset=12
    local.get $0
    local.get $1
    local.get $0
    i32.load8_u $0 offset=8
    call $assembly/lib/types/bigint/BigInt#_add
   else
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $0
    i32.store $0
    local.get $2
    local.get $1
    i32.store $0 offset=8
    local.get $0
    local.get $1
    call $assembly/lib/types/bigint/BigInt#magCompareTo
    i32.const 0
    i32.ge_s
    if (result i32)
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $0
     i32.store $0
     local.get $2
     local.get $1
     i32.store $0 offset=8
     local.get $2
     local.get $0
     i32.store $0 offset=12
     local.get $0
     local.get $1
     local.get $0
     i32.load8_u $0 offset=8
     call $assembly/lib/types/bigint/BigInt#_sub
    else
     global.get $~lib/memory/__stack_pointer
     local.tee $2
     local.get $1
     i32.store $0
     local.get $2
     local.get $0
     i32.store $0 offset=8
     local.get $2
     local.get $0
     i32.store $0 offset=12
     local.get $1
     local.get $0
     local.get $0
     i32.load8_u $0 offset=8
     i32.eqz
     call $assembly/lib/types/bigint/BigInt#_sub
    end
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 52
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/context/PostContractCallCtx#currentBalance (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.store $0
   local.get $1
   local.get $0
   i32.store $0
   local.get $1
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $1
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $1
   local.get $0
   i32.store $0 offset=4
   local.get $0
   call $assembly/lib/types/basic_types/AString#constructor
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   local.get $0
   call $assembly/lib/types/basic_types/AString#store
   call $assembly/lib/host/hostapi/__HostApi__.currentBalance
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1664
   i32.store $0 offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1664
   call $assembly/lib/types/basic_types/AString#constructor
   local.tee $1
   i32.store $0 offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0
   local.get $1
   local.get $0
   call $assembly/lib/types/basic_types/AString#load
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store $0 offset=4
   local.get $1
   call $assembly/lib/types/basic_types/AString#get
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   i32.const 1664
   i32.store $0 offset=8
   block $__inlined_func$assembly/lib/host/hostapi/Context.currentBalance
    local.get $0
    i32.const 1664
    call $~lib/string/String.__eq
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 0
     local.set $0
     br $__inlined_func$assembly/lib/host/hostapi/Context.currentBalance
    end
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=8
    local.get $1
    call $assembly/lib/types/basic_types/AString#get
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    call $assembly/lib/host/hostapi/Context.getProperty
    drop
    global.get $~lib/memory/__stack_pointer
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0 offset=8
    local.get $1
    call $assembly/lib/types/basic_types/AString#get
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $0
    local.get $1
    i32.const 16
    call $assembly/lib/types/bigint/BigInt.fromString
    local.tee $0
    i32.store $0 offset=16
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=8
    local.get $0
    call $assembly/lib/types/bigint/BigInt#toString
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $1
    i32.store $0
    local.get $1
    call $assembly/lib/host/hostapi/Context.getProperty
    drop
    global.get $~lib/memory/__stack_pointer
    i32.const 20
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/aspect/guard_by_trace_aspect/GuardByTraceAspect#postContractCall (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 172
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   block $folding-inner2
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner2
    global.get $~lib/memory/__stack_pointer
    local.tee $1
    i32.const 0
    i32.const 172
    memory.fill $0
    local.get $1
    i32.const 1664
    i32.store $0
    local.get $1
    call $assembly/lib/types/message/aspect/v1/AspectOutput/AspectOutput#constructor
    local.tee $3
    i32.store $0 offset=4
    global.get $~lib/memory/__stack_pointer
    i32.const 1664
    i32.store $0 offset=8
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0 offset=12
    local.get $0
    i32.load $0 offset=8
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $0
     i32.store $0 offset=16
     local.get $4
     local.get $0
     i32.store $0 offset=20
     local.get $4
     local.get $0
     i32.load $0 offset=8
     local.tee $1
     i32.store $0 offset=24
     local.get $1
     i32.eqz
     if
      i32.const 5056
      i32.const 5184
      i32.const 85
      i32.const 55
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $1
     i32.store $0
     local.get $5
     local.get $1
     i32.load $0 offset=40
     local.tee $6
     i32.store $0
     i32.const 2
     global.set $~argumentsLength
     local.get $5
     i32.const 20
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner2
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
      local.tee $2
      i32.store $0
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i32.const 0
     i32.store $0 offset=4
     local.get $1
     local.get $0
     i32.store $0 offset=8
     local.get $1
     local.get $6
     i32.store $0 offset=12
     local.get $1
     local.get $2
     i32.store $0 offset=16
     local.get $1
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store $0
     local.get $1
     i32.const 0
     i32.store $0 offset=8
     local.get $1
     i32.const 12
     i32.const 43
     call $~lib/rt/itcms/__new
     local.tee $5
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     local.get $5
     i32.const 0
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     local.get $5
     i32.const 0
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=4
     local.get $5
     i32.const 0
     i32.store $0 offset=8
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $5
     i32.store $0 offset=4
     local.get $1
     local.get $0
     i32.store $0 offset=8
     local.get $5
     local.get $0
     local.tee $1
     i32.store $0
     local.get $0
     if
      local.get $5
      local.get $1
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $5
     i32.store $0 offset=4
     local.get $0
     local.get $6
     i32.store $0 offset=8
     local.get $5
     local.get $6
     i32.store $0 offset=4
     local.get $6
     if
      local.get $5
      local.get $6
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $5
     i32.store $0 offset=4
     local.get $0
     local.get $2
     i32.store $0 offset=8
     local.get $5
     local.get $2
     i32.store $0 offset=8
     local.get $2
     if
      local.get $5
      local.get $2
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
     end
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 20
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $4
     local.get $5
     i32.store $0 offset=28
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i32.const 5296
     i32.store $0 offset=32
     local.get $0
     local.get $1
     i32.store $0 offset=12
     local.get $0
     i32.const 5296
     i32.store $0 offset=16
     local.get $0
     i32.const 5296
     call $assembly/lib/context/PostContractCallCtx#getContext
     local.tee $0
     i32.store $0 offset=36
     global.get $~lib/memory/__stack_pointer
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load $0 offset=8
     local.tee $4
     i32.store $0 offset=40
     local.get $4
     i32.eqz
     if
      i32.const 5056
      i32.const 5184
      i32.const 92
      i32.const 59
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     local.get $4
     i32.store $0 offset=16
     local.get $6
     local.get $4
     i32.load $0 offset=80
     local.tee $4
     i32.store $0 offset=12
     local.get $2
     local.get $4
     call $assembly/lib/abi/ethereum/coders/ethereum.Address.fromHexString
     local.tee $4
     i32.store $0 offset=44
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $assembly/lib/types/bigint/BigInt.fromUInt16
     local.tee $2
     i32.store $0 offset=48
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 1664
     i32.store $0 offset=16
     local.get $0
     call $~lib/string/String.__ne
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $0
      i32.store $0 offset=12
      local.get $2
      local.get $0
      i32.const 10
      call $assembly/lib/types/bigint/BigInt.fromString
      local.tee $2
      i32.store $0 offset=48
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $5
      i32.store $0 offset=12
      local.get $0
      local.get $4
      i32.store $0 offset=16
      local.get $0
      local.get $5
      local.get $4
      call $assembly/aspect/honeypot/HoneyPot.balances#before
      local.tee $0
      i32.store $0 offset=52
      local.get $0
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $2
       local.get $1
       i32.store $0 offset=12
       local.get $2
       i32.const 5296
       i32.store $0 offset=16
       local.get $2
       local.get $0
       i32.store $0 offset=56
       local.get $2
       local.get $0
       i32.load $0 offset=4
       local.tee $2
       i32.store $0 offset=20
       local.get $2
       call $assembly/lib/types/bigint/BigInt#toString
       local.set $2
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store $0
       i32.const 5296
       local.get $2
       call $assembly/lib/context/PostContractCallCtx#setContext
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0 offset=12
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.load $0 offset=4
       local.tee $2
       i32.store $0 offset=48
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $5
     i32.store $0 offset=12
     local.get $0
     local.get $4
     i32.store $0 offset=16
     local.get $0
     local.get $5
     local.get $4
     call $assembly/aspect/honeypot/HoneyPot.balances#diff
     local.tee $4
     i32.store $0 offset=60
     local.get $4
     i32.eqz
     br_if $folding-inner0
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     i32.const 7168
     i32.store $0 offset=64
     local.get $0
     local.get $1
     i32.store $0 offset=12
     local.get $0
     i32.const 7168
     i32.store $0 offset=16
     local.get $0
     i32.const 7168
     call $assembly/lib/context/PostContractCallCtx#getContext
     local.tee $5
     i32.store $0 offset=68
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     call $assembly/lib/types/bigint/BigInt.fromUInt16
     local.tee $0
     i32.store $0 offset=72
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 1664
     i32.store $0 offset=16
     local.get $5
     call $~lib/string/String.__ne
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $5
      i32.store $0 offset=12
      local.get $0
      local.get $5
      i32.const 10
      call $assembly/lib/types/bigint/BigInt.fromString
      local.tee $0
      i32.store $0 offset=72
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $5
     local.get $0
     i32.store $0 offset=12
     local.get $5
     local.get $4
     i32.store $0 offset=16
     local.get $5
     i32.const 16
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     i64.const 0
     i64.store $0
     local.get $6
     i64.const 0
     i64.store $0 offset=8
     local.get $6
     local.get $4
     i32.store $0
     local.get $6
     i32.const 8
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     i64.const 0
     i64.store $0
     block $__inlined_func$assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt|null>
      local.get $4
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       br $__inlined_func$assembly/lib/types/bigint/BigInt.from<assembly/lib/types/bigint/BigInt|null>
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      i32.const 7248
      i32.store $0
      local.get $0
      i32.const 7328
      i32.store $0 offset=4
      i32.const 7248
      i32.const 7328
      call $~lib/string/String.__concat
      i32.const 6080
      i32.const 62
      i32.const 9
      call $~lib/builtins/abort
      unreachable
     end
     local.get $6
     local.get $4
     i32.store $0 offset=4
     global.get $~lib/memory/__stack_pointer
     local.tee $6
     local.get $0
     i32.store $0
     local.get $0
     i32.load8_u $0 offset=8
     i32.const 0
     i32.ne
     local.set $7
     local.get $6
     local.get $4
     i32.store $0
     local.get $7
     local.get $4
     i32.load8_u $0 offset=8
     i32.const 0
     i32.ne
     i32.eq
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.tee $6
      local.get $0
      i32.store $0
      local.get $6
      local.get $4
      i32.store $0 offset=8
      local.get $6
      local.get $0
      i32.store $0 offset=12
      local.get $0
      local.get $4
      local.get $0
      i32.load8_u $0 offset=8
      call $assembly/lib/types/bigint/BigInt#_add
     else
      global.get $~lib/memory/__stack_pointer
      local.tee $6
      local.get $0
      i32.store $0
      local.get $6
      local.get $4
      i32.store $0 offset=8
      local.get $0
      local.get $4
      call $assembly/lib/types/bigint/BigInt#magCompareTo
      i32.const 0
      i32.lt_s
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.tee $6
       local.get $4
       i32.store $0
       local.get $6
       local.get $0
       i32.store $0 offset=8
       local.get $6
       local.get $4
       i32.store $0 offset=12
       local.get $4
       local.get $0
       local.get $4
       i32.load8_u $0 offset=8
       call $assembly/lib/types/bigint/BigInt#_sub
      else
       global.get $~lib/memory/__stack_pointer
       local.tee $6
       local.get $0
       i32.store $0
       local.get $6
       local.get $4
       i32.store $0 offset=8
       local.get $6
       local.get $0
       i32.store $0 offset=12
       local.get $0
       local.get $4
       local.get $0
       i32.load8_u $0 offset=8
       call $assembly/lib/types/bigint/BigInt#_sub
      end
     end
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 16
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     local.get $6
     i32.store $0 offset=72
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $1
     i32.store $0 offset=12
     local.get $0
     i32.const 7168
     i32.store $0 offset=16
     local.get $0
     local.get $6
     i32.store $0 offset=20
     local.get $6
     call $assembly/lib/types/bigint/BigInt#toString
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     i32.const 7168
     local.get $0
     call $assembly/lib/context/PostContractCallCtx#setContext
     global.get $~lib/memory/__stack_pointer
     local.get $2
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $2
     local.get $6
     call $assembly/lib/types/bigint/BigInt#add<assembly/lib/types/bigint/BigInt>
     local.tee $5
     i32.store $0 offset=76
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     i32.const 7360
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     i32.const 7360
     call $assembly/lib/context/StateCtx#getProperty
     local.tee $0
     i32.store $0 offset=80
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0 offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $0
     call $assembly/lib/context/PostContractCallCtx#currentBalance
     local.tee $7
     i32.store $0 offset=84
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=12
     global.get $~lib/memory/__stack_pointer
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store $0 offset=20
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.load $0 offset=8
     local.tee $1
     i32.store $0 offset=88
     local.get $1
     i32.eqz
     if
      i32.const 5056
      i32.const 5184
      i32.const 137
      i32.const 50
      call $~lib/builtins/abort
      unreachable
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $8
     local.get $1
     i32.store $0
     local.get $8
     local.get $1
     i32.load $0 offset=80
     local.tee $1
     i32.store $0 offset=16
     local.get $0
     local.get $1
     call $assembly/lib/context/PostContractCallCtx#currentBalance
     local.tee $0
     i32.store $0 offset=92
     local.get $0
     i32.const 0
     local.get $7
     select
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      i32.const 7408
      i32.store $0 offset=160
      local.get $1
      local.get $2
      i32.store $0 offset=168
      local.get $2
      call $assembly/lib/types/bigint/BigInt#toString
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=164
      i32.const 7408
      local.get $1
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=152
      global.get $~lib/memory/__stack_pointer
      i32.const 7472
      i32.store $0 offset=156
      local.get $1
      i32.const 7472
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=144
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store $0 offset=152
      local.get $4
      call $assembly/lib/types/bigint/BigInt#toString
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=148
      local.get $1
      local.get $2
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=136
      global.get $~lib/memory/__stack_pointer
      i32.const 7536
      i32.store $0 offset=140
      local.get $1
      i32.const 7536
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=128
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store $0 offset=136
      local.get $6
      call $assembly/lib/types/bigint/BigInt#toString
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=132
      local.get $1
      local.get $2
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=120
      global.get $~lib/memory/__stack_pointer
      i32.const 7616
      i32.store $0 offset=124
      local.get $1
      i32.const 7616
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=112
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store $0 offset=120
      local.get $5
      call $assembly/lib/types/bigint/BigInt#toString
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=116
      local.get $1
      local.get $2
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=104
      global.get $~lib/memory/__stack_pointer
      i32.const 7680
      i32.store $0 offset=108
      local.get $1
      i32.const 7680
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=96
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0 offset=104
      local.get $7
      call $assembly/lib/types/bigint/BigInt#toString
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $2
      i32.store $0 offset=100
      local.get $1
      local.get $2
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=20
      global.get $~lib/memory/__stack_pointer
      i32.const 7776
      i32.store $0 offset=56
      local.get $1
      i32.const 7776
      call $~lib/string/String.__concat
      local.set $1
      global.get $~lib/memory/__stack_pointer
      local.get $1
      i32.store $0 offset=16
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=20
      local.get $0
      call $assembly/lib/types/bigint/BigInt#toString
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0
      local.get $1
      local.get $0
      call $~lib/string/String.__concat
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0 offset=12
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner2
      global.get $~lib/memory/__stack_pointer
      local.tee $1
      i64.const 0
      i64.store $0
      local.get $1
      local.get $0
      i32.store $0 offset=4
      local.get $0
      call $assembly/lib/types/basic_types/AString#constructor
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store $0
      local.get $0
      call $assembly/lib/types/basic_types/AString#store
      call $assembly/lib/host/debug/__debug__.log
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.add
      global.set $~lib/memory/__stack_pointer
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $0
     local.get $5
     i32.store $0 offset=12
     local.get $0
     i32.const 12
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 8428
     i32.lt_s
     br_if $folding-inner2
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     i64.const 0
     i64.store $0
     local.get $1
     i32.const 0
     i32.store $0 offset=8
     i32.const 0
     local.set $0
     local.get $1
     i32.const 5
     i32.const 0
     call $assembly/lib/types/bigint/BigInt#constructor
     local.tee $4
     i32.store $0
     i32.const 0
     local.set $2
     loop $while-continue|0
      local.get $2
      if
       global.get $~lib/memory/__stack_pointer
       local.tee $1
       local.get $4
       i32.store $0 offset=8
       local.get $1
       local.get $4
       i32.load $0
       local.tee $6
       i32.store $0 offset=4
       local.get $0
       local.tee $1
       i32.const 1
       i32.add
       local.set $0
       local.get $6
       local.get $1
       local.get $2
       i32.const 268435455
       i32.and
       call $~lib/typedarray/Uint32Array#__set
       local.get $2
       i32.const 28
       i32.shr_u
       local.set $2
       br $while-continue|0
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.tee $1
     local.get $4
     i32.store $0 offset=4
     local.get $4
     local.get $0
     i32.store $0 offset=4
     local.get $1
     local.get $4
     i32.store $0 offset=4
     local.get $4
     call $assembly/lib/types/bigint/BigInt#trimLeadingZeros
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store $0 offset=16
     local.get $5
     local.get $4
     call $assembly/lib/types/bigint/BigInt#compareTo
     i32.const 0
     i32.lt_s
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $0
      local.get $3
      i32.store $0 offset=12
      local.get $3
      i32.const 0
      i32.store8 $0
      local.get $0
      local.get $3
      i32.store $0 offset=12
      local.get $0
      i32.const 7872
      i32.store $0 offset=16
      local.get $3
      i32.const 7872
      i32.store $0 offset=4
      local.get $3
      i32.const 7872
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
      br $folding-inner0
     end
    end
    br $folding-inner0
   end
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 172
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/as-proto/assembly/internal/FixedWriter/FixedWriter#string (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 24
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   i32.const 0
   i32.const 24
   memory.fill $0
   local.get $5
   local.get $0
   i32.store $0
   local.get $5
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0 offset=12
   local.set $4
   local.get $5
   local.get $0
   i32.store $0 offset=12
   local.get $5
   local.get $0
   i32.load $0
   local.tee $2
   i32.store $0 offset=8
   local.get $5
   local.get $2
   i32.load $0 offset=8
   local.tee $2
   i32.store $0 offset=4
   local.get $2
   call $~lib/array/Array<assembly/lib/abi/ethereum/coders/ethereum.Coder>#get:length
   local.get $4
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.tee $5
    local.get $0
    i32.store $0 offset=12
    local.get $5
    local.get $0
    i32.load $0
    local.tee $2
    i32.store $0 offset=8
    local.get $5
    local.get $2
    i32.load $0 offset=8
    local.tee $4
    i32.store $0 offset=4
    local.get $5
    local.get $0
    i32.store $0 offset=8
    local.get $5
    local.get $0
    i32.store $0 offset=12
    local.get $0
    local.get $0
    i32.load $0 offset=12
    local.tee $3
    i32.const 1
    i32.add
    i32.store $0 offset=12
    local.get $5
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 8428
    i32.lt_s
    br_if $folding-inner0
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    i32.const 0
    i32.store $0
    local.get $2
    local.get $4
    i32.store $0
    local.get $3
    local.get $4
    i32.load $0 offset=12
    i32.ge_u
    if
     i32.const 1248
     i32.const 2112
     i32.const 114
     i32.const 42
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.tee $2
    local.get $4
    i32.store $0
    local.get $4
    i32.load $0 offset=4
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load $0
    local.set $3
    local.get $2
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $2
   local.get $0
   i32.store $0 offset=16
   local.get $2
   local.get $0
   i32.store $0 offset=20
   local.get $3
   local.set $2
   loop $while-continue|0
    local.get $2
    i32.const 127
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.tee $4
     local.get $0
     i32.store $0 offset=4
     local.get $4
     local.get $0
     i32.store $0 offset=8
     local.get $0
     local.get $0
     i32.load $0 offset=4
     local.tee $4
     i32.const 1
     i32.add
     i32.store $0 offset=4
     local.get $4
     local.get $2
     i32.const 127
     i32.and
     i32.const 128
     i32.or
     i32.store8 $0
     local.get $2
     i32.const 7
     i32.shr_u
     local.set $2
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $0
   i32.store $0 offset=4
   local.get $5
   local.get $0
   i32.store $0 offset=8
   local.get $0
   local.get $0
   i32.load $0 offset=4
   local.tee $4
   i32.const 1
   i32.add
   i32.store $0 offset=4
   local.get $4
   local.get $2
   i32.store8 $0
   local.get $5
   local.get $1
   i32.store $0 offset=4
   local.get $1
   i32.const 20
   i32.sub
   i32.load $0 offset=16
   i32.const 1
   i32.shr_u
   local.set $4
   local.get $5
   local.get $0
   i32.store $0 offset=4
   local.get $0
   i32.load $0 offset=4
   local.set $2
   i32.const 3
   global.set $~argumentsLength
   local.get $1
   local.get $4
   local.get $2
   call $~lib/string/String.UTF8.encodeUnsafe
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store $0 offset=8
   local.get $0
   local.get $3
   local.get $0
   i32.load $0 offset=4
   i32.add
   i32.store $0 offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/lib/types/message/aspect/v1/StateChanges/StateChanges.decode (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill $0
   local.get $1
   i32.const 0
   i32.lt_s
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $0
    i32.load $0 offset=4
   else
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0
    i32.add
   end
   local.set $1
   i32.const 0
   global.set $~argumentsLength
   global.get $~lib/memory/__stack_pointer
   local.tee $4
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
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
    i32.const 56
    i32.const 8144
    call $~lib/rt/__newArray
    local.tee $2
    i32.store $0
   end
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i32.const 0
   i32.store $0 offset=4
   local.get $3
   local.get $2
   i32.store $0 offset=8
   local.get $3
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8428
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.tee $3
   i64.const 0
   i64.store $0
   local.get $3
   i32.const 0
   i32.store $0 offset=8
   local.get $3
   i32.const 4
   i32.const 54
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store $0 offset=4
   local.get $3
   i32.const 0
   i32.store $0
   global.get $~lib/memory/__stack_pointer
   local.tee $5
   local.get $3
   i32.store $0 offset=4
   local.get $5
   local.get $2
   i32.store $0 offset=8
   local.get $3
   local.get $2
   i32.store $0
   local.get $2
   if
    local.get $3
    local.get $2
    i32.const 0
    call $byn-split-outlined-A$~lib/rt/itcms/__link
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $4
   local.get $3
   i32.store $0 offset=4
   loop $while-continue|0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store $0
    local.get $1
    local.get $0
    i32.load $0
    i32.gt_u
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     local.get $0
     call $~lib/as-proto/assembly/Reader/Reader#uint32@override
     local.tee $2
     i32.const 3
     i32.shr_u
     i32.const 1
     i32.eq
     if
      global.get $~lib/memory/__stack_pointer
      local.tee $2
      local.get $3
      i32.store $0 offset=12
      local.get $2
      local.get $3
      i32.load $0
      local.tee $5
      i32.store $0
      local.get $2
      local.get $0
      i32.store $0 offset=12
      local.get $2
      local.get $0
      i32.store $0 offset=16
      local.get $0
      call $~lib/as-proto/assembly/Reader/Reader#uint32@override
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $4
      i64.const 0
      i64.store $0
      local.get $4
      i64.const 0
      i64.store $0 offset=8
      local.get $2
      i32.const 0
      i32.lt_s
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0
       local.get $0
       i32.load $0 offset=4
      else
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0
       local.get $2
       local.get $0
       i32.load $0
       i32.add
      end
      local.set $4
      global.get $~lib/memory/__stack_pointer
      local.tee $6
      i32.const 1664
      i32.store $0 offset=4
      i32.const 0
      global.set $~argumentsLength
      i32.const 0
      local.set $2
      local.get $6
      i32.const 20
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 20
      memory.fill $0
      block $2of2
       block $1of2
        block $0of2
         block $outOfRange2
          global.get $~argumentsLength
          br_table $0of2 $1of2 $2of2 $outOfRange2
         end
         unreachable
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 1664
        i32.store $0
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 0
       call $~lib/typedarray/Uint8Array#constructor
       local.tee $2
       i32.store $0 offset=4
      end
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      i32.const 0
      i32.store $0 offset=8
      local.get $7
      i32.const 1664
      i32.store $0 offset=12
      local.get $7
      local.get $2
      i32.store $0 offset=16
      local.get $7
      i32.const 12
      i32.sub
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 8428
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      local.tee $7
      i64.const 0
      i64.store $0
      local.get $7
      i32.const 0
      i32.store $0 offset=8
      local.get $7
      i32.const 8
      i32.const 55
      call $~lib/rt/itcms/__new
      local.tee $7
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0 offset=4
      local.get $7
      i32.const 0
      i32.store $0
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0 offset=4
      local.get $7
      i32.const 0
      i32.store $0 offset=4
      global.get $~lib/memory/__stack_pointer
      local.tee $8
      local.get $7
      i32.store $0 offset=4
      local.get $8
      i32.const 1664
      i32.store $0 offset=8
      local.get $7
      i32.const 1664
      i32.store $0
      local.get $7
      i32.const 1664
      i32.const 0
      call $byn-split-outlined-A$~lib/rt/itcms/__link
      global.get $~lib/memory/__stack_pointer
      local.tee $8
      local.get $7
      i32.store $0 offset=4
      local.get $8
      local.get $2
      i32.store $0 offset=8
      local.get $7
      local.get $2
      i32.store $0 offset=4
      local.get $2
      if
       local.get $7
       local.get $2
       i32.const 0
       call $byn-split-outlined-A$~lib/rt/itcms/__link
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 12
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      i32.const 20
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $6
      local.get $7
      i32.store $0 offset=8
      loop $while-continue|04
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store $0
       local.get $4
       local.get $0
       i32.load $0
       i32.gt_u
       if
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0
        block $case2|1
         block $case1|17
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#uint32@override
          local.tee $2
          i32.const 3
          i32.shr_u
          local.tee $6
          i32.const 1
          i32.ne
          if
           local.get $6
           i32.const 2
           i32.eq
           br_if $case1|17
           br $case2|1
          end
          global.get $~lib/memory/__stack_pointer
          local.tee $2
          local.get $7
          i32.store $0
          local.get $2
          local.get $0
          i32.store $0 offset=12
          local.get $0
          call $~lib/as-proto/assembly/Reader/Reader#string@override
          local.set $2
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store $0 offset=4
          local.get $7
          local.get $2
          i32.store $0
          local.get $2
          if
           local.get $7
           local.get $2
           i32.const 0
           call $byn-split-outlined-A$~lib/rt/itcms/__link
          end
          br $while-continue|04
         end
         global.get $~lib/memory/__stack_pointer
         local.tee $2
         local.get $7
         i32.store $0
         local.get $2
         local.get $0
         i32.store $0 offset=12
         local.get $0
         call $~lib/as-proto/assembly/Reader/Reader#bytes@override
         local.set $2
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store $0 offset=4
         local.get $7
         local.get $2
         i32.store $0 offset=4
         local.get $2
         if
          local.get $7
          local.get $2
          i32.const 0
          call $byn-split-outlined-A$~lib/rt/itcms/__link
         end
         br $while-continue|04
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store $0
        local.get $0
        local.get $2
        i32.const 7
        i32.and
        call $~lib/as-proto/assembly/Reader/Reader#skipType@override
        br $while-continue|04
       end
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 16
      i32.add
      global.set $~lib/memory/__stack_pointer
      global.get $~lib/memory/__stack_pointer
      local.get $7
      i32.store $0 offset=8
      local.get $5
      local.get $7
      call $~lib/array/Array<~lib/string/String>#push
      br $while-continue|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store $0
     local.get $0
     local.get $2
     i32.const 7
     i32.and
     call $~lib/as-proto/assembly/Reader/Reader#skipType@override
     br $while-continue|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 41216
  i32.const 41264
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/object/Object#constructor (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store $0
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $5
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   memory.copy $0 $0
  end
  local.get $5
  local.get $3
  i32.store $0
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store $0
  local.get $3
  if
   local.get $1
   local.get $3
   i32.const 0
   call $byn-split-outlined-A$~lib/rt/itcms/__link
  end
  local.get $1
  local.get $3
  i32.store $0 offset=4
  local.get $1
  local.get $4
  i32.store $0 offset=8
  local.get $1
  local.get $0
  i32.store $0 offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String.UTF8.decodeUnsafe (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $0
  local.get $1
  i32.add
  local.tee $4
  local.get $0
  i32.lt_u
  if
   i32.const 0
   i32.const 1696
   i32.const 770
   i32.const 7
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store $0
  local.get $2
  local.set $1
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    block $while-break|0
     local.get $0
     i32.load8_u $0
     local.set $5
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     i32.const 128
     i32.and
     if
      local.get $0
      local.get $4
      i32.eq
      br_if $while-break|0
      local.get $0
      i32.load8_u $0
      i32.const 63
      i32.and
      local.set $6
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      i32.const 224
      i32.and
      i32.const 192
      i32.eq
      if
       local.get $1
       local.get $5
       i32.const 31
       i32.and
       i32.const 6
       i32.shl
       local.get $6
       i32.or
       i32.store16 $0
      else
       local.get $0
       local.get $4
       i32.eq
       br_if $while-break|0
       local.get $0
       i32.load8_u $0
       i32.const 63
       i32.and
       local.set $3
       local.get $0
       i32.const 1
       i32.add
       local.set $0
       local.get $5
       i32.const 240
       i32.and
       i32.const 224
       i32.eq
       if
        local.get $5
        i32.const 15
        i32.and
        i32.const 12
        i32.shl
        local.get $6
        i32.const 6
        i32.shl
        i32.or
        local.get $3
        i32.or
        local.set $3
       else
        local.get $0
        local.get $4
        i32.eq
        br_if $while-break|0
        local.get $0
        i32.load8_u $0
        i32.const 63
        i32.and
        local.get $5
        i32.const 7
        i32.and
        i32.const 18
        i32.shl
        local.get $6
        i32.const 12
        i32.shl
        i32.or
        local.get $3
        i32.const 6
        i32.shl
        i32.or
        i32.or
        local.set $3
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $3
       i32.const 65536
       i32.lt_u
       if
        local.get $1
        local.get $3
        i32.store16 $0
       else
        local.get $1
        local.get $3
        i32.const 65536
        i32.sub
        local.tee $3
        i32.const 10
        i32.shr_u
        i32.const 55296
        i32.or
        local.get $3
        i32.const 1023
        i32.and
        i32.const 56320
        i32.or
        i32.const 16
        i32.shl
        i32.or
        i32.store $0
        local.get $1
        i32.const 2
        i32.add
        local.set $1
       end
      end
     else
      local.get $1
      local.get $5
      i32.store16 $0
     end
     local.get $1
     i32.const 2
     i32.add
     local.set $1
     br $while-continue|0
    end
   end
  end
  local.get $2
  local.get $1
  local.get $2
  i32.sub
  call $~lib/rt/itcms/__renew
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/lib/context/StateCtx#constructor (result i32)
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.tee $0
  i32.const 0
  i32.store $0
  local.get $0
  i32.const 0
  i32.const 18
  call $~lib/rt/itcms/__new
  local.tee $0
  i32.store $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/util/number/utoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 8428
  i32.lt_s
  if
   i32.const 41216
   i32.const 41264
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store $0
  local.get $1
  i32.const 2
  i32.lt_s
  local.get $1
  i32.const 36
  i32.gt_s
  i32.or
  if
   i32.const 3280
   i32.const 3408
   i32.const 350
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 3472
   return
  end
  local.get $1
  i32.const 10
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $0
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $0
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $0
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $0
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $0
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $1
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store $0
   local.get $5
   local.get $0
   local.get $1
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.tee $1
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $5
    i32.store $0
    local.get $0
    i64.extend_i32_u
    local.set $2
    loop $while-continue|0
     local.get $1
     i32.const 2
     i32.ge_u
     if
      local.get $5
      local.get $1
      i32.const 2
      i32.sub
      local.tee $1
      i32.const 1
      i32.shl
      i32.add
      local.get $2
      i32.wrap_i64
      i32.const 255
      i32.and
      i32.const 2
      i32.shl
      i32.const 3904
      i32.add
      i32.load $0
      i32.store $0
      local.get $2
      i64.const 8
      i64.shr_u
      local.set $2
      br $while-continue|0
     end
    end
    local.get $1
    i32.const 1
    i32.and
    if
     local.get $5
     local.get $2
     i32.wrap_i64
     i32.const 6
     i32.shl
     i32.const 3904
     i32.add
     i32.load16_u $0
     i32.store16 $0
    end
   else
    global.get $~lib/memory/__stack_pointer
    block $__inlined_func$~lib/util/number/ulog_base (result i32)
     local.get $0
     i64.extend_i32_u
     local.set $3
     local.get $1
     i32.popcnt
     i32.const 1
     i32.eq
     if
      i32.const 63
      local.get $3
      i64.clz
      i32.wrap_i64
      i32.sub
      i32.const 31
      local.get $1
      i32.clz
      i32.sub
      i32.div_u
      i32.const 1
      i32.add
      br $__inlined_func$~lib/util/number/ulog_base
     end
     local.get $1
     i64.extend_i32_s
     local.tee $6
     local.set $2
     i32.const 1
     local.set $5
     loop $while-continue|01
      local.get $2
      local.get $3
      i64.le_u
      if
       local.get $3
       local.get $2
       i64.div_u
       local.set $3
       local.get $2
       local.get $2
       i64.mul
       local.set $2
       local.get $5
       i32.const 1
       i32.shl
       local.set $5
       br $while-continue|01
      end
     end
     loop $while-continue|1
      local.get $3
      i64.const 0
      i64.ne
      if
       local.get $3
       local.get $6
       i64.div_u
       local.set $3
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $while-continue|1
      end
     end
     local.get $5
     i32.const 1
     i32.sub
    end
    local.tee $4
    i32.const 1
    i32.shl
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $5
    i32.store $0
    local.get $0
    i64.extend_i32_u
    local.set $2
    local.get $1
    i64.extend_i32_s
    local.set $3
    local.get $1
    local.get $1
    i32.const 1
    i32.sub
    i32.and
    if
     loop $do-loop|1
      local.get $5
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.const 1
      i32.shl
      i32.add
      local.get $2
      local.get $2
      local.get $3
      i64.div_u
      local.tee $2
      local.get $3
      i64.mul
      i64.sub
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.const 4960
      i32.add
      i32.load16_u $0
      i32.store16 $0
      local.get $2
      i64.const 0
      i64.ne
      br_if $do-loop|1
     end
    else
     local.get $1
     i32.ctz
     i32.const 7
     i32.and
     i64.extend_i32_s
     local.set $6
     local.get $3
     i64.const 1
     i64.sub
     local.set $3
     loop $do-loop|0
      local.get $5
      local.get $4
      i32.const 1
      i32.sub
      local.tee $4
      i32.const 1
      i32.shl
      i32.add
      local.get $2
      local.get $3
      i64.and
      i32.wrap_i64
      i32.const 1
      i32.shl
      i32.const 4960
      i32.add
      i32.load16_u $0
      i32.store16 $0
      local.get $2
      local.get $6
      i64.shr_u
      local.tee $2
      i64.const 0
      i64.ne
      br_if $do-loop|0
     end
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__visit (param $0 i32)
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $byn-split-outlined-A$~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load $0 offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load $0 offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
)
