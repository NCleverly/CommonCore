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
	.asciz "Mono AOT Compiler 4.8.0 (tarball Tue Mar 28 13:52:04 EDT 2017)"
	.asciz "System.Runtime.InteropServices.RuntimeInformation.dll"
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
ut_0:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform__ctor_string

ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_0
	.long LDIFF_SYM3
.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform__ctor_string
System_Runtime_InteropServices_OSPlatform__ctor_string:
.file 1 "/Library/Frameworks/Xamarin.iOS.framework/Versions/10.8.0.175/src/mono/mcs/class/System.Runtime.InteropServices.RuntimeInformation/System.Runtime.InteropServices/OSPlatform.cs"
.loc 1 45 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,4,223,77,226,0,0,141,229,1,160,160,225,0,15,90,227,8,0,0,10
.loc 1 46 0

	.byte 8,0,154,229,0,15,80,227,16,0,0,10
.loc 1 48 0

	.byte 0,0,157,229,0,160,128,229
bl _p_1

	.byte 4,223,141,226,0,5,189,232,128,128,189,232
.loc 1 45 0

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . -12
	.byte 0,0,159,231,64,19,160,227
bl _p_2

	.byte 0,16,160,225,96,0,0,227,0,2,64,227
bl _mono_create_corlib_exception_1
bl _p_3
.loc 1 46 0

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . -12
	.byte 0,0,159,231,92,17,160,227
bl _p_2

	.byte 8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . -12
	.byte 0,0,159,231,64,19,160,227
bl _p_2

	.byte 0,32,160,225,8,16,157,229,95,0,0,227,0,2,64,227
bl _mono_create_corlib_exception_2
bl _p_3

Lme_0:
.text
ut_1:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform_get_Linux

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform_get_Linux
System_Runtime_InteropServices_OSPlatform_get_Linux:
.loc 1 37 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 48
	.byte 0,0,159,231,0,0,144,229,4,0,141,229,0,16,157,229,1,0,160,225,4,32,157,229,8,32,141,229,0,32,129,229
bl _p_1

	.byte 8,0,157,229,5,223,141,226,0,1,189,232,128,128,189,232

Lme_1:
.text
ut_2:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform_get_OSX

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform_get_OSX
System_Runtime_InteropServices_OSPlatform_get_OSX:
.loc 1 39 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 52
	.byte 0,0,159,231,0,0,144,229,4,0,141,229,0,16,157,229,1,0,160,225,4,32,157,229,8,32,141,229,0,32,129,229
bl _p_1

	.byte 8,0,157,229,5,223,141,226,0,1,189,232,128,128,189,232

Lme_2:
.text
ut_3:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform_get_Windows

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform_get_Windows
System_Runtime_InteropServices_OSPlatform_get_Windows:
.loc 1 41 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 56
	.byte 0,0,159,231,0,0,144,229,4,0,141,229,0,16,157,229,1,0,160,225,4,32,157,229,8,32,141,229,0,32,129,229
bl _p_1

	.byte 8,0,157,229,5,223,141,226,0,1,189,232,128,128,189,232

Lme_3:
.text
ut_4:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform
System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform:
.loc 1 58 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,9,45,233,2,223,77,226,13,176,160,225,0,0,139,229,4,16,139,229,4,16,155,229
	.byte 0,0,155,229
bl _p_4

	.byte 255,0,0,226,2,223,139,226,0,9,189,232,128,128,189,232

Lme_4:
.text
ut_5:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform_Equals_string

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform_Equals_string
System_Runtime_InteropServices_OSPlatform_Equals_string:
.loc 1 63 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,141,229,4,16,141,229,0,0,157,229,0,0,144,229
	.byte 4,16,157,229,1,47,160,227
bl _p_5

	.byte 255,0,0,226,3,223,141,226,0,1,189,232,128,128,189,232

Lme_5:
.text
ut_6:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform_Equals_object

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform_Equals_object
System_Runtime_InteropServices_OSPlatform_Equals_object:
.loc 1 68 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,32,5,45,233,5,223,77,226,8,0,141,229,1,160,160,225,10,80,160,225,0,15,90,227
	.byte 10,0,0,10,0,0,154,229,0,0,144,229,8,0,144,229,8,0,144,229,0,16,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 60
	.byte 1,16,159,231,1,0,80,225,0,0,0,10,0,95,160,227,0,15,85,227,19,0,0,10,0,0,154,229,22,16,208,229
	.byte 0,15,81,227,20,0,0,27,0,0,144,229,0,0,144,229,0,16,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 60
	.byte 1,16,159,231,1,0,80,225,12,0,0,27,2,15,138,226,0,0,144,229,4,0,141,229,8,0,157,229,4,16,157,229
bl _p_6

	.byte 255,80,0,226,0,0,0,234,0,95,160,227,5,0,160,225,5,223,141,226,32,5,189,232,128,128,189,232,14,16,160,225
	.byte 0,0,159,229
bl _p_7

	.byte 118,1,0,0

Lme_6:
.text
ut_7:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform_GetHashCode

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform_GetHashCode
System_Runtime_InteropServices_OSPlatform_GetHashCode:
.loc 1 73 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,0,160,160,225,0,0,154,229,0,15,80,227,1,0,0,26,0,175,160,227
	.byte 5,0,0,234,0,16,154,229,1,0,160,225,0,16,145,229,15,224,160,225,40,240,145,229,0,160,160,225,10,0,160,225
	.byte 0,223,141,226,0,5,189,232,128,128,189,232

Lme_7:
.text
ut_8:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform_ToString

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform_ToString
System_Runtime_InteropServices_OSPlatform_ToString:
.loc 1 78 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,0,160,160,225,0,0,154,229,0,160,160,225,0,15,80,227,4,0,0,26
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 64
	.byte 0,0,159,231,0,160,144,229,10,0,160,225,0,223,141,226,0,5,189,232,128,128,189,232

Lme_8:
.text
ut_9:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform
System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform:
.loc 1 83 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,9,45,233,4,223,77,226,13,176,160,225,4,0,139,229,8,16,139,229,1,15,139,226
	.byte 8,16,155,229
bl _p_6

	.byte 255,0,0,226,4,223,139,226,0,9,189,232,128,128,189,232

Lme_9:
.text
ut_10:

	.byte 8,0,128,226
	b System_Runtime_InteropServices_OSPlatform__cctor

.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_OSPlatform__cctor
System_Runtime_InteropServices_OSPlatform__cctor:
.loc 1 37 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,11,223,77,226,0,16,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 68
	.byte 1,16,159,231,0,15,160,227,0,0,141,229,13,0,160,225
bl _p_8

	.byte 0,0,157,229,12,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 48
	.byte 0,0,159,231,12,16,157,229,32,16,141,229,0,16,128,229
bl _p_1

	.byte 32,0,157,229
.loc 1 39 0

	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 72
	.byte 1,16,159,231,0,15,160,227,4,0,141,229,1,15,141,226
bl _p_8

	.byte 4,0,157,229,16,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 52
	.byte 0,0,159,231,16,16,157,229,28,16,141,229,0,16,128,229
bl _p_1

	.byte 28,0,157,229
.loc 1 41 0

	.byte 0,16,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 76
	.byte 1,16,159,231,0,15,160,227,8,0,141,229,2,15,141,226
bl _p_8

	.byte 8,0,157,229,20,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 56
	.byte 0,0,159,231,20,16,157,229,24,16,141,229,0,16,128,229
bl _p_1

	.byte 24,0,157,229,11,223,141,226,0,1,189,232,128,128,189,232

Lme_a:
.text
	.align 2
	.no_dead_strip System_Runtime_InteropServices_RuntimeInformation_IsOSPlatform_System_Runtime_InteropServices_OSPlatform
System_Runtime_InteropServices_RuntimeInformation_IsOSPlatform_System_Runtime_InteropServices_OSPlatform:
.file 2 "/Library/Frameworks/Xamarin.iOS.framework/Versions/10.8.0.175/src/mono/mcs/class/System.Runtime.InteropServices.RuntimeInformation/System.Runtime.InteropServices/RuntimeInformation.cs"
.loc 2 53 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,9,45,233,10,223,77,226,13,176,160,225,36,0,139,229
bl _p_9

	.byte 0,16,160,225,0,224,209,229,16,0,144,229,128,3,80,227,18,0,0,26
.loc 2 54 0

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 80
	.byte 0,0,159,231,215,193,208,225,0,0,92,227,0,0,0,26
bl _p_10

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 56
	.byte 0,0,159,231,0,0,144,229,24,0,139,229,36,0,155,229,24,16,155,229
bl _p_11

	.byte 255,0,0,226,58,0,0,234
.loc 2 56 0
bl _p_9

	.byte 0,16,160,225,0,224,209,229,16,0,144,229,1,15,80,227,26,0,0,26,0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 84
	.byte 0,0,159,231
bl _p_12

	.byte 255,0,0,226,0,15,80,227,18,0,0,10
.loc 2 57 0

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 80
	.byte 0,0,159,231,215,193,208,225,0,0,92,227,0,0,0,26
bl _p_10

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 52
	.byte 0,0,159,231,0,0,144,229,28,0,139,229,36,0,155,229,28,16,155,229
bl _p_11

	.byte 255,0,0,226,25,0,0,234
.loc 2 59 0
bl _p_9

	.byte 0,16,160,225,0,224,209,229,16,0,144,229,1,15,80,227,18,0,0,26
.loc 2 60 0

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 80
	.byte 0,0,159,231,215,193,208,225,0,0,92,227,0,0,0,26
bl _p_10

	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 48
	.byte 0,0,159,231,0,0,144,229,32,0,139,229,36,0,155,229,32,16,155,229
bl _p_11

	.byte 255,0,0,226,0,0,0,234
.loc 2 62 0

	.byte 0,15,160,227,10,223,139,226,0,9,189,232,128,128,189,232

Lme_b:
.text
ut_14:

	.byte 8,0,128,226
	b wrapper_unknown_System_Runtime_InteropServices_OSPlatform_StructureToPtr_object_intptr_bool

.text
	.align 2
	.no_dead_strip wrapper_unknown_System_Runtime_InteropServices_OSPlatform_StructureToPtr_object_intptr_bool
wrapper_unknown_System_Runtime_InteropServices_OSPlatform_StructureToPtr_object_intptr_bool:
.file 3 "<unknown>"
.loc 3 1 0

	.byte 128,64,45,233,13,112,160,225,96,5,45,233,2,223,77,226,0,96,160,225,1,160,160,225,4,32,205,229,2,111,134,226
	.byte 10,80,160,225,0,96,141,229,4,0,221,229,0,15,80,227,1,0,0,10,0,0,149,229
bl _p_13

	.byte 0,0,150,229
bl _p_14

	.byte 0,0,133,229,0,0,157,229,1,111,128,226,1,95,138,226,2,223,141,226,96,5,189,232,128,128,189,232

Lme_e:
.text
ut_15:

	.byte 8,0,128,226
	b wrapper_unknown_System_Runtime_InteropServices_OSPlatform_PtrToStructure_intptr_object

.text
	.align 2
	.no_dead_strip wrapper_unknown_System_Runtime_InteropServices_OSPlatform_PtrToStructure_intptr_object
wrapper_unknown_System_Runtime_InteropServices_OSPlatform_PtrToStructure_intptr_object:
.loc 3 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,141,229,4,16,141,229,4,0,157,229,0,16,144,229
	.byte 22,32,209,229,0,15,82,227,21,0,0,27,0,16,145,229,0,16,145,229,0,32,159,229,0,0,0,234
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 60
	.byte 2,32,159,231,2,0,81,225,13,0,0,27,2,15,128,226,12,0,141,229,0,0,157,229,0,0,144,229
bl _p_15

	.byte 0,16,160,225,12,0,157,229,8,16,141,229,0,16,128,229
bl _p_1

	.byte 8,0,157,229,5,223,141,226,0,1,189,232,128,128,189,232,14,16,160,225,0,0,159,229
bl _p_7

	.byte 118,1,0,0

Lme_f:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl System_Runtime_InteropServices_OSPlatform__ctor_string
bl System_Runtime_InteropServices_OSPlatform_get_Linux
bl System_Runtime_InteropServices_OSPlatform_get_OSX
bl System_Runtime_InteropServices_OSPlatform_get_Windows
bl System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform
bl System_Runtime_InteropServices_OSPlatform_Equals_string
bl System_Runtime_InteropServices_OSPlatform_Equals_object
bl System_Runtime_InteropServices_OSPlatform_GetHashCode
bl System_Runtime_InteropServices_OSPlatform_ToString
bl System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform
bl System_Runtime_InteropServices_OSPlatform__cctor
bl System_Runtime_InteropServices_RuntimeInformation_IsOSPlatform_System_Runtime_InteropServices_OSPlatform
bl method_addresses
bl method_addresses
bl wrapper_unknown_System_Runtime_InteropServices_OSPlatform_StructureToPtr_object_intptr_bool
bl wrapper_unknown_System_Runtime_InteropServices_OSPlatform_PtrToStructure_intptr_object
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 0,1,2,3,4,5,6,7
	.long 8,9,10,14,15
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_0
bl ut_1
bl ut_2
bl ut_3
bl ut_4
bl ut_5
bl ut_6
bl ut_7
bl ut_8
bl ut_9
bl ut_10
bl ut_14
bl ut_15

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 3,12,13,0,35,12,13,0,68,14,8,135,2,72,14,16,136,4,138,3,142,1,68,14,32,2,40,10,68,14,16,68
	.byte 8,8,8,10,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,56,10,68,14
	.byte 12,68,8,8,14,8,68,11,39,12,13,0,68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,24,68,13,11
	.byte 88,10,68,13,13,14,16,68,8,8,8,11,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1
	.byte 68,14,24,2,32,10,68,14,12,68,8,8,14,8,68,11,39,12,13,0,68,14,8,135,2,72,14,20,133,5,136,4
	.byte 138,3,142,1,68,14,40,2,160,10,68,14,20,68,8,5,8,8,8,10,14,8,68,11,32,12,13,0,68,14,8,135
	.byte 2,72,14,16,136,4,138,3,142,1,2,52,10,68,14,16,68,8,8,8,10,14,8,68,11,32,12,13,0,68,14,8
	.byte 135,2,72,14,16,136,4,138,3,142,1,2,44,10,68,14,16,68,8,8,8,10,14,8,68,11,39,12,13,0,68,14
	.byte 8,135,2,72,14,16,136,4,139,3,142,1,68,14,32,68,13,11,88,10,68,13,13,14,16,68,8,8,8,11,14,8
	.byte 68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,56,2,228,10,68,14,12,68,8,8,14,8
	.byte 68,11,41,12,13,0,68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,56,68,13,11,3,84,1,10,68,13
	.byte 13,14,16,68,8,8,8,11,14,8,68,11,43,12,13,0,68,14,8,135,2,72,14,24,133,6,134,5,136,4,138,3
	.byte 142,1,68,14,32,2,68,10,68,14,24,68,8,5,8,6,8,8,8,10,14,8,68,11,31,12,13,0,68,14,8,135
	.byte 2,72,14,12,136,3,142,1,68,14,32,2,104,10,68,14,12,68,8,8,14,8,68,11

.text
	.align 4
plt:
mono_aot_System_Runtime_InteropServices_RuntimeInformation_plt:
	.no_dead_strip plt_wrapper_write_barrier_object_wbarrier_conc_intptr
plt_wrapper_write_barrier_object_wbarrier_conc_intptr:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 100,367
	.no_dead_strip plt__jit_icall_mono_helper_ldstr
plt__jit_icall_mono_helper_ldstr:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 104,374
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 108,394
	.no_dead_strip plt_System_Runtime_InteropServices_OSPlatform_Equals_string
plt_System_Runtime_InteropServices_OSPlatform_Equals_string:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 112,422
	.no_dead_strip plt_string_Equals_string_string_System_StringComparison
plt_string_Equals_string_string_System_StringComparison:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 116,424
	.no_dead_strip plt_System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform
plt_System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform:
_p_6:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 120,429
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_7:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 124,431
	.no_dead_strip plt_System_Runtime_InteropServices_OSPlatform__ctor_string
plt_System_Runtime_InteropServices_OSPlatform__ctor_string:
_p_8:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 128,466
	.no_dead_strip plt_System_Environment_get_OSVersion
plt_System_Environment_get_OSVersion:
_p_9:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 132,468
	.no_dead_strip plt__jit_icall_mono_generic_class_init
plt__jit_icall_mono_generic_class_init:
_p_10:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 136,473
	.no_dead_strip plt_System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform
plt_System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform:
_p_11:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 140,499
	.no_dead_strip plt_System_IO_File_Exists_string
plt_System_IO_File_Exists_string:
_p_12:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 144,501
	.no_dead_strip plt__jit_icall_g_free
plt__jit_icall_g_free:
_p_13:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 148,506
	.no_dead_strip plt__jit_icall_mono_string_to_lpstr
plt__jit_icall_mono_string_to_lpstr:
_p_14:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 152,515
	.no_dead_strip plt__jit_icall_mono_string_new_wrapper
plt__jit_icall_mono_string_new_wrapper:
_p_15:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got - . + 156,538
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_System_Runtime_InteropServices_RuntimeInformation_got, 164
got_end:
.section __TEXT, __const
	.align 3
Lglobals_hash:

	.short 11, 0, 0, 0, 0, 0, 0, 0
	.short 0, 0, 0, 0, 0, 1, 0, 0
	.short 0, 0, 0, 0, 0, 0, 0
.section __TEXT, __const
	.align 2
name_0:
	.asciz "_unbox_trampoline_p"
.data
	.align 3
globals:
	.align 2
	.long Lglobals_hash
	.align 2
	.long name_0
	.align 2
	.long _unbox_trampoline_p

	.long 0,0
.section __TEXT, __const
	.align 2
runtime_version:
	.asciz ""
.section __TEXT, __const
	.align 2
assembly_guid:
	.asciz "E1D7F2C6-DE77-4D60-B92B-58BD4DE64D60"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "System.Runtime.InteropServices.RuntimeInformation"
.data
	.align 3
_mono_aot_file_info:

	.long 137,0
	.align 2
	.long mono_aot_System_Runtime_InteropServices_RuntimeInformation_got
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

	.long 25,164,16,16,66,923871743,0,1366
	.long 128,4,4,10,0,15,2000,624
	.long 400,224,0,328,376,272,0,192
	.long 48,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 44,89,15,54,182,158,41,143,228,198,52,195,27,49,65,195
	.globl _mono_aot_module_System_Runtime_InteropServices_RuntimeInformation_info
	.align 2
_mono_aot_module_System_Runtime_InteropServices_RuntimeInformation_info:
	.align 2
	.long _mono_aot_file_info
.section __DWARF, __debug_info,regular,debug
LTDIE_2:

	.byte 17
	.asciz "System_Object"

	.byte 8,7
	.asciz "System_Object"

LDIFF_SYM4=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM4
LTDIE_2_POINTER:

	.byte 13
LDIFF_SYM5=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM5
LTDIE_2_REFERENCE:

	.byte 14
LDIFF_SYM6=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM6
LTDIE_1:

	.byte 5
	.asciz "System_ValueType"

	.byte 8,16
LDIFF_SYM7=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM7
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM8=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM9=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM10=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM10
LTDIE_0:

	.byte 5
	.asciz "System_Runtime_InteropServices_OSPlatform"

	.byte 12,16
LDIFF_SYM11=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM11
	.byte 2,35,0,6
	.asciz "_osPlatform"

LDIFF_SYM12=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM12
	.byte 2,35,0,0,7
	.asciz "System_Runtime_InteropServices_OSPlatform"

LDIFF_SYM13=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM14=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM14
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM15=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:.ctor"
	.asciz "System_Runtime_InteropServices_OSPlatform__ctor_string"

	.byte 1,45
	.long System_Runtime_InteropServices_OSPlatform__ctor_string
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM16=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM16
	.byte 2,125,0,3
	.asciz "osPlatform"

LDIFF_SYM17=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM17
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM18=Lfde0_end - Lfde0_start
	.long LDIFF_SYM18
Lfde0_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform__ctor_string

LDIFF_SYM19=Lme_0 - System_Runtime_InteropServices_OSPlatform__ctor_string
	.long LDIFF_SYM19
	.byte 68,14,8,135,2,72,14,16,136,4,138,3,142,1,68,14,32,2,40,10,68,14,16,68,8,8,8,10,14,8,68,11
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:get_Linux"
	.asciz "System_Runtime_InteropServices_OSPlatform_get_Linux"

	.byte 1,37
	.long System_Runtime_InteropServices_OSPlatform_get_Linux
	.long Lme_1

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM20=Lfde1_end - Lfde1_start
	.long LDIFF_SYM20
Lfde1_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform_get_Linux

LDIFF_SYM21=Lme_1 - System_Runtime_InteropServices_OSPlatform_get_Linux
	.long LDIFF_SYM21
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,56,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:get_OSX"
	.asciz "System_Runtime_InteropServices_OSPlatform_get_OSX"

	.byte 1,39
	.long System_Runtime_InteropServices_OSPlatform_get_OSX
	.long Lme_2

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM22=Lfde2_end - Lfde2_start
	.long LDIFF_SYM22
Lfde2_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform_get_OSX

LDIFF_SYM23=Lme_2 - System_Runtime_InteropServices_OSPlatform_get_OSX
	.long LDIFF_SYM23
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,56,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:get_Windows"
	.asciz "System_Runtime_InteropServices_OSPlatform_get_Windows"

	.byte 1,41
	.long System_Runtime_InteropServices_OSPlatform_get_Windows
	.long Lme_3

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM24=Lfde3_end - Lfde3_start
	.long LDIFF_SYM24
Lfde3_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform_get_Windows

LDIFF_SYM25=Lme_3 - System_Runtime_InteropServices_OSPlatform_get_Windows
	.long LDIFF_SYM25
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,56,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde3_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:Equals"
	.asciz "System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform"

	.byte 1,58
	.long System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform
	.long Lme_4

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM26=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,123,0,3
	.asciz "other"

LDIFF_SYM27=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM27
	.byte 2,123,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM28=Lfde4_end - Lfde4_start
	.long LDIFF_SYM28
Lfde4_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform

LDIFF_SYM29=Lme_4 - System_Runtime_InteropServices_OSPlatform_Equals_System_Runtime_InteropServices_OSPlatform
	.long LDIFF_SYM29
	.byte 68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,24,68,13,11,88,10,68,13,13,14,16,68,8,8,8,11
	.byte 14,8,68,11
	.align 2
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:Equals"
	.asciz "System_Runtime_InteropServices_OSPlatform_Equals_string"

	.byte 1,63
	.long System_Runtime_InteropServices_OSPlatform_Equals_string
	.long Lme_5

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM30=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,125,0,3
	.asciz "other"

LDIFF_SYM31=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,125,4,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM32=Lfde5_end - Lfde5_start
	.long LDIFF_SYM32
Lfde5_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform_Equals_string

LDIFF_SYM33=Lme_5 - System_Runtime_InteropServices_OSPlatform_Equals_string
	.long LDIFF_SYM33
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,24,2,32,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde5_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:Equals"
	.asciz "System_Runtime_InteropServices_OSPlatform_Equals_object"

	.byte 1,68
	.long System_Runtime_InteropServices_OSPlatform_Equals_object
	.long Lme_6

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM34=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM34
	.byte 2,125,8,3
	.asciz "obj"

LDIFF_SYM35=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM36=Lfde6_end - Lfde6_start
	.long LDIFF_SYM36
Lfde6_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform_Equals_object

LDIFF_SYM37=Lme_6 - System_Runtime_InteropServices_OSPlatform_Equals_object
	.long LDIFF_SYM37
	.byte 68,14,8,135,2,72,14,20,133,5,136,4,138,3,142,1,68,14,40,2,160,10,68,14,20,68,8,5,8,8,8,10
	.byte 14,8,68,11
	.align 2
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:GetHashCode"
	.asciz "System_Runtime_InteropServices_OSPlatform_GetHashCode"

	.byte 1,73
	.long System_Runtime_InteropServices_OSPlatform_GetHashCode
	.long Lme_7

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM38=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM39=Lfde7_end - Lfde7_start
	.long LDIFF_SYM39
Lfde7_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform_GetHashCode

LDIFF_SYM40=Lme_7 - System_Runtime_InteropServices_OSPlatform_GetHashCode
	.long LDIFF_SYM40
	.byte 68,14,8,135,2,72,14,16,136,4,138,3,142,1,2,52,10,68,14,16,68,8,8,8,10,14,8,68,11
	.align 2
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:ToString"
	.asciz "System_Runtime_InteropServices_OSPlatform_ToString"

	.byte 1,78
	.long System_Runtime_InteropServices_OSPlatform_ToString
	.long Lme_8

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM41=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM42=Lfde8_end - Lfde8_start
	.long LDIFF_SYM42
Lfde8_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform_ToString

LDIFF_SYM43=Lme_8 - System_Runtime_InteropServices_OSPlatform_ToString
	.long LDIFF_SYM43
	.byte 68,14,8,135,2,72,14,16,136,4,138,3,142,1,2,44,10,68,14,16,68,8,8,8,10,14,8,68,11
	.align 2
Lfde8_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:op_Equality"
	.asciz "System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform"

	.byte 1,83
	.long System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform
	.long Lme_9

	.byte 2,118,16,3
	.asciz "left"

LDIFF_SYM44=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,123,4,3
	.asciz "right"

LDIFF_SYM45=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,123,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM46=Lfde9_end - Lfde9_start
	.long LDIFF_SYM46
Lfde9_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform

LDIFF_SYM47=Lme_9 - System_Runtime_InteropServices_OSPlatform_op_Equality_System_Runtime_InteropServices_OSPlatform_System_Runtime_InteropServices_OSPlatform
	.long LDIFF_SYM47
	.byte 68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,32,68,13,11,88,10,68,13,13,14,16,68,8,8,8,11
	.byte 14,8,68,11
	.align 2
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.OSPlatform:.cctor"
	.asciz "System_Runtime_InteropServices_OSPlatform__cctor"

	.byte 1,37
	.long System_Runtime_InteropServices_OSPlatform__cctor
	.long Lme_a

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM48=Lfde10_end - Lfde10_start
	.long LDIFF_SYM48
Lfde10_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_OSPlatform__cctor

LDIFF_SYM49=Lme_a - System_Runtime_InteropServices_OSPlatform__cctor
	.long LDIFF_SYM49
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,56,2,228,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "System.Runtime.InteropServices.RuntimeInformation:IsOSPlatform"
	.asciz "System_Runtime_InteropServices_RuntimeInformation_IsOSPlatform_System_Runtime_InteropServices_OSPlatform"

	.byte 2,53
	.long System_Runtime_InteropServices_RuntimeInformation_IsOSPlatform_System_Runtime_InteropServices_OSPlatform
	.long Lme_b

	.byte 2,118,16,3
	.asciz "osPlatform"

LDIFF_SYM50=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM50
	.byte 2,123,36,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM51=Lfde11_end - Lfde11_start
	.long LDIFF_SYM51
Lfde11_start:

	.long 0
	.align 2
	.long System_Runtime_InteropServices_RuntimeInformation_IsOSPlatform_System_Runtime_InteropServices_OSPlatform

LDIFF_SYM52=Lme_b - System_Runtime_InteropServices_RuntimeInformation_IsOSPlatform_System_Runtime_InteropServices_OSPlatform
	.long LDIFF_SYM52
	.byte 68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,56,68,13,11,3,84,1,10,68,13,13,14,16,68,8,8
	.byte 8,11,14,8,68,11
	.align 2
Lfde11_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_3:

	.byte 5
	.asciz "System_Boolean"

	.byte 9,16
LDIFF_SYM53=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM53
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM54=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM54
	.byte 2,35,8,0,7
	.asciz "System_Boolean"

LDIFF_SYM55=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM56=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM56
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM57=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2
	.asciz "(wrapper_unknown)_System.Runtime.InteropServices.OSPlatform:StructureToPtr"
	.asciz "wrapper_unknown_System_Runtime_InteropServices_OSPlatform_StructureToPtr_object_intptr_bool"

	.byte 0,0
	.long wrapper_unknown_System_Runtime_InteropServices_OSPlatform_StructureToPtr_object_intptr_bool
	.long Lme_e

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM58=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM58
	.byte 1,86,3
	.asciz "param1"

LDIFF_SYM59=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM59
	.byte 1,90,3
	.asciz "param2"

LDIFF_SYM60=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM60
	.byte 2,125,4,11
	.asciz "V_0"

LDIFF_SYM61=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 1,86,11
	.asciz "V_1"

LDIFF_SYM62=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 1,85,11
	.asciz "V_2"

LDIFF_SYM63=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM63
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM64=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM64
	.byte 2,125,0,11
	.asciz "V_4"

LDIFF_SYM65=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM65
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM66=Lfde12_end - Lfde12_start
	.long LDIFF_SYM66
Lfde12_start:

	.long 0
	.align 2
	.long wrapper_unknown_System_Runtime_InteropServices_OSPlatform_StructureToPtr_object_intptr_bool

LDIFF_SYM67=Lme_e - wrapper_unknown_System_Runtime_InteropServices_OSPlatform_StructureToPtr_object_intptr_bool
	.long LDIFF_SYM67
	.byte 68,14,8,135,2,72,14,24,133,6,134,5,136,4,138,3,142,1,68,14,32,2,68,10,68,14,24,68,8,5,8,6
	.byte 8,8,8,10,14,8,68,11
	.align 2
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "(wrapper_unknown)_System.Runtime.InteropServices.OSPlatform:PtrToStructure"
	.asciz "wrapper_unknown_System_Runtime_InteropServices_OSPlatform_PtrToStructure_intptr_object"

	.byte 0,0
	.long wrapper_unknown_System_Runtime_InteropServices_OSPlatform_PtrToStructure_intptr_object
	.long Lme_f

	.byte 2,118,16,3
	.asciz "param0"

LDIFF_SYM68=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,125,0,3
	.asciz "param1"

LDIFF_SYM69=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,125,4,11
	.asciz "V_0"

LDIFF_SYM70=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 0,11
	.asciz "V_1"

LDIFF_SYM71=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 0,11
	.asciz "V_2"

LDIFF_SYM72=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 0,11
	.asciz "V_3"

LDIFF_SYM73=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 0,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM74=Lfde13_end - Lfde13_start
	.long LDIFF_SYM74
Lfde13_start:

	.long 0
	.align 2
	.long wrapper_unknown_System_Runtime_InteropServices_OSPlatform_PtrToStructure_intptr_object

LDIFF_SYM75=Lme_f - wrapper_unknown_System_Runtime_InteropServices_OSPlatform_PtrToStructure_intptr_object
	.long LDIFF_SYM75
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,104,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
