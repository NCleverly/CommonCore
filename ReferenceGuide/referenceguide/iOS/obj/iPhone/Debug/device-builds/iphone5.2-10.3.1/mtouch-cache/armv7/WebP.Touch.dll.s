.subsections_via_symbols
.section __DWARF, __debug_line,regular,debug
Ldebug_line_section_start:
Ldebug_line_start:
.section __DWARF, __debug_abbrev,regular,debug

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,17
	.byte 1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4,36,0
	.byte 11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3,8,73
	.byte 19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8,28,13
	.byte 0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0,0,13
	.byte 15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18,1,0
	.byte 0,0
.section __DWARF, __debug_info,regular,debug
Ldebug_info_start:

LDIFF_SYM0=Ldebug_info_end - Ldebug_info_begin
	.long LDIFF_SYM0
Ldebug_info_begin:

	.short 2
	.long 0
	.byte 4,1
	.asciz "Mono AOT Compiler 5.0.0 (tarball Fri May  5 18:00:26 EDT 2017)"
	.asciz "WebP.Touch.dll"
	.asciz ""

	.byte 2,0,0,0,0,0,0,0,0
LDIFF_SYM1=Ldebug_line_start - Ldebug_line_section_start
	.long LDIFF_SYM1
LDIE_I1:

	.byte 4,1,5
	.asciz "sbyte"
LDIE_U1:

	.byte 4,1,7
	.asciz "byte"
LDIE_I2:

	.byte 4,2,5
	.asciz "short"
LDIE_U2:

	.byte 4,2,7
	.asciz "ushort"
LDIE_I4:

	.byte 4,4,5
	.asciz "int"
LDIE_U4:

	.byte 4,4,7
	.asciz "uint"
LDIE_I8:

	.byte 4,8,5
	.asciz "long"
LDIE_U8:

	.byte 4,8,7
	.asciz "ulong"
LDIE_I:

	.byte 4,4,5
	.asciz "intptr"
LDIE_U:

	.byte 4,4,7
	.asciz "uintptr"
LDIE_R4:

	.byte 4,4,4
	.asciz "float"
LDIE_R8:

	.byte 4,8,4
	.asciz "double"
LDIE_BOOLEAN:

	.byte 4,1,2
	.asciz "boolean"
LDIE_CHAR:

	.byte 4,2,8
	.asciz "char"
LDIE_STRING:

	.byte 4,4,1
	.asciz "string"
LDIE_OBJECT:

	.byte 4,4,1
	.asciz "object"
LDIE_SZARRAY:

	.byte 4,4,1
	.asciz "object"
.section __DWARF, __debug_loc,regular,debug
Ldebug_loc_start:
.section __DWARF, __debug_frame,regular,debug
	.align 3

LDIFF_SYM2=Lcie0_end - Lcie0_start
	.long LDIFF_SYM2
Lcie0_start:

	.long -1
	.byte 3
	.asciz ""

	.byte 1,124,14,12,13,0
	.align 2
Lcie0_end:
.text
	.align 3
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPCodec__ctor
WebP_Touch_WebPCodec__ctor:
.file 1 "<unknown>"
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,9,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 92
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,0,157,229,0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229
	.byte 136,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229,20,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 96
	.byte 0,0,159,231
bl _p_1

	.byte 24,0,141,229
bl _p_2

	.byte 0,224,157,229,192,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,157,229,24,16,157,229,16,16,141,229
	.byte 8,16,128,229,2,15,128,226
bl _p_3

	.byte 16,0,157,229,0,224,157,229,240,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,4,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,9,223,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPCodec_Decode_System_IO_Stream
WebP_Touch_WebPCodec_Decode_System_IO_Stream:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,32,1,45,233,8,223,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 100
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,95,160,227,0,224,157,229,72,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,100,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,12,0,157,229
bl _p_4

	.byte 24,0,141,229,0,224,157,229,132,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229,20,0,141,229
	.byte 0,80,160,225,0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,16,157,229,8,0,157,229
	.byte 8,32,144,229,1,0,160,225,2,0,160,225,0,32,146,229,15,224,160,225,240,240,146,229,16,0,141,229,0,224,157,229
	.byte 220,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,248,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,16,0,157,229,0,224,157,229,16,225,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,223,141,226,32,1,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip ApiDefinition_Messaging__cctor
ApiDefinition_Messaging__cctor:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 104
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,16,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 108
	.byte 1,16,159,231,1,0,160,225,0,16,145,229,15,224,160,225,228,241,145,229,8,0,141,229,0,224,157,229,144,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,8,16,157,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 112
	.byte 0,0,159,231,0,16,128,229,0,224,157,229,188,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229
	.byte 208,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_4:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPDecoderWrapper__ctor_intptr
WebP_Touch_WebPDecoderWrapper__ctor_intptr:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 116
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,0,157,229,12,16,157,229,0,47,160,227,0,47,160,227
bl _p_5

	.byte 0,224,157,229,136,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,156,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,176,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_5:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPDecoderWrapper__ctor_intptr_bool
WebP_Touch_WebPDecoderWrapper__ctor_intptr_bool:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,7,223,77,226,8,0,141,229,12,16,141,229,16,32,205,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 120
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,72,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,100,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,0,157,229,12,16,157,229,16,32,221,229
bl _p_5

	.byte 0,224,157,229,136,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,156,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,176,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,7,223,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_6:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPDecoder__ctor
WebP_Touch_WebPDecoder__ctor:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,8,223,77,226,0,160,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 124
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,10,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 128
	.byte 0,0,159,231,0,16,144,229,10,0,160,225
bl _p_6

	.byte 0,224,157,229,144,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,164,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,10,0,160,225,10,0,160,225,0,0,154,229,12,0,144,229,28,0,141,229,0,224,157,229
	.byte 204,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,16,157,229,1,0,160,225,0,16,145,229,15,224,160,225
	.byte 228,241,145,229,24,0,141,229,0,224,157,229,248,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229
	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 112
	.byte 1,16,159,231,0,16,145,229
bl _p_7

	.byte 255,0,0,226,20,0,141,229,0,224,157,229,48,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,16,157,229
	.byte 10,0,160,225
bl _p_8

	.byte 0,224,157,229,80,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,100,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,120,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229
	.byte 140,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,160,225,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,10,0,160,225,10,0,160,225,10,0,160,225
bl _p_9

	.byte 12,0,141,229,0,224,157,229,200,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
L_OBJC_SELECTOR_0:
.long L_OBJC_SELECTOR_REFERENCES_0-(L_OBJC_SELECTOR_0+12)
	.byte 0,0,159,231,16,0,141,229,0,224,157,229,240,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,0,157,229
	.byte 16,16,157,229
bl _p_10

	.byte 8,0,141,229,0,224,157,229,20,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,16,157,229,0,32,159,229
	.byte 0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 132
	.byte 2,32,159,231,10,0,160,225
bl _p_11

	.byte 0,224,157,229,68,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,88,226,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,108,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229
	.byte 128,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,148,226,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,224,157,229,168,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,188,226,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,208,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,224,157,229,228,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,248,226,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,12,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229
	.byte 32,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,223,141,226,0,5,189,232,128,128,189,232

Lme_7:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPDecoder__ctor_Foundation_NSObjectFlag
WebP_Touch_WebPDecoder__ctor_Foundation_NSObjectFlag:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,64,1,45,233,8,223,77,226,0,96,160,225,8,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 136
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,6,0,160,225,8,16,157,229,6,0,160,225
bl _p_6

	.byte 0,224,157,229,132,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,152,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,6,0,160,225,6,0,160,225,0,0,150,229,12,0,144,229,24,0,141,229,0,224,157,229
	.byte 192,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,16,157,229,1,0,160,225,0,16,145,229,15,224,160,225
	.byte 228,241,145,229,20,0,141,229,0,224,157,229,236,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,157,229
	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 112
	.byte 1,16,159,231,0,16,145,229
bl _p_7

	.byte 255,0,0,226,16,0,141,229,0,224,157,229,36,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,16,157,229
	.byte 6,0,160,225
bl _p_8

	.byte 0,224,157,229,68,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,88,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,108,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,223,141,226
	.byte 64,1,189,232,128,128,189,232

Lme_8:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPDecoder__ctor_intptr
WebP_Touch_WebPDecoder__ctor_intptr:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,64,1,45,233,8,223,77,226,0,96,160,225,8,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 140
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,6,0,160,225,8,16,157,229,6,0,160,225
bl _p_12

	.byte 0,224,157,229,132,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,152,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,6,0,160,225,6,0,160,225,0,0,150,229,12,0,144,229,24,0,141,229,0,224,157,229
	.byte 192,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,16,157,229,1,0,160,225,0,16,145,229,15,224,160,225
	.byte 228,241,145,229,20,0,141,229,0,224,157,229,236,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,157,229
	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 112
	.byte 1,16,159,231,0,16,145,229
bl _p_7

	.byte 255,0,0,226,16,0,141,229,0,224,157,229,36,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,16,157,229
	.byte 6,0,160,225
bl _p_8

	.byte 0,224,157,229,68,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,88,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,108,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,223,141,226
	.byte 64,1,189,232,128,128,189,232

Lme_9:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPDecoder_get_ClassHandle
WebP_Touch_WebPDecoder_get_ClassHandle:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,7,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 144
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 148
	.byte 0,0,159,231,0,0,144,229,16,0,141,229,4,224,157,229,0,224,158,229,0,224,157,229,144,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,16,0,157,229,0,224,157,229,168,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 7,223,141,226,0,1,189,232,128,128,189,232

Lme_a:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPDecoder_ImageWithWebP_string
WebP_Touch_WebPDecoder_ImageWithWebP_string:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,48,1,45,233,11,223,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 152
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,95,160,227,0,79,160,227,0,224,157,229
	.byte 76,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,104,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,12,0,157,229,0,15,80,227,18,0,0,26,0,224,157,229,136,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . -12
	.byte 0,0,159,231,176,18,160,227,176,18,160,227
bl _p_13

	.byte 0,16,160,225,145,0,0,227,0,2,64,227,145,0,0,227,0,2,64,227
bl _mono_create_corlib_exception_1
bl _p_14

	.byte 0,224,157,229,212,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,0,157,229
bl _p_15

	.byte 36,0,141,229,0,224,157,229,244,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,36,0,157,229,0,80,160,225
	.byte 0,224,157,229,16,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,36,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,56,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229
	.byte 76,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229
bl _p_9

	.byte 28,0,141,229,0,224,157,229,108,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
L_OBJC_SELECTOR_1:
.long L_OBJC_SELECTOR_REFERENCES_1-(L_OBJC_SELECTOR_1+12)
	.byte 0,0,159,231,32,0,141,229,0,224,157,229,148,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,0,157,229
	.byte 32,16,157,229,5,32,160,225
bl _p_16

	.byte 24,0,141,229,0,224,157,229,188,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229,0,16,159,229
	.byte 0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 156
	.byte 1,16,159,231,1,128,160,225
bl _p_17

	.byte 20,0,141,229,0,224,157,229,240,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,157,229,0,64,160,225
	.byte 0,224,157,229,12,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,32,226,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,52,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229
	.byte 72,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,92,226,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,224,157,229,112,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,132,226,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,152,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,224,157,229,172,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,192,226,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,0,160,225
bl _p_18

	.byte 0,224,157,229,220,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,240,226,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,0,160,225,16,0,141,229,4,224,157,229,0,224,158,229,0,224,157,229,20,227,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,16,0,157,229,0,224,157,229,44,227,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,11,223,141,226,48,1,189,232,128,128,189,232

Lme_b:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPDecoder_ImageWithWebPData_Foundation_NSData
WebP_Touch_WebPDecoder_ImageWithWebPData_Foundation_NSData:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,11,223,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 160
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,12,0,157,229,0,15,80,227,18,0,0,26,0,224,157,229,128,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . -12
	.byte 0,0,159,231,236,17,160,227,236,17,160,227
bl _p_13

	.byte 0,16,160,225,145,0,0,227,0,2,64,227,145,0,0,227,0,2,64,227
bl _mono_create_corlib_exception_1
bl _p_14

	.byte 0,224,157,229,204,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,224,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,224,157,229,244,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229
	.byte 8,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229
bl _p_9

	.byte 24,0,141,229,0,224,157,229,40,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
L_OBJC_SELECTOR_2:
.long L_OBJC_SELECTOR_REFERENCES_2-(L_OBJC_SELECTOR_2+12)
	.byte 0,0,159,231,28,0,141,229,0,224,157,229,80,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,16,157,229
	.byte 1,0,160,225,0,224,209,229
bl _p_9

	.byte 32,0,141,229,0,224,157,229,120,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229,28,16,157,229
	.byte 32,32,157,229
bl _p_16

	.byte 20,0,141,229,0,224,157,229,160,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,157,229,0,16,159,229
	.byte 0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 156
	.byte 1,16,159,231,1,128,160,225
bl _p_17

	.byte 16,0,141,229,0,224,157,229,212,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229
	.byte 0,224,157,229,240,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,0,157,229,0,224,157,229,8,226,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,11,223,141,226,0,1,189,232,128,128,189,232

Lme_c:
.text
	.align 2
	.no_dead_strip WebP_Touch_WebPDecoder__cctor
WebP_Touch_WebPDecoder__cctor:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 164
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 168
	.byte 0,0,159,231
bl _p_19

	.byte 8,0,141,229,0,224,157,229,132,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,16,157,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 148
	.byte 0,0,159,231,0,16,128,229,0,224,157,229,176,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229
	.byte 196,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_d:
.text
	.align 2
	.no_dead_strip wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr
wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,13,192,160,225,240,95,45,233,50,223,77,226,20,0,141,229,24,16,141,229
bl _mono_tls_get_lmf_addr

	.byte 8,31,141,226,4,0,129,229,0,192,144,229,0,192,129,229,0,16,128,229,12,208,129,229,20,176,129,229,15,192,160,225
	.byte 16,192,129,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 172
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,15,160,227,8,0,141,229,0,15,160,227
	.byte 12,0,141,229,0,15,160,227,16,0,205,229,0,95,160,227,0,224,157,229,140,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,168,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,15,160,227,16,0,205,229,0,224,157,229,196,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,157,229
	.byte 24,16,157,229
bl _p_20

	.byte 0,80,160,225,0,224,157,229,232,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 176
	.byte 0,0,159,231,0,0,144,229,0,15,80,227,19,0,0,10,0,224,157,229,24,225,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,224,157,229,44,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
bl _p_21

	.byte 0,64,160,225,4,16,160,225,0,176,160,225,0,15,84,227,2,0,0,10,11,0,160,225,11,0,160,225
bl _p_14

	.byte 11,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,112,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 5,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,144,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 5,0,160,225,0,224,157,229,168,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,47,141,226,0,192,146,229
	.byte 4,224,146,229,0,192,142,229,50,223,141,226,240,31,189,232,4,208,141,226,128,128,189,232

Lme_f:
.text
	.align 2
	.no_dead_strip wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr
wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr:
.loc 1 1 0

	.byte 128,64,45,233,13,112,160,225,13,192,160,225,240,95,45,233,52,223,77,226,24,0,141,229,28,16,141,229,32,32,141,229
bl _mono_tls_get_lmf_addr

	.byte 10,31,141,226,4,0,129,229,0,192,144,229,0,192,129,229,0,16,128,229,12,208,129,229,20,176,129,229,15,192,160,225
	.byte 16,192,129,229,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 180
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,15,160,227,8,0,141,229,0,15,160,227
	.byte 12,0,141,229,0,15,160,227,16,0,205,229,0,79,160,227,0,224,157,229,144,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,172,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,15,160,227,16,0,205,229,0,224,157,229,200,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229
	.byte 28,16,157,229,32,32,157,229
bl _p_22

	.byte 0,64,160,225,0,224,157,229,240,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_WebP_Touch_got - . + 176
	.byte 0,0,159,231,0,0,144,229,0,15,80,227,18,0,0,10,0,224,157,229,32,225,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,224,157,229,52,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
bl _p_21

	.byte 0,176,160,225,11,16,160,225,20,0,141,229,0,15,91,227,1,0,0,10,20,0,157,229
bl _p_14

	.byte 20,0,157,229,4,224,157,229,0,224,158,229,0,224,157,229,116,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 4,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,148,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 4,0,160,225,0,224,157,229,172,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,47,141,226,0,192,146,229
	.byte 4,224,146,229,0,192,142,229,52,223,141,226,240,31,189,232,4,208,141,226,128,128,189,232

Lme_10:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl WebP_Touch_WebPCodec__ctor
bl WebP_Touch_WebPCodec_Decode_System_IO_Stream
bl method_addresses
bl method_addresses
bl ApiDefinition_Messaging__cctor
bl WebP_Touch_WebPDecoderWrapper__ctor_intptr
bl WebP_Touch_WebPDecoderWrapper__ctor_intptr_bool
bl WebP_Touch_WebPDecoder__ctor
bl WebP_Touch_WebPDecoder__ctor_Foundation_NSObjectFlag
bl WebP_Touch_WebPDecoder__ctor_intptr
bl WebP_Touch_WebPDecoder_get_ClassHandle
bl WebP_Touch_WebPDecoder_ImageWithWebP_string
bl WebP_Touch_WebPDecoder_ImageWithWebPData_Foundation_NSData
bl WebP_Touch_WebPDecoder__cctor
bl method_addresses
bl wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr
bl wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,252,10,68,14,12,68,8,8,14,8,68,11
	.byte 36,12,13,0,68,14,8,135,2,72,14,16,133,4,136,3,142,1,68,14,48,3,8,1,10,68,14,16,68,8,5,8
	.byte 8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,200,10,68,14,12,68,8
	.byte 8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,168,10,68,14,12,68,8
	.byte 8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,40,2,168,10,68,14,12,68,8
	.byte 8,14,8,68,11,36,12,13,0,68,14,8,135,2,72,14,16,136,4,138,3,142,1,68,14,48,3,24,3,10,68,14
	.byte 16,68,8,8,8,10,14,8,68,11,36,12,13,0,68,14,8,135,2,72,14,16,134,4,136,3,142,1,68,14,48,3
	.byte 100,1,10,68,14,16,68,8,6,8,8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68
	.byte 14,40,2,160,10,68,14,12,68,8,8,14,8,68,11,40,12,13,0,68,14,8,135,2,72,14,20,132,5,133,4,136
	.byte 3,142,1,68,14,64,3,36,3,10,68,14,20,68,8,4,8,5,8,8,14,8,68,11,32,12,13,0,68,14,8,135
	.byte 2,72,14,12,136,3,142,1,68,14,56,3,0,2,10,68,14,12,68,8,8,14,8,68,11,31,12,13,0,68,14,8
	.byte 135,2,72,14,12,136,3,142,1,68,14,32,2,188,10,68,14,12,68,8,8,14,8,68,11,67,12,13,0,68,14,8
	.byte 135,2,76,14,48,132,12,133,11,134,10,136,8,137,7,138,6,139,5,140,4,142,3,68,14,248,1,3,156,1,10,84
	.byte 12,13,48,68,8,4,8,5,8,6,8,7,8,8,8,9,8,10,8,11,8,12,14,12,68,14,8,68,11,67,12,13
	.byte 0,68,14,8,135,2,76,14,48,132,12,133,11,134,10,136,8,137,7,138,6,139,5,140,4,142,3,68,14,128,2,3
	.byte 160,1,10,84,12,13,48,68,8,4,8,5,8,6,8,7,8,8,8,9,8,10,8,11,8,12,14,12,68,14,8,68
	.byte 11

.text
	.align 4
plt:
mono_aot_WebP_Touch_plt:
	.no_dead_strip plt__jit_icall_ves_icall_object_new_specific
plt__jit_icall_ves_icall_object_new_specific:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 196,412
	.no_dead_strip plt_WebP_Touch_WebPDecoder__ctor
plt_WebP_Touch_WebPDecoder__ctor:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 200,444
	.no_dead_strip plt_wrapper_write_barrier_object_wbarrier_conc_intptr
plt_wrapper_write_barrier_object_wbarrier_conc_intptr:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 204,446
	.no_dead_strip plt_Foundation_NSData_FromStream_System_IO_Stream
plt_Foundation_NSData_FromStream_System_IO_Stream:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 208,453
	.no_dead_strip plt_ObjCRuntime_BaseWrapper__ctor_intptr_bool
plt_ObjCRuntime_BaseWrapper__ctor_intptr_bool:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 212,458
	.no_dead_strip plt_Foundation_NSObject__ctor_Foundation_NSObjectFlag
plt_Foundation_NSObject__ctor_Foundation_NSObjectFlag:
_p_6:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 216,463
	.no_dead_strip plt_System_Reflection_Assembly_op_Equality_System_Reflection_Assembly_System_Reflection_Assembly
plt_System_Reflection_Assembly_op_Equality_System_Reflection_Assembly_System_Reflection_Assembly:
_p_7:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 220,468
	.no_dead_strip plt_Foundation_NSObject_set_IsDirectBinding_bool
plt_Foundation_NSObject_set_IsDirectBinding_bool:
_p_8:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 224,473
	.no_dead_strip plt_Foundation_NSObject_get_Handle
plt_Foundation_NSObject_get_Handle:
_p_9:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 228,478
	.no_dead_strip plt_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr
plt_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr:
_p_10:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 232,483
	.no_dead_strip plt_Foundation_NSObject_InitializeHandle_intptr_string
plt_Foundation_NSObject_InitializeHandle_intptr_string:
_p_11:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 236,485
	.no_dead_strip plt_Foundation_NSObject__ctor_intptr
plt_Foundation_NSObject__ctor_intptr:
_p_12:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 240,490
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_13:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 244,495
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_14:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 248,515
	.no_dead_strip plt_Foundation_NSString_CreateNative_string
plt_Foundation_NSString_CreateNative_string:
_p_15:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 252,543
	.no_dead_strip plt_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr
plt_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr:
_p_16:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 256,548
	.no_dead_strip plt_ObjCRuntime_Runtime_GetNSObject_UIKit_UIImage_intptr
plt_ObjCRuntime_Runtime_GetNSObject_UIKit_UIImage_intptr:
_p_17:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 260,550
	.no_dead_strip plt_Foundation_NSString_ReleaseNative_intptr
plt_Foundation_NSString_ReleaseNative_intptr:
_p_18:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 264,562
	.no_dead_strip plt_ObjCRuntime_Class_GetHandle_string
plt_ObjCRuntime_Class_GetHandle_string:
_p_19:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 268,567
	.no_dead_strip plt__icall_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr
plt__icall_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr:
_p_20:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 272,572
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_21:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 276,574
	.no_dead_strip plt__icall_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr
plt__icall_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr:
_p_22:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_WebP_Touch_got - . + 280,612
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_WebP_Touch_got, 288
got_end:
.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
.align	3
L_OBJC_SELECTOR_REFERENCES_0:
	.align 2
	.long L_OBJC_METH_VAR_NAME_0
L_OBJC_SELECTOR_REFERENCES_1:
	.align 2
	.long L_OBJC_METH_VAR_NAME_1
L_OBJC_SELECTOR_REFERENCES_2:
	.align 2
	.long L_OBJC_METH_VAR_NAME_2
.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_0:
.asciz "init"
L_OBJC_METH_VAR_NAME_1:
.asciz "imageWithWebP:"
L_OBJC_METH_VAR_NAME_2:
.asciz "imageWithWebPData:"
.section	__DATA,__objc_imageinfo,regular,no_dead_strip
.align	3
L_OBJC_IMAGE_INFO:
.long	0
.long	16
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "000343E5-08FB-45B0-91D2-F1D2457632A7"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "WebP.Touch"
.data
	.align 3
_mono_aot_file_info:

	.long 139,0
	.align 2
	.long mono_aot_WebP_Touch_got
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long jit_code_start
	.align 2
	.long jit_code_end
	.align 2
	.long method_addresses
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long mem_end
	.align 2
	.long assembly_guid
	.align 2
	.long runtime_version
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long 0
	.align 2
	.long globals
	.align 2
	.long assembly_name
	.align 2
	.long plt
	.align 2
	.long plt_end
	.align 2
	.long unwind_info
	.align 2
	.long unbox_trampolines
	.align 2
	.long unbox_trampolines_end
	.align 2
	.long unbox_trampoline_addresses

	.long 49,288,23,17,70,391195135,0,2558
	.long 128,4,4,10,0,26,3264,696
	.long 440,216,0,352,408,272,0,192
	.long 48,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 162,192,64,240,145,206,253,26,158,158,189,98,224,216,186,7
	.globl _mono_aot_module_WebP_Touch_info
	.align 2
_mono_aot_module_WebP_Touch_info:
	.align 2
	.long _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_1:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM3=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM3
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM4=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM5=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_4:

	.byte 8
	.asciz "_Flags"

	.byte 1
LDIFF_SYM6=LDIE_U1 - Ldebug_info_start
	.long LDIFF_SYM6
	.byte 9
	.asciz "Disposed"

	.byte 1,9
	.asciz "NativeRef"

	.byte 2,9
	.asciz "IsDirectBinding"

	.byte 4,9
	.asciz "RegisteredToggleRef"

	.byte 8,9
	.asciz "InFinalizerQueue"

	.byte 16,9
	.asciz "HasManagedRef"

	.byte 32,0,7
	.asciz "_Flags"

LDIFF_SYM7=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_3:

	.byte 5
	.asciz "Foundation_NSObject"

	.byte 20,16
LDIFF_SYM10=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM11=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,8,6
	.asciz "class_handle"

LDIFF_SYM12=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,12,6
	.asciz "flags"

LDIFF_SYM13=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM13
	.byte 2,35,16,0,7
	.asciz "Foundation_NSObject"

LDIFF_SYM14=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM15=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM15
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM16=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_2:

	.byte 5
	.asciz "WebP_Touch_WebPDecoder"

	.byte 20,16
LDIFF_SYM17=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 2,35,0,0,7
	.asciz "WebP_Touch_WebPDecoder"

LDIFF_SYM18=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM19=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM20=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_0:

	.byte 5
	.asciz "WebP_Touch_WebPCodec"

	.byte 12,16
LDIFF_SYM21=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM21
	.byte 2,35,0,6
	.asciz "_decoder"

LDIFF_SYM22=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM22
	.byte 2,35,8,0,7
	.asciz "WebP_Touch_WebPCodec"

LDIFF_SYM23=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM24=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM25=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2
	.asciz "WebP.Touch.WebPCodec:.ctor"
	.asciz "WebP_Touch_WebPCodec__ctor"

	.byte 0,0
	.long WebP_Touch_WebPCodec__ctor
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM26=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM27=Lfde0_end - Lfde0_start
	.long LDIFF_SYM27
Lfde0_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPCodec__ctor

LDIFF_SYM28=Lme_0 - WebP_Touch_WebPCodec__ctor
	.long LDIFF_SYM28
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,252,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_6:

	.byte 5
	.asciz "System_MarshalByRefObject"

	.byte 12,16
LDIFF_SYM29=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM29
	.byte 2,35,0,6
	.asciz "_identity"

LDIFF_SYM30=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,35,8,0,7
	.asciz "System_MarshalByRefObject"

LDIFF_SYM31=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM31
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM32=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM33=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_11:

	.byte 5
	.asciz "System_ValueType"

	.byte 8,16
LDIFF_SYM34=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM35=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM35
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM36=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM36
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM37=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM37
LTDIE_10:

	.byte 5
	.asciz "System_Int32"

	.byte 12,16
LDIFF_SYM38=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM39=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,8,0,7
	.asciz "System_Int32"

LDIFF_SYM40=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM40
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM41=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM41
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM42=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM42
LTDIE_12:

	.byte 5
	.asciz "System_Threading_Tasks_TaskScheduler"

	.byte 12,16
LDIFF_SYM43=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,0,6
	.asciz "m_taskSchedulerId"

LDIFF_SYM44=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,8,0,7
	.asciz "System_Threading_Tasks_TaskScheduler"

LDIFF_SYM45=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM45
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM46=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM47=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_15:

	.byte 5
	.asciz "System_Threading_SynchronizationContext"

	.byte 8,16
LDIFF_SYM48=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM48
	.byte 2,35,0,0,7
	.asciz "System_Threading_SynchronizationContext"

LDIFF_SYM49=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM49
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM50=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM50
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM51=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM51
LTDIE_18:

	.byte 5
	.asciz "System_Single"

	.byte 12,16
LDIFF_SYM52=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM53=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 2,35,8,0,7
	.asciz "System_Single"

LDIFF_SYM54=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM55=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM56=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM56
LTDIE_19:

	.byte 5
	.asciz "System_Boolean"

	.byte 9,16
LDIFF_SYM57=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM58=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 2,35,8,0,7
	.asciz "System_Boolean"

LDIFF_SYM59=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM60=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM61=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM61
LTDIE_20:

	.byte 17
	.asciz "System_Collections_ICollection"

	.byte 8,7
	.asciz "System_Collections_ICollection"

LDIFF_SYM62=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM62
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM63=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM64=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_21:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 8,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM65=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM66=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM66
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM67=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM67
LTDIE_17:

	.byte 5
	.asciz "System_Collections_Hashtable"

	.byte 52,16
LDIFF_SYM68=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM69=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,8,6
	.asciz "count"

LDIFF_SYM70=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,28,6
	.asciz "occupancy"

LDIFF_SYM71=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,32,6
	.asciz "loadsize"

LDIFF_SYM72=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,36,6
	.asciz "loadFactor"

LDIFF_SYM73=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,35,40,6
	.asciz "version"

LDIFF_SYM74=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,44,6
	.asciz "isWriterInProgress"

LDIFF_SYM75=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,48,6
	.asciz "keys"

LDIFF_SYM76=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,12,6
	.asciz "values"

LDIFF_SYM77=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,16,6
	.asciz "_keycomparer"

LDIFF_SYM78=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,20,6
	.asciz "_syncRoot"

LDIFF_SYM79=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM79
	.byte 2,35,24,0,7
	.asciz "System_Collections_Hashtable"

LDIFF_SYM80=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM80
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM81=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM81
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM82=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM82
LTDIE_22:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

	.byte 8,16
LDIFF_SYM83=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM83
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextRemotingData"

LDIFF_SYM84=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM84
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM85=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM85
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM86=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM86
LTDIE_23:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

	.byte 8,16
LDIFF_SYM87=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM87
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_CallContextSecurityData"

LDIFF_SYM88=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM88
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM89=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM90=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM90
LTDIE_16:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

	.byte 28,16
LDIFF_SYM91=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM91
	.byte 2,35,0,6
	.asciz "m_Datastore"

LDIFF_SYM92=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM92
	.byte 2,35,8,6
	.asciz "m_RemotingData"

LDIFF_SYM93=LTDIE_22_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM93
	.byte 2,35,12,6
	.asciz "m_SecurityData"

LDIFF_SYM94=LTDIE_23_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,35,16,6
	.asciz "m_HostContext"

LDIFF_SYM95=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM95
	.byte 2,35,20,6
	.asciz "m_IsCorrelationMgr"

LDIFF_SYM96=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM96
	.byte 2,35,24,0,7
	.asciz "System_Runtime_Remoting_Messaging_LogicalCallContext"

LDIFF_SYM97=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM97
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM98=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM98
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM99=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM99
LTDIE_24:

	.byte 5
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

	.byte 8,16
LDIFF_SYM100=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,35,0,0,7
	.asciz "System_Runtime_Remoting_Messaging_IllogicalCallContext"

LDIFF_SYM101=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM101
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM102=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM102
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM103=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM103
LTDIE_25:

	.byte 8
	.asciz "_Flags"

	.byte 4
LDIFF_SYM104=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM104
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "IsNewCapture"

	.byte 1,9
	.asciz "IsFlowSuppressed"

	.byte 2,9
	.asciz "IsPreAllocatedDefault"

	.byte 4,0,7
	.asciz "_Flags"

LDIFF_SYM105=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM105
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM106=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM106
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM107=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM107
LTDIE_27:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM108=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM108
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM109=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM110=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_28:

	.byte 5
	.asciz "_KeyCollection"

	.byte 12,16
LDIFF_SYM111=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM112=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,8,0,7
	.asciz "_KeyCollection"

LDIFF_SYM113=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM113
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM114=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM114
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM115=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_29:

	.byte 5
	.asciz "_ValueCollection"

	.byte 12,16
LDIFF_SYM116=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM116
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM117=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM117
	.byte 2,35,8,0,7
	.asciz "_ValueCollection"

LDIFF_SYM118=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM118
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM119=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM119
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM120=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM120
LTDIE_26:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 48,16
LDIFF_SYM121=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM121
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM122=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,35,8,6
	.asciz "entries"

LDIFF_SYM123=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,35,12,6
	.asciz "count"

LDIFF_SYM124=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,35,32,6
	.asciz "version"

LDIFF_SYM125=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 2,35,36,6
	.asciz "freeList"

LDIFF_SYM126=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM126
	.byte 2,35,40,6
	.asciz "freeCount"

LDIFF_SYM127=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM127
	.byte 2,35,44,6
	.asciz "comparer"

LDIFF_SYM128=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM128
	.byte 2,35,16,6
	.asciz "keys"

LDIFF_SYM129=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,20,6
	.asciz "values"

LDIFF_SYM130=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,24,6
	.asciz "_syncRoot"

LDIFF_SYM131=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM132=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM132
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM133=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM133
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM134=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM134
LTDIE_30:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 24,16
LDIFF_SYM135=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM136=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,8,6
	.asciz "_size"

LDIFF_SYM137=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,16,6
	.asciz "_version"

LDIFF_SYM138=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,20,6
	.asciz "_syncRoot"

LDIFF_SYM139=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,12,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM140=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM140
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM141=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM142=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM142
LTDIE_14:

	.byte 5
	.asciz "System_Threading_ExecutionContext"

	.byte 36,16
LDIFF_SYM143=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM143
	.byte 2,35,0,6
	.asciz "_syncContext"

LDIFF_SYM144=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,8,6
	.asciz "_syncContextNoFlow"

LDIFF_SYM145=LTDIE_15_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 2,35,12,6
	.asciz "_logicalCallContext"

LDIFF_SYM146=LTDIE_16_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM146
	.byte 2,35,16,6
	.asciz "_illogicalCallContext"

LDIFF_SYM147=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM147
	.byte 2,35,20,6
	.asciz "_flags"

LDIFF_SYM148=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM148
	.byte 2,35,32,6
	.asciz "_localValues"

LDIFF_SYM149=LTDIE_26_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,35,24,6
	.asciz "_localChangeNotifications"

LDIFF_SYM150=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM150
	.byte 2,35,28,0,7
	.asciz "System_Threading_ExecutionContext"

LDIFF_SYM151=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM152=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM153=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM153
LTDIE_38:

	.byte 5
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 8,16
LDIFF_SYM154=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,35,0,0,7
	.asciz "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

LDIFF_SYM155=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM155
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM156=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM156
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM157=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM157
LTDIE_37:

	.byte 5
	.asciz "System_Runtime_InteropServices_SafeHandle"

	.byte 20,16
LDIFF_SYM158=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,35,0,6
	.asciz "handle"

LDIFF_SYM159=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM159
	.byte 2,35,8,6
	.asciz "_state"

LDIFF_SYM160=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM160
	.byte 2,35,12,6
	.asciz "_ownsHandle"

LDIFF_SYM161=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM161
	.byte 2,35,16,6
	.asciz "_fullyInitialized"

LDIFF_SYM162=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,17,0,7
	.asciz "System_Runtime_InteropServices_SafeHandle"

LDIFF_SYM163=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM163
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM164=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM164
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM165=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM165
LTDIE_36:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 20,16
LDIFF_SYM166=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

LDIFF_SYM167=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM167
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM168=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM168
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM169=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM169
LTDIE_35:

	.byte 5
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 20,16
LDIFF_SYM170=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,0,0,7
	.asciz "Microsoft_Win32_SafeHandles_SafeWaitHandle"

LDIFF_SYM171=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM171
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM172=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM172
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM173=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM173
LTDIE_34:

	.byte 5
	.asciz "System_Threading_WaitHandle"

	.byte 24,16
LDIFF_SYM174=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,35,0,6
	.asciz "waitHandle"

LDIFF_SYM175=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,12,6
	.asciz "safeWaitHandle"

LDIFF_SYM176=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,16,6
	.asciz "hasThreadAffinity"

LDIFF_SYM177=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,20,0,7
	.asciz "System_Threading_WaitHandle"

LDIFF_SYM178=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM178
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM179=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM179
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM180=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM180
LTDIE_33:

	.byte 5
	.asciz "System_Threading_EventWaitHandle"

	.byte 24,16
LDIFF_SYM181=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,0,0,7
	.asciz "System_Threading_EventWaitHandle"

LDIFF_SYM182=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM182
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM183=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM183
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM184=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM184
LTDIE_32:

	.byte 5
	.asciz "System_Threading_ManualResetEvent"

	.byte 24,16
LDIFF_SYM185=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 2,35,0,0,7
	.asciz "System_Threading_ManualResetEvent"

LDIFF_SYM186=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM186
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM187=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM187
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM188=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM188
LTDIE_31:

	.byte 5
	.asciz "System_Threading_ManualResetEventSlim"

	.byte 20,16
LDIFF_SYM189=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 2,35,0,6
	.asciz "m_lock"

LDIFF_SYM190=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM190
	.byte 2,35,8,6
	.asciz "m_eventObj"

LDIFF_SYM191=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM191
	.byte 2,35,12,6
	.asciz "m_combinedState"

LDIFF_SYM192=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 2,35,16,0,7
	.asciz "System_Threading_ManualResetEventSlim"

LDIFF_SYM193=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM193
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM194=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM194
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM195=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM195
LTDIE_40:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 24,16
LDIFF_SYM196=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM196
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM197=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM197
	.byte 2,35,8,6
	.asciz "_size"

LDIFF_SYM198=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM198
	.byte 2,35,16,6
	.asciz "_version"

LDIFF_SYM199=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,20,6
	.asciz "_syncRoot"

LDIFF_SYM200=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM200
	.byte 2,35,12,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM201=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM201
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM202=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM202
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM203=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM203
LTDIE_43:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 8,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM204=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM204
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM205=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM205
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM206=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM206
LTDIE_45:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM207=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM207
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM208=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM208
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM209=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_48:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM210=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM210
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM211=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM211
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM212=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM212
LTDIE_49:

	.byte 5
	.asciz "_KeyCollection"

	.byte 12,16
LDIFF_SYM213=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM214=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM214
	.byte 2,35,8,0,7
	.asciz "_KeyCollection"

LDIFF_SYM215=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM215
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM216=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM216
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM217=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM217
LTDIE_50:

	.byte 5
	.asciz "_ValueCollection"

	.byte 12,16
LDIFF_SYM218=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM218
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM219=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM219
	.byte 2,35,8,0,7
	.asciz "_ValueCollection"

LDIFF_SYM220=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM220
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM221=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM221
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM222=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM222
LTDIE_47:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 48,16
LDIFF_SYM223=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM224=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 2,35,8,6
	.asciz "entries"

LDIFF_SYM225=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM225
	.byte 2,35,12,6
	.asciz "count"

LDIFF_SYM226=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM226
	.byte 2,35,32,6
	.asciz "version"

LDIFF_SYM227=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM227
	.byte 2,35,36,6
	.asciz "freeList"

LDIFF_SYM228=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM228
	.byte 2,35,40,6
	.asciz "freeCount"

LDIFF_SYM229=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2,35,44,6
	.asciz "comparer"

LDIFF_SYM230=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 2,35,16,6
	.asciz "keys"

LDIFF_SYM231=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,35,20,6
	.asciz "values"

LDIFF_SYM232=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,35,24,6
	.asciz "_syncRoot"

LDIFF_SYM233=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM234=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM234
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM235=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM235
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM236=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM236
LTDIE_51:

	.byte 17
	.asciz "System_Runtime_Serialization_IFormatterConverter"

	.byte 8,7
	.asciz "System_Runtime_Serialization_IFormatterConverter"

LDIFF_SYM237=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM237
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM238=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM238
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM239=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM239
LTDIE_53:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 8,16
LDIFF_SYM240=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM241=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM241
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM242=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM242
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM243=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_52:

	.byte 5
	.asciz "System_Type"

	.byte 12,16
LDIFF_SYM244=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM244
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM245=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM245
	.byte 2,35,8,0,7
	.asciz "System_Type"

LDIFF_SYM246=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM246
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM247=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM247
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM248=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM248
LTDIE_46:

	.byte 5
	.asciz "System_Runtime_Serialization_SerializationInfo"

	.byte 48,16
LDIFF_SYM249=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 2,35,0,6
	.asciz "m_members"

LDIFF_SYM250=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 2,35,8,6
	.asciz "m_data"

LDIFF_SYM251=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,35,12,6
	.asciz "m_types"

LDIFF_SYM252=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM252
	.byte 2,35,16,6
	.asciz "m_nameToIndex"

LDIFF_SYM253=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM253
	.byte 2,35,20,6
	.asciz "m_currMember"

LDIFF_SYM254=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM254
	.byte 2,35,40,6
	.asciz "m_converter"

LDIFF_SYM255=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2,35,24,6
	.asciz "m_fullTypeName"

LDIFF_SYM256=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,35,28,6
	.asciz "m_assemName"

LDIFF_SYM257=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 2,35,32,6
	.asciz "objectType"

LDIFF_SYM258=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM258
	.byte 2,35,36,6
	.asciz "isFullTypeNameSetExplicit"

LDIFF_SYM259=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM259
	.byte 2,35,44,6
	.asciz "isAssemblyNameSetExplicit"

LDIFF_SYM260=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,35,45,6
	.asciz "requireSameTokenInPartialTrust"

LDIFF_SYM261=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 2,35,46,0,7
	.asciz "System_Runtime_Serialization_SerializationInfo"

LDIFF_SYM262=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM262
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM263=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM263
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM264=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM264
LTDIE_55:

	.byte 5
	.asciz "System_Reflection_TypeInfo"

	.byte 12,16
LDIFF_SYM265=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM265
	.byte 2,35,0,0,7
	.asciz "System_Reflection_TypeInfo"

LDIFF_SYM266=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM266
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM267=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM267
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM268=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM268
LTDIE_60:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 8,16
LDIFF_SYM269=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM270=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM270
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM271=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM271
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM272=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM272
LTDIE_59:

	.byte 5
	.asciz "System_Reflection_ConstructorInfo"

	.byte 8,16
LDIFF_SYM273=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,35,0,0,7
	.asciz "System_Reflection_ConstructorInfo"

LDIFF_SYM274=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM274
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM275=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM275
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM276=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM276
LTDIE_58:

	.byte 5
	.asciz "System_Reflection_RuntimeConstructorInfo"

	.byte 8,16
LDIFF_SYM277=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM277
	.byte 2,35,0,0,7
	.asciz "System_Reflection_RuntimeConstructorInfo"

LDIFF_SYM278=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM278
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM279=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM279
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM280=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM280
LTDIE_57:

	.byte 5
	.asciz "System_Reflection_MonoCMethod"

	.byte 20,16
LDIFF_SYM281=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM281
	.byte 2,35,0,6
	.asciz "mhandle"

LDIFF_SYM282=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM282
	.byte 2,35,8,6
	.asciz "name"

LDIFF_SYM283=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,35,12,6
	.asciz "reftype"

LDIFF_SYM284=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,35,16,0,7
	.asciz "System_Reflection_MonoCMethod"

LDIFF_SYM285=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM285
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM286=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM286
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM287=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM287
LTDIE_56:

	.byte 5
	.asciz "System_MonoTypeInfo"

	.byte 16,16
LDIFF_SYM288=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM288
	.byte 2,35,0,6
	.asciz "full_name"

LDIFF_SYM289=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM289
	.byte 2,35,8,6
	.asciz "default_ctor"

LDIFF_SYM290=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM290
	.byte 2,35,12,0,7
	.asciz "System_MonoTypeInfo"

LDIFF_SYM291=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM291
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM292=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM292
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM293=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM293
LTDIE_54:

	.byte 5
	.asciz "System_RuntimeType"

	.byte 24,16
LDIFF_SYM294=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 2,35,0,6
	.asciz "type_info"

LDIFF_SYM295=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 2,35,12,6
	.asciz "GenericCache"

LDIFF_SYM296=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 2,35,16,6
	.asciz "m_serializationCtor"

LDIFF_SYM297=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 2,35,20,0,7
	.asciz "System_RuntimeType"

LDIFF_SYM298=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM298
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM299=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM299
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM300=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM300
LTDIE_64:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 8,16
LDIFF_SYM301=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM302=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM302
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM303=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM303
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM304=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM304
LTDIE_65:

	.byte 5
	.asciz "System_DelegateData"

	.byte 20,16
LDIFF_SYM305=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM305
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM306=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM306
	.byte 2,35,8,6
	.asciz "method_name"

LDIFF_SYM307=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM307
	.byte 2,35,12,6
	.asciz "curried_first_arg"

LDIFF_SYM308=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM308
	.byte 2,35,16,0,7
	.asciz "System_DelegateData"

LDIFF_SYM309=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM309
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM310=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM310
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM311=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM311
LTDIE_63:

	.byte 5
	.asciz "System_Delegate"

	.byte 52,16
LDIFF_SYM312=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM312
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM313=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM313
	.byte 2,35,8,6
	.asciz "invoke_impl"

LDIFF_SYM314=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM314
	.byte 2,35,12,6
	.asciz "m_target"

LDIFF_SYM315=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM315
	.byte 2,35,16,6
	.asciz "method"

LDIFF_SYM316=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM316
	.byte 2,35,20,6
	.asciz "delegate_trampoline"

LDIFF_SYM317=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM317
	.byte 2,35,24,6
	.asciz "extra_arg"

LDIFF_SYM318=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM318
	.byte 2,35,28,6
	.asciz "method_code"

LDIFF_SYM319=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM319
	.byte 2,35,32,6
	.asciz "method_info"

LDIFF_SYM320=LTDIE_64_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 2,35,36,6
	.asciz "original_method_info"

LDIFF_SYM321=LTDIE_64_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,35,40,6
	.asciz "data"

LDIFF_SYM322=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,35,44,6
	.asciz "method_is_virtual"

LDIFF_SYM323=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 2,35,48,0,7
	.asciz "System_Delegate"

LDIFF_SYM324=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM324
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM325=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM325
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM326=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM326
LTDIE_62:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 56,16
LDIFF_SYM327=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM328=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,35,52,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM329=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM329
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM330=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM330
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM331=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM331
LTDIE_61:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 56,16
LDIFF_SYM332=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM332
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM333=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM333
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM334=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM334
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM335=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM335
LTDIE_44:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 28,16
LDIFF_SYM336=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM336
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM337=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM337
	.byte 2,35,8,6
	.asciz "m_savedSerializationInfo"

LDIFF_SYM338=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM338
	.byte 2,35,12,6
	.asciz "m_realObject"

LDIFF_SYM339=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM339
	.byte 2,35,16,6
	.asciz "m_realType"

LDIFF_SYM340=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 2,35,20,6
	.asciz "SerializeObjectState"

LDIFF_SYM341=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM341
	.byte 2,35,24,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM342=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM342
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM343=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM343
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM344=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM344
LTDIE_42:

	.byte 5
	.asciz "System_Exception"

	.byte 68,16
LDIFF_SYM345=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM346=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,35,8,6
	.asciz "_message"

LDIFF_SYM347=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM347
	.byte 2,35,12,6
	.asciz "_data"

LDIFF_SYM348=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM348
	.byte 2,35,16,6
	.asciz "_innerException"

LDIFF_SYM349=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM349
	.byte 2,35,20,6
	.asciz "_helpURL"

LDIFF_SYM350=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM350
	.byte 2,35,24,6
	.asciz "_stackTrace"

LDIFF_SYM351=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2,35,28,6
	.asciz "_stackTraceString"

LDIFF_SYM352=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,35,32,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM353=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,35,36,6
	.asciz "_remoteStackIndex"

LDIFF_SYM354=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 2,35,40,6
	.asciz "_dynamicMethods"

LDIFF_SYM355=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,35,44,6
	.asciz "_HResult"

LDIFF_SYM356=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2,35,48,6
	.asciz "_source"

LDIFF_SYM357=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,35,52,6
	.asciz "_safeSerializationManager"

LDIFF_SYM358=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM358
	.byte 2,35,56,6
	.asciz "captured_traces"

LDIFF_SYM359=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM359
	.byte 2,35,60,6
	.asciz "native_trace_ips"

LDIFF_SYM360=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM360
	.byte 2,35,64,0,7
	.asciz "System_Exception"

LDIFF_SYM361=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM361
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM362=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM362
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM363=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM363
LTDIE_41:

	.byte 5
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

	.byte 16,16
LDIFF_SYM364=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM364
	.byte 2,35,0,6
	.asciz "m_Exception"

LDIFF_SYM365=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM365
	.byte 2,35,8,6
	.asciz "m_stackTrace"

LDIFF_SYM366=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM366
	.byte 2,35,12,0,7
	.asciz "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

LDIFF_SYM367=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM367
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM368=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM368
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM369=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM369
LTDIE_39:

	.byte 5
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

	.byte 24,16
LDIFF_SYM370=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 2,35,0,6
	.asciz "m_task"

LDIFF_SYM371=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 2,35,8,6
	.asciz "m_faultExceptions"

LDIFF_SYM372=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM372
	.byte 2,35,12,6
	.asciz "m_cancellationException"

LDIFF_SYM373=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,35,16,6
	.asciz "m_isHandled"

LDIFF_SYM374=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 2,35,20,0,7
	.asciz "System_Threading_Tasks_TaskExceptionHolder"

LDIFF_SYM375=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM375
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM376=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM376
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM377=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM377
LTDIE_66:

	.byte 5
	.asciz "System_Threading_Tasks_Shared`1"

	.byte 20,16
LDIFF_SYM378=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 2,35,0,6
	.asciz "Value"

LDIFF_SYM379=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 2,35,8,0,7
	.asciz "System_Threading_Tasks_Shared`1"

LDIFF_SYM380=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM380
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM381=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM381
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM382=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM382
LTDIE_67:

	.byte 5
	.asciz "System_Collections_Generic_List`1"

	.byte 24,16
LDIFF_SYM383=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM383
	.byte 2,35,0,6
	.asciz "_items"

LDIFF_SYM384=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM384
	.byte 2,35,8,6
	.asciz "_size"

LDIFF_SYM385=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 2,35,16,6
	.asciz "_version"

LDIFF_SYM386=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM386
	.byte 2,35,20,6
	.asciz "_syncRoot"

LDIFF_SYM387=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM387
	.byte 2,35,12,0,7
	.asciz "System_Collections_Generic_List`1"

LDIFF_SYM388=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM388
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM389=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM389
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM390=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM390
LTDIE_13:

	.byte 5
	.asciz "_ContingentProperties"

	.byte 40,16
LDIFF_SYM391=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 2,35,0,6
	.asciz "m_capturedContext"

LDIFF_SYM392=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM392
	.byte 2,35,8,6
	.asciz "m_completionEvent"

LDIFF_SYM393=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM393
	.byte 2,35,12,6
	.asciz "m_exceptionsHolder"

LDIFF_SYM394=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,35,16,6
	.asciz "m_cancellationToken"

LDIFF_SYM395=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 2,35,20,6
	.asciz "m_cancellationRegistration"

LDIFF_SYM396=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 2,35,24,6
	.asciz "m_internalCancellationRequested"

LDIFF_SYM397=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM397
	.byte 2,35,32,6
	.asciz "m_completionCountdown"

LDIFF_SYM398=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 2,35,36,6
	.asciz "m_exceptionalChildren"

LDIFF_SYM399=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 2,35,28,0,7
	.asciz "_ContingentProperties"

LDIFF_SYM400=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM400
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM401=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM401
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM402=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM402
LTDIE_9:

	.byte 5
	.asciz "System_Threading_Tasks_Task"

	.byte 40,16
LDIFF_SYM403=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 2,35,0,6
	.asciz "m_taskId"

LDIFF_SYM404=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 2,35,32,6
	.asciz "m_action"

LDIFF_SYM405=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM405
	.byte 2,35,8,6
	.asciz "m_stateObject"

LDIFF_SYM406=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM406
	.byte 2,35,12,6
	.asciz "m_taskScheduler"

LDIFF_SYM407=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2,35,16,6
	.asciz "m_parent"

LDIFF_SYM408=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 2,35,20,6
	.asciz "m_stateFlags"

LDIFF_SYM409=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 2,35,36,6
	.asciz "m_continuationObject"

LDIFF_SYM410=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM410
	.byte 2,35,24,6
	.asciz "m_contingentProperties"

LDIFF_SYM411=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM411
	.byte 2,35,28,0,7
	.asciz "System_Threading_Tasks_Task"

LDIFF_SYM412=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM412
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM413=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM413
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM414=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM414
LTDIE_8:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 44,16
LDIFF_SYM415=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM416=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM416
	.byte 2,35,40,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM417=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM417
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM418=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM419=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM419
LTDIE_68:

	.byte 5
	.asciz "System_AsyncCallback"

	.byte 56,16
LDIFF_SYM420=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,35,0,0,7
	.asciz "System_AsyncCallback"

LDIFF_SYM421=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM421
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM422=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM422
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM423=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM423
LTDIE_7:

	.byte 5
	.asciz "_ReadWriteTask"

	.byte 72,16
LDIFF_SYM424=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM424
	.byte 2,35,0,6
	.asciz "_isRead"

LDIFF_SYM425=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 2,35,60,6
	.asciz "_stream"

LDIFF_SYM426=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 2,35,44,6
	.asciz "_buffer"

LDIFF_SYM427=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 2,35,48,6
	.asciz "_offset"

LDIFF_SYM428=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM428
	.byte 2,35,64,6
	.asciz "_count"

LDIFF_SYM429=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM429
	.byte 2,35,68,6
	.asciz "_callback"

LDIFF_SYM430=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM430
	.byte 2,35,52,6
	.asciz "_context"

LDIFF_SYM431=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM431
	.byte 2,35,56,0,7
	.asciz "_ReadWriteTask"

LDIFF_SYM432=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM432
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM433=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM433
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM434=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM434
LTDIE_71:

	.byte 5
	.asciz "System_Threading_Tasks_Task`1"

	.byte 44,16
LDIFF_SYM435=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM435
	.byte 2,35,0,6
	.asciz "m_result"

LDIFF_SYM436=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM436
	.byte 2,35,40,0,7
	.asciz "System_Threading_Tasks_Task`1"

LDIFF_SYM437=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM437
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM438=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM438
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM439=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM439
LTDIE_70:

	.byte 5
	.asciz "_TaskNode"

	.byte 52,16
LDIFF_SYM440=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 2,35,0,6
	.asciz "Prev"

LDIFF_SYM441=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM441
	.byte 2,35,44,6
	.asciz "Next"

LDIFF_SYM442=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 2,35,48,0,7
	.asciz "_TaskNode"

LDIFF_SYM443=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM443
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM444=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM444
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM445=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM445
LTDIE_69:

	.byte 5
	.asciz "System_Threading_SemaphoreSlim"

	.byte 36,16
LDIFF_SYM446=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM446
	.byte 2,35,0,6
	.asciz "m_currentCount"

LDIFF_SYM447=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,35,24,6
	.asciz "m_maxCount"

LDIFF_SYM448=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM448
	.byte 2,35,28,6
	.asciz "m_waitCount"

LDIFF_SYM449=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM449
	.byte 2,35,32,6
	.asciz "m_lockObj"

LDIFF_SYM450=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM450
	.byte 2,35,8,6
	.asciz "m_waitHandle"

LDIFF_SYM451=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM451
	.byte 2,35,12,6
	.asciz "m_asyncHead"

LDIFF_SYM452=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM452
	.byte 2,35,16,6
	.asciz "m_asyncTail"

LDIFF_SYM453=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM453
	.byte 2,35,20,0,7
	.asciz "System_Threading_SemaphoreSlim"

LDIFF_SYM454=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM454
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM455=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM455
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM456=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM456
LTDIE_5:

	.byte 5
	.asciz "System_IO_Stream"

	.byte 20,16
LDIFF_SYM457=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM457
	.byte 2,35,0,6
	.asciz "_activeReadWriteTask"

LDIFF_SYM458=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 2,35,12,6
	.asciz "_asyncActiveSemaphore"

LDIFF_SYM459=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 2,35,16,0,7
	.asciz "System_IO_Stream"

LDIFF_SYM460=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM460
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM461=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM461
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM462=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM462
LTDIE_72:

	.byte 5
	.asciz "Foundation_NSData"

	.byte 20,16
LDIFF_SYM463=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM463
	.byte 2,35,0,0,7
	.asciz "Foundation_NSData"

LDIFF_SYM464=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM464
LTDIE_72_POINTER:

	.byte 13
LDIFF_SYM465=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM465
LTDIE_72_REFERENCE:

	.byte 14
LDIFF_SYM466=LTDIE_72 - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 2
	.asciz "WebP.Touch.WebPCodec:Decode"
	.asciz "WebP_Touch_WebPCodec_Decode_System_IO_Stream"

	.byte 0,0
	.long WebP_Touch_WebPCodec_Decode_System_IO_Stream
	.long Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM467=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM467
	.byte 2,125,8,3
	.asciz "stream"

LDIFF_SYM468=LTDIE_5_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM468
	.byte 2,125,12,11
	.asciz "V_0"

LDIFF_SYM469=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM469
	.byte 1,85,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM470=Lfde1_end - Lfde1_start
	.long LDIFF_SYM470
Lfde1_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPCodec_Decode_System_IO_Stream

LDIFF_SYM471=Lme_1 - WebP_Touch_WebPCodec_Decode_System_IO_Stream
	.long LDIFF_SYM471
	.byte 68,14,8,135,2,72,14,16,133,4,136,3,142,1,68,14,48,3,8,1,10,68,14,16,68,8,5,8,8,14,8,68
	.byte 11
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "ApiDefinition.Messaging:.cctor"
	.asciz "ApiDefinition_Messaging__cctor"

	.byte 0,0
	.long ApiDefinition_Messaging__cctor
	.long Lme_4

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM472=Lfde2_end - Lfde2_start
	.long LDIFF_SYM472
Lfde2_start:

	.long 0
	.align 2
	.long ApiDefinition_Messaging__cctor

LDIFF_SYM473=Lme_4 - ApiDefinition_Messaging__cctor
	.long LDIFF_SYM473
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,200,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_74:

	.byte 5
	.asciz "ObjCRuntime_BaseWrapper"

	.byte 12,16
LDIFF_SYM474=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM474
	.byte 2,35,0,6
	.asciz "<Handle>k__BackingField"

LDIFF_SYM475=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM475
	.byte 2,35,8,0,7
	.asciz "ObjCRuntime_BaseWrapper"

LDIFF_SYM476=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM476
LTDIE_74_POINTER:

	.byte 13
LDIFF_SYM477=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM477
LTDIE_74_REFERENCE:

	.byte 14
LDIFF_SYM478=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM478
LTDIE_73:

	.byte 5
	.asciz "WebP_Touch_WebPDecoderWrapper"

	.byte 12,16
LDIFF_SYM479=LTDIE_74 - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,0,0,7
	.asciz "WebP_Touch_WebPDecoderWrapper"

LDIFF_SYM480=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM480
LTDIE_73_POINTER:

	.byte 13
LDIFF_SYM481=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM481
LTDIE_73_REFERENCE:

	.byte 14
LDIFF_SYM482=LTDIE_73 - Ldebug_info_start
	.long LDIFF_SYM482
	.byte 2
	.asciz "WebP.Touch.WebPDecoderWrapper:.ctor"
	.asciz "WebP_Touch_WebPDecoderWrapper__ctor_intptr"

	.byte 0,0
	.long WebP_Touch_WebPDecoderWrapper__ctor_intptr
	.long Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM483=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2,125,8,3
	.asciz "handle"

LDIFF_SYM484=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM484
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM485=Lfde3_end - Lfde3_start
	.long LDIFF_SYM485
Lfde3_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPDecoderWrapper__ctor_intptr

LDIFF_SYM486=Lme_5 - WebP_Touch_WebPDecoderWrapper__ctor_intptr
	.long LDIFF_SYM486
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,168,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "WebP.Touch.WebPDecoderWrapper:.ctor"
	.asciz "WebP_Touch_WebPDecoderWrapper__ctor_intptr_bool"

	.byte 0,0
	.long WebP_Touch_WebPDecoderWrapper__ctor_intptr_bool
	.long Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM487=LTDIE_73_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM487
	.byte 2,125,8,3
	.asciz "handle"

LDIFF_SYM488=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM488
	.byte 2,125,12,3
	.asciz "owns"

LDIFF_SYM489=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM489
	.byte 2,125,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM490=Lfde4_end - Lfde4_start
	.long LDIFF_SYM490
Lfde4_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPDecoderWrapper__ctor_intptr_bool

LDIFF_SYM491=Lme_6 - WebP_Touch_WebPDecoderWrapper__ctor_intptr_bool
	.long LDIFF_SYM491
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,40,2,168,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "WebP.Touch.WebPDecoder:.ctor"
	.asciz "WebP_Touch_WebPDecoder__ctor"

	.byte 0,0
	.long WebP_Touch_WebPDecoder__ctor
	.long Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM492=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM492
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM493=Lfde5_end - Lfde5_start
	.long LDIFF_SYM493
Lfde5_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPDecoder__ctor

LDIFF_SYM494=Lme_7 - WebP_Touch_WebPDecoder__ctor
	.long LDIFF_SYM494
	.byte 68,14,8,135,2,72,14,16,136,4,138,3,142,1,68,14,48,3,24,3,10,68,14,16,68,8,8,8,10,14,8,68
	.byte 11
	.align 2
Lfde5_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_75:

	.byte 5
	.asciz "Foundation_NSObjectFlag"

	.byte 8,16
LDIFF_SYM495=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM495
	.byte 2,35,0,0,7
	.asciz "Foundation_NSObjectFlag"

LDIFF_SYM496=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM496
LTDIE_75_POINTER:

	.byte 13
LDIFF_SYM497=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM497
LTDIE_75_REFERENCE:

	.byte 14
LDIFF_SYM498=LTDIE_75 - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 2
	.asciz "WebP.Touch.WebPDecoder:.ctor"
	.asciz "WebP_Touch_WebPDecoder__ctor_Foundation_NSObjectFlag"

	.byte 0,0
	.long WebP_Touch_WebPDecoder__ctor_Foundation_NSObjectFlag
	.long Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM499=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM499
	.byte 1,86,3
	.asciz "t"

LDIFF_SYM500=LTDIE_75_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM500
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM501=Lfde6_end - Lfde6_start
	.long LDIFF_SYM501
Lfde6_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPDecoder__ctor_Foundation_NSObjectFlag

LDIFF_SYM502=Lme_8 - WebP_Touch_WebPDecoder__ctor_Foundation_NSObjectFlag
	.long LDIFF_SYM502
	.byte 68,14,8,135,2,72,14,16,134,4,136,3,142,1,68,14,48,3,100,1,10,68,14,16,68,8,6,8,8,14,8,68
	.byte 11
	.align 2
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "WebP.Touch.WebPDecoder:.ctor"
	.asciz "WebP_Touch_WebPDecoder__ctor_intptr"

	.byte 0,0
	.long WebP_Touch_WebPDecoder__ctor_intptr
	.long Lme_9

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM503=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM503
	.byte 1,86,3
	.asciz "handle"

LDIFF_SYM504=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM504
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM505=Lfde7_end - Lfde7_start
	.long LDIFF_SYM505
Lfde7_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPDecoder__ctor_intptr

LDIFF_SYM506=Lme_9 - WebP_Touch_WebPDecoder__ctor_intptr
	.long LDIFF_SYM506
	.byte 68,14,8,135,2,72,14,16,134,4,136,3,142,1,68,14,48,3,100,1,10,68,14,16,68,8,6,8,8,14,8,68
	.byte 11
	.align 2
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "WebP.Touch.WebPDecoder:get_ClassHandle"
	.asciz "WebP_Touch_WebPDecoder_get_ClassHandle"

	.byte 0,0
	.long WebP_Touch_WebPDecoder_get_ClassHandle
	.long Lme_a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM507=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM508=Lfde8_end - Lfde8_start
	.long LDIFF_SYM508
Lfde8_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPDecoder_get_ClassHandle

LDIFF_SYM509=Lme_a - WebP_Touch_WebPDecoder_get_ClassHandle
	.long LDIFF_SYM509
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,40,2,160,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde8_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_76:

	.byte 5
	.asciz "UIKit_UIImage"

	.byte 20,16
LDIFF_SYM510=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM510
	.byte 2,35,0,0,7
	.asciz "UIKit_UIImage"

LDIFF_SYM511=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM511
LTDIE_76_POINTER:

	.byte 13
LDIFF_SYM512=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM512
LTDIE_76_REFERENCE:

	.byte 14
LDIFF_SYM513=LTDIE_76 - Ldebug_info_start
	.long LDIFF_SYM513
	.byte 2
	.asciz "WebP.Touch.WebPDecoder:ImageWithWebP"
	.asciz "WebP_Touch_WebPDecoder_ImageWithWebP_string"

	.byte 0,0
	.long WebP_Touch_WebPDecoder_ImageWithWebP_string
	.long Lme_b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM514=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM514
	.byte 2,125,8,3
	.asciz "filePath"

LDIFF_SYM515=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM515
	.byte 2,125,12,11
	.asciz "V_0"

LDIFF_SYM516=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM516
	.byte 1,85,11
	.asciz "V_1"

LDIFF_SYM517=LTDIE_76_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM517
	.byte 1,84,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM518=Lfde9_end - Lfde9_start
	.long LDIFF_SYM518
Lfde9_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPDecoder_ImageWithWebP_string

LDIFF_SYM519=Lme_b - WebP_Touch_WebPDecoder_ImageWithWebP_string
	.long LDIFF_SYM519
	.byte 68,14,8,135,2,72,14,20,132,5,133,4,136,3,142,1,68,14,64,3,36,3,10,68,14,20,68,8,4,8,5,8
	.byte 8,14,8,68,11
	.align 2
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "WebP.Touch.WebPDecoder:ImageWithWebPData"
	.asciz "WebP_Touch_WebPDecoder_ImageWithWebPData_Foundation_NSData"

	.byte 0,0
	.long WebP_Touch_WebPDecoder_ImageWithWebPData_Foundation_NSData
	.long Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM520=LTDIE_2_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM520
	.byte 2,125,8,3
	.asciz "imgData"

LDIFF_SYM521=LTDIE_72_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM521
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM522=Lfde10_end - Lfde10_start
	.long LDIFF_SYM522
Lfde10_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPDecoder_ImageWithWebPData_Foundation_NSData

LDIFF_SYM523=Lme_c - WebP_Touch_WebPDecoder_ImageWithWebPData_Foundation_NSData
	.long LDIFF_SYM523
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,56,3,0,2,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "WebP.Touch.WebPDecoder:.cctor"
	.asciz "WebP_Touch_WebPDecoder__cctor"

	.byte 0,0
	.long WebP_Touch_WebPDecoder__cctor
	.long Lme_d

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM524=Lfde11_end - Lfde11_start
	.long LDIFF_SYM524
Lfde11_start:

	.long 0
	.align 2
	.long WebP_Touch_WebPDecoder__cctor

LDIFF_SYM525=Lme_d - WebP_Touch_WebPDecoder__cctor
	.long LDIFF_SYM525
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,188,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde11_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_managed-to-native)_ApiDefinition.Messaging:IntPtr_objc_msgSend"
	.asciz "wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr"

	.byte 0,0
	.long wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr
	.long Lme_f

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM526=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM526
	.byte 2,125,20,3
	.asciz "param1"

LDIFF_SYM527=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM527
	.byte 2,125,24,11
	.asciz "V_0"

LDIFF_SYM528=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM528
	.byte 2,125,8,11
	.asciz "V_1"

LDIFF_SYM529=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM529
	.byte 2,125,12,11
	.asciz "V_2"

LDIFF_SYM530=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM530
	.byte 2,125,16,11
	.asciz "V_3"

LDIFF_SYM531=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM531
	.byte 1,85,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM532=Lfde12_end - Lfde12_start
	.long LDIFF_SYM532
Lfde12_start:

	.long 0
	.align 2
	.long wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr

LDIFF_SYM533=Lme_f - wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_intptr_intptr
	.long LDIFF_SYM533
	.byte 68,14,8,135,2,76,14,48,132,12,133,11,134,10,136,8,137,7,138,6,139,5,140,4,142,3,68,14,248,1,3,156
	.byte 1,10,84,12,13,48,68,8,4,8,5,8,6,8,7,8,8,8,9,8,10,8,11,8,12,14,12,68,14,8,68,11
	.align 2
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_managed-to-native)_ApiDefinition.Messaging:IntPtr_objc_msgSend_IntPtr"
	.asciz "wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr"

	.byte 0,0
	.long wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr
	.long Lme_10

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM534=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM534
	.byte 2,125,24,3
	.asciz "param1"

LDIFF_SYM535=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,125,28,3
	.asciz "param2"

LDIFF_SYM536=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM536
	.byte 2,125,32,11
	.asciz "V_0"

LDIFF_SYM537=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM537
	.byte 2,125,8,11
	.asciz "V_1"

LDIFF_SYM538=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 2,125,12,11
	.asciz "V_2"

LDIFF_SYM539=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM539
	.byte 2,125,16,11
	.asciz "V_3"

LDIFF_SYM540=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM540
	.byte 1,84,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM541=Lfde13_end - Lfde13_start
	.long LDIFF_SYM541
Lfde13_start:

	.long 0
	.align 2
	.long wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr

LDIFF_SYM542=Lme_10 - wrapper_managed_to_native_ApiDefinition_Messaging_IntPtr_objc_msgSend_IntPtr_intptr_intptr_intptr
	.long LDIFF_SYM542
	.byte 68,14,8,135,2,76,14,48,132,12,133,11,134,10,136,8,137,7,138,6,139,5,140,4,142,3,68,14,128,2,3,160
	.byte 1,10,84,12,13,48,68,8,4,8,5,8,6,8,7,8,8,8,9,8,10,8,11,8,12,14,12,68,14,8,68,11
	.align 2
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
