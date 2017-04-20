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
	.asciz "Microsoft.Practices.ServiceLocation.dll"
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
	.no_dead_strip Microsoft_Practices_ServiceLocation_ActivationException__ctor
Microsoft_Practices_ServiceLocation_ActivationException__ctor:
.file 1 "c:\\Projects\\CommonServiceLocator\\main\\Microsoft.Practices.ServiceLocation\\ActivationException.cs"
.loc 1 13 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 48
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,0,157,229
bl _p_1

	.byte 0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,140,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_0:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ActivationException__ctor_string
Microsoft_Practices_ServiceLocation_ActivationException__ctor_string:
.loc 1 21 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 52
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,0,157,229,12,16,157,229
bl _p_2

	.byte 0,224,157,229,128,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,148,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_1:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ActivationException__ctor_string_System_Exception
Microsoft_Practices_ServiceLocation_ActivationException__ctor_string_System_Exception:
.loc 1 32 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,7,223,77,226,8,0,141,229,12,16,141,229,16,32,141,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 56
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,72,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,100,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,0,157,229,12,16,157,229,16,32,157,229
bl _p_3

	.byte 0,224,157,229,136,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,156,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,7,223,141,226,0,1,189,232,128,128,189,232

Lme_2:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocator_get_Current
Microsoft_Practices_ServiceLocation_ServiceLocator_get_Current:
.file 2 "c:\\Projects\\CommonServiceLocator\\main\\Microsoft.Practices.ServiceLocation\\ServiceLocator.cs"
.loc 2 22 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 60
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225
bl _p_4

	.byte 255,0,0,226,8,0,141,229,0,224,157,229,120,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229
	.byte 0,15,80,227,18,0,0,26,0,224,157,229,152,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
bl _p_5

	.byte 8,0,141,229,0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,16,157,229,119,1,0,227
	.byte 0,2,64,227,119,1,0,227,0,2,64,227
bl _mono_create_corlib_exception_1
bl _p_6
.loc 2 24 0

	.byte 0,224,157,229,228,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 64
	.byte 0,0,159,231,0,16,144,229,1,0,160,225,12,16,141,229,15,224,160,225,12,240,145,229,0,16,160,225,12,0,157,229
	.byte 8,16,141,229,0,224,157,229,40,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229,0,224,157,229
	.byte 64,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_9:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocator_SetLocatorProvider_Microsoft_Practices_ServiceLocation_ServiceLocatorProvider
Microsoft_Practices_ServiceLocation_ServiceLocator_SetLocatorProvider_Microsoft_Practices_ServiceLocation_ServiceLocatorProvider:
.loc 2 35 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 68
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,16,157,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 64
	.byte 0,0,159,231,0,16,128,229
.loc 2 36 0

	.byte 0,224,157,229,136,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,156,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_a:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocator_get_IsLocationProviderSet
Microsoft_Practices_ServiceLocation_ServiceLocator_get_IsLocationProviderSet:
.loc 2 42 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 72
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 64
	.byte 0,0,159,231,0,0,144,229,0,31,160,227,0,15,80,227,0,0,160,19,1,0,160,3,0,31,160,227,0,15,80,227
	.byte 0,0,160,19,1,0,160,3,0,224,157,229,160,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,3,223,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_b:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetService_System_Type
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetService_System_Type:
.file 3 "c:\\Projects\\CommonServiceLocator\\main\\Microsoft.Practices.ServiceLocation\\ServiceLocatorImplBase.cs"
.loc 3 22 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,7,223,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 76
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,48,157,229,12,16,157,229,0,15,160,227,3,0,160,225,0,47,160,227,0,48,147,229,15,224,160,225
	.byte 112,240,147,229,16,0,141,229,0,224,157,229,152,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,0,157,229
	.byte 0,224,157,229,176,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,7,223,141,226,0,1,189,232,128,128,189,232

Lme_c:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type:
.loc 3 34 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,7,223,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 80
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,48,157,229,12,16,157,229,0,15,160,227,3,0,160,225,0,47,160,227,0,48,147,229,15,224,160,225
	.byte 112,240,147,229,16,0,141,229,0,224,157,229,152,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,0,157,229
	.byte 0,224,157,229,176,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,7,223,141,226,0,1,189,232,128,128,189,232

Lme_d:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type_string
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type_string:
.loc 3 49 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,13,45,233,15,223,77,226,13,176,160,225,28,0,139,229,32,16,139,229,36,32,139,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 84
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,0,15,160,227,8,0,139,229,0,175,160,227
	.byte 0,224,155,229,88,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,224,155,229,0,224,158,229,0,224,155,229
	.byte 116,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,48,155,229,32,16,155,229,36,32,155,229,3,0,160,225
	.byte 0,48,147,229,15,224,160,225,92,240,147,229,40,0,139,229,0,224,155,229,168,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,40,0,155,229,0,160,160,225,47,0,0,234,12,0,139,229,52,0,139,229
.loc 3 51 0

	.byte 0,224,155,229,208,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,52,0,155,229,8,0,139,229
.loc 3 53 0

	.byte 0,224,155,229,236,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,192,155,229,8,16,155,229,32,32,155,229
	.byte 36,48,155,229,12,0,160,225,0,192,156,229,15,224,160,225,84,240,156,229,44,0,139,229,0,224,155,229,36,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,8,0,155,229,48,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 88
	.byte 0,0,159,231,17,31,160,227,17,31,160,227
bl _p_7

	.byte 44,16,155,229,48,32,155,229,40,0,139,229
bl _p_8

	.byte 0,224,155,229,108,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,40,0,155,229
bl _p_6
.loc 3 57 0

	.byte 4,224,155,229,0,224,158,229,0,224,155,229,144,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225
	.byte 10,0,160,225,255,255,255,234,0,224,155,229,176,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,15,223,139,226
	.byte 0,13,189,232,128,128,189,232

Lme_e:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_System_Type
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_System_Type:
.loc 3 71 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,13,45,233,15,223,77,226,13,176,160,225,28,0,139,229,32,16,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 92
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,0,15,160,227,8,0,139,229,0,175,160,227
	.byte 0,224,155,229,84,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,224,155,229,0,224,158,229,0,224,155,229
	.byte 112,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,32,155,229,32,16,155,229,2,0,160,225,0,32,146,229
	.byte 15,224,160,225,88,240,146,229,40,0,139,229,0,224,155,229,160,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 40,0,155,229,0,160,160,225,46,0,0,234,12,0,139,229,52,0,139,229
.loc 3 73 0

	.byte 0,224,155,229,200,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,52,0,155,229,8,0,139,229
.loc 3 75 0

	.byte 0,224,155,229,228,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,48,155,229,8,16,155,229,32,32,155,229
	.byte 3,0,160,225,0,48,147,229,15,224,160,225,80,240,147,229,44,0,139,229,0,224,155,229,24,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,155,229,48,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 88
	.byte 0,0,159,231,17,31,160,227,17,31,160,227
bl _p_7

	.byte 44,16,155,229,48,32,155,229,40,0,139,229
bl _p_8

	.byte 0,224,155,229,96,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,40,0,155,229
bl _p_6
.loc 3 79 0

	.byte 4,224,155,229,0,224,158,229,0,224,155,229,132,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225
	.byte 10,0,160,225,255,255,255,234,0,224,155,229,164,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,15,223,139,226
	.byte 0,13,189,232,128,128,189,232

Lme_f:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF:
.loc 3 90 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,9,223,77,226,8,128,141,229,16,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 96
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,16,0,157,229,24,0,141,229,8,0,157,229
bl _p_9

	.byte 0,16,160,225,24,48,157,229,0,15,160,227,3,0,160,225,0,47,160,227,0,48,147,229,15,224,160,225,112,240,147,229
	.byte 12,0,141,229,0,224,157,229,168,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229
bl _p_10

	.byte 0,32,160,225,4,16,146,229,12,0,157,229
bl _p_11

	.byte 0,224,157,229,212,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,9,223,141,226,0,1,189,232,128,128,189,232

Lme_10:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF_string
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF_string:
.loc 3 103 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,9,223,77,226,8,128,141,229,16,0,141,229,20,16,141,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 100
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,72,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,100,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,16,0,157,229,24,0,141,229,8,0,157,229
bl _p_12

	.byte 0,16,160,225,24,48,157,229,20,32,157,229,3,0,160,225,0,48,147,229,15,224,160,225,112,240,147,229,12,0,141,229
	.byte 0,224,157,229,168,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229
bl _p_13

	.byte 0,32,160,225,4,16,146,229,12,0,157,229
bl _p_11

	.byte 0,224,157,229,212,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,9,223,141,226,0,1,189,232,128,128,189,232

Lme_11:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_REF
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_REF:
.file 4 "<unknown>"
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,64,1,45,233,6,223,77,226,8,128,141,229,12,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 104
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,111,160,227,0,224,157,229,72,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,64,3,224,227,8,0,157,229
bl _p_14

	.byte 8,31,160,227,8,31,160,227
bl _p_7

	.byte 20,0,141,229,64,19,224,227
bl _p_15

	.byte 0,224,157,229,128,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,157,229,0,96,160,225,12,16,157,229
	.byte 16,16,141,229,12,16,134,229,3,15,128,226
bl _p_16

	.byte 16,0,157,229,6,0,160,225,0,224,157,229,184,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,6,223,141,226
	.byte 64,1,189,232,128,128,189,232

Lme_12:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivationExceptionMessage_System_Exception_System_Type_string
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivationExceptionMessage_System_Exception_System_Type_string:
.loc 3 149 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,32,1,45,233,12,223,77,226,8,0,141,229,12,16,141,229,16,32,141,229,20,48,141,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 108
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,95,160,227,0,224,157,229,80,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,108,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225
bl _p_17

	.byte 28,0,141,229,0,224,157,229,136,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
bl _p_18

	.byte 32,0,141,229,0,224,157,229,164,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,128,3,160,227,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 112
	.byte 0,0,159,231,128,19,160,227
bl _p_19

	.byte 0,80,160,225,40,0,141,229,0,15,160,227,16,16,157,229,1,0,160,225,0,16,145,229,15,224,160,225,96,240,145,229
	.byte 36,0,141,229,0,224,157,229,248,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,36,32,157,229,40,48,157,229
	.byte 3,0,160,225,0,31,160,227,0,48,147,229,15,224,160,225,132,240,147,229,5,48,160,225,64,3,160,227,20,32,157,229
	.byte 3,0,160,225,64,19,160,227,0,48,147,229,15,224,160,225,132,240,147,229,28,0,157,229,32,16,157,229,5,32,160,225
bl _p_20

	.byte 24,0,141,229,0,224,157,229,92,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229,0,224,157,229
	.byte 116,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,223,141,226,32,1,189,232,128,128,189,232

Lme_15:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivateAllExceptionMessage_System_Exception_System_Type
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivateAllExceptionMessage_System_Exception_System_Type:
.loc 3 161 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,64,1,45,233,12,223,77,226,8,0,141,229,12,16,141,229,16,32,141,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 116
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,111,160,227,0,224,157,229,76,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,104,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225
bl _p_17

	.byte 28,0,141,229,0,224,157,229,132,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
bl _p_21

	.byte 32,0,141,229,0,224,157,229,160,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,64,3,160,227,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 112
	.byte 0,0,159,231,64,19,160,227
bl _p_19

	.byte 0,96,160,225,40,0,141,229,0,15,160,227,16,16,157,229,1,0,160,225,0,16,145,229,15,224,160,225,96,240,145,229
	.byte 36,0,141,229,0,224,157,229,244,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,36,32,157,229,40,48,157,229
	.byte 3,0,160,225,0,31,160,227,0,48,147,229,15,224,160,225,132,240,147,229,28,0,157,229,32,16,157,229,6,32,160,225
bl _p_20

	.byte 24,0,141,229,0,224,157,229,56,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229,0,224,157,229
	.byte 80,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,223,141,226,64,1,189,232,128,128,189,232

Lme_16:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__ctor
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__ctor:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 120
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,224,157,229,108,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_17:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_Properties_Resources__ctor
Microsoft_Practices_ServiceLocation_Properties_Resources__ctor:
.file 5 "c:\\Projects\\CommonServiceLocator\\main\\Microsoft.Practices.ServiceLocation\\Properties\\Resources.Designer.cs"
.loc 5 31 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 124
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,0,157,229
.loc 5 33 0

	.byte 0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,136,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_1c:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_Properties_Resources_get_ResourceManager
Microsoft_Practices_ServiceLocation_Properties_Resources_get_ResourceManager:
.loc 5 41 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,6,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 128
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,175,160,227,0,224,157,229,64,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 132
	.byte 0,0,159,231,0,0,144,229,0,31,160,227,0,31,160,227
bl _p_22

	.byte 255,0,0,226,8,0,141,229,0,224,157,229,152,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229
	.byte 0,15,80,227,52,0,0,10
.loc 5 42 0

	.byte 0,224,157,229,184,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 136
	.byte 0,0,159,231,12,0,141,229,0,16,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 140
	.byte 1,16,159,231,1,0,160,225,0,16,145,229,15,224,160,225,240,241,145,229,16,0,141,229,0,224,157,229,4,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 144
	.byte 0,0,159,231,18,31,160,227,18,31,160,227
bl _p_7

	.byte 12,16,157,229,16,32,157,229,8,0,141,229
bl _p_23

	.byte 0,224,157,229,68,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229,0,160,160,225
.loc 5 43 0

	.byte 0,224,157,229,96,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 132
	.byte 0,0,159,231,0,160,128,229
.loc 5 45 0

	.byte 4,224,157,229,0,224,158,229,0,224,157,229,148,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 132
	.byte 0,0,159,231,0,0,144,229,0,224,157,229,188,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,6,223,141,226
	.byte 0,5,189,232,128,128,189,232

Lme_1d:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_Properties_Resources_get_Culture
Microsoft_Practices_ServiceLocation_Properties_Resources_get_Culture:
.loc 5 56 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,3,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 148
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 152
	.byte 0,0,159,231,0,0,144,229,0,224,157,229,128,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,3,223,141,226
	.byte 0,1,189,232,128,128,189,232

Lme_1e:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_Properties_Resources_set_Culture_System_Globalization_CultureInfo
Microsoft_Practices_ServiceLocation_Properties_Resources_set_Culture_System_Globalization_CultureInfo:
.loc 5 59 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 156
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,8,16,157,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 152
	.byte 0,0,159,231,0,16,128,229
.loc 5 60 0

	.byte 0,224,157,229,136,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,224,157,229,156,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_1f:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivateAllExceptionMessage
Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivateAllExceptionMessage:
.loc 5 68 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 160
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225
bl _p_24

	.byte 12,0,141,229,0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,48,157,229,0,16,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 164
	.byte 1,16,159,231,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 152
	.byte 0,0,159,231,0,32,144,229,3,0,160,225,0,48,147,229,15,224,160,225,52,240,147,229,8,0,141,229,0,224,157,229
	.byte 196,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229,0,224,157,229,220,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_20:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivationExceptionMessage
Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivationExceptionMessage:
.loc 5 77 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 168
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225
bl _p_24

	.byte 12,0,141,229,0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,48,157,229,0,16,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 172
	.byte 1,16,159,231,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 152
	.byte 0,0,159,231,0,32,144,229,3,0,160,225,0,48,147,229,15,224,160,225,52,240,147,229,8,0,141,229,0,224,157,229
	.byte 196,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229,0,224,157,229,220,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_21:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_Properties_Resources_get_ServiceLocationProviderNotSetMessage
Microsoft_Practices_ServiceLocation_Properties_Resources_get_ServiceLocationProviderNotSetMessage:
.loc 5 86 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 176
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,60,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,88,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225
bl _p_24

	.byte 12,0,141,229,0,224,157,229,116,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,48,157,229,0,16,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 180
	.byte 1,16,159,231,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 152
	.byte 0,0,159,231,0,32,144,229,3,0,160,225,0,48,147,229,15,224,160,225,52,240,147,229,8,0,141,229,0,224,157,229
	.byte 196,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229,0,224,157,229,220,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_22:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerable_TService_GetEnumerator
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerable_TService_GetEnumerator:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,0,5,45,233,6,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 184
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,175,160,227,0,224,157,229,68,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225
bl _p_25

	.byte 20,0,141,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,16,157,229,1,0,160,225
	.byte 0,224,209,229
bl _p_26

	.byte 16,0,141,229,0,224,157,229,136,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,0,157,229,8,16,157,229
	.byte 28,16,145,229,1,0,80,225,12,0,0,26,8,0,157,229,24,0,144,229,64,19,224,227,64,19,224,227,1,0,80,225
	.byte 6,0,0,26,8,0,157,229,0,31,160,227,0,31,160,227,24,16,128,229,8,0,157,229,0,160,160,225,23,0,0,234
	.byte 0,15,160,227,8,0,157,229,0,0,144,229
bl _p_27

	.byte 8,31,160,227,8,31,160,227
bl _p_7

	.byte 20,0,141,229,0,31,160,227
bl _p_28

	.byte 0,224,157,229,12,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,0,157,229,0,160,160,225,8,16,157,229
	.byte 12,16,145,229,16,16,141,229,12,16,138,229,3,15,128,226
bl _p_16

	.byte 16,0,157,229,10,0,160,225,10,0,160,225,0,224,157,229,76,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 6,223,141,226,0,5,189,232,128,128,189,232

Lme_23:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerable_GetEnumerator
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerable_GetEnumerator:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,7,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 188
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229
bl _p_29

	.byte 16,0,141,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,0,157,229,0,224,157,229
	.byte 120,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,7,223,141,226,0,1,189,232,128,128,189,232

Lme_24:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_MoveNext
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_MoveNext:
.loc 3 116 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,64,13,45,233,14,223,77,226,13,176,160,225,28,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 192
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,0,15,160,227,8,0,203,229,0,175,160,227
	.byte 0,224,155,229,80,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,0,155,229,24,0,144,229,0,160,160,225
	.byte 10,96,160,225,192,3,86,227,7,0,0,42,6,17,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 196
	.byte 0,0,159,231,1,0,128,224,0,0,144,229,0,240,160,225,156,0,0,234,28,0,155,229,0,31,224,227,0,31,224,227
	.byte 24,16,128,229,0,224,155,229,176,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,0,155,229,36,0,139,229
	.byte 28,0,155,229,12,0,144,229,48,0,139,229,28,0,155,229,0,0,144,229
bl _p_30

	.byte 0,16,160,225,48,32,155,229,2,0,160,225,0,32,146,229,15,224,160,225,108,240,146,229,44,0,139,229,0,224,155,229
	.byte 0,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,44,16,155,229,1,0,160,225,0,16,145,229,0,128,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 200
	.byte 8,128,159,231,15,224,160,225,68,240,17,229,40,0,139,229,0,224,155,229,60,225,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,36,0,155,229,40,16,155,229,32,16,139,229,20,16,128,229,5,15,128,226
bl _p_16

	.byte 32,0,155,229,28,0,155,229,64,19,160,227,64,19,160,227,24,16,128,229,66,0,0,234,4,224,155,229,0,224,158,229
	.byte 0,224,155,229,136,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,0,155,229,44,0,139,229,28,0,155,229
	.byte 20,16,144,229,1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 204
	.byte 8,128,159,231,15,224,160,225,12,240,17,229,48,0,139,229,0,224,155,229,208,225,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,44,0,155,229,48,16,155,229,40,16,139,229,16,16,128,229,4,15,128,226
bl _p_16

	.byte 40,0,155,229
.loc 3 118 0

	.byte 0,224,155,229,0,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,0,155,229,36,0,139,229,28,0,155,229
	.byte 16,0,144,229,24,0,139,229,28,0,155,229,0,0,144,229
bl _p_31

	.byte 0,32,160,225,4,16,146,229,24,0,155,229
bl _p_11

	.byte 0,16,160,225,36,0,155,229,32,16,139,229,8,16,128,229,2,15,128,226
bl _p_16

	.byte 32,0,155,229,28,0,155,229,128,19,160,227,128,19,160,227,24,16,128,229,64,3,160,227,8,0,203,229,57,0,0,234
	.byte 28,0,155,229,64,19,160,227,64,19,160,227,24,16,128,229
.loc 3 116 0

	.byte 4,224,155,229,0,224,158,229,0,224,155,229,148,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,28,0,155,229
	.byte 20,16,144,229,1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 208
	.byte 8,128,159,231,15,224,160,225,60,240,17,229,255,0,0,226,32,0,139,229,0,224,155,229,216,226,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,32,0,155,229,0,15,80,227,161,255,255,26,28,0,155,229
bl _p_32

	.byte 0,224,155,229,0,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,15,160,227,8,0,203,229,16,0,0,234
	.byte 20,224,139,229,4,224,155,229,0,224,158,229,0,224,155,229,44,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 28,0,155,229
bl _p_33

	.byte 0,224,155,229,72,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,192,155,229,12,240,160,225,8,0,219,229
	.byte 255,255,255,234,0,224,155,229,108,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225,14,223,139,226,64,13,189,232
	.byte 128,128,189,232

Lme_25:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerator_TService_get_Current
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerator_TService_get_Current:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 212
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229,8,0,144,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_26:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_Reset
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_Reset:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 216
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,171,1,0,227,0,2,64,227,171,1,0,227,0,2,64,227
bl _mono_create_corlib_exception_0
bl _p_6

	.byte 0,224,157,229,108,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_27:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_IDisposable_Dispose
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_IDisposable_Dispose:

	.byte 128,64,45,233,13,112,160,225,64,13,45,233,6,223,77,226,13,176,160,225,20,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 220
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,0,175,160,227,0,224,155,229,72,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,20,0,155,229,24,0,144,229,0,160,160,225,64,99,64,226,128,3,86,227
	.byte 19,0,0,42,6,17,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 224
	.byte 0,0,159,231,1,0,128,224,0,0,144,229,0,240,160,225,0,0,0,235,9,0,0,234,16,224,139,229,20,0,155,229
bl _p_32

	.byte 0,224,155,229,168,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,192,155,229,12,240,160,225,0,224,155,229
	.byte 196,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,6,223,139,226,64,13,189,232,128,128,189,232

Lme_28:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_get_Current
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_get_Current:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 228
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229,8,0,144,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_29:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,9,223,77,226,8,0,141,229,12,16,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 232
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229,0,224,157,229,92,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 8,0,157,229,12,16,157,229,24,16,128,229,8,0,157,229,16,0,141,229
bl _p_25

	.byte 24,0,141,229,0,224,157,229,140,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,16,157,229,1,0,160,225
	.byte 0,224,209,229
bl _p_26

	.byte 20,0,141,229,0,224,157,229,180,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,0,157,229,20,16,157,229
	.byte 28,16,128,229,0,224,157,229,212,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,9,223,141,226,0,1,189,232
	.byte 128,128,189,232

Lme_2a:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__m__Finally3
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__m__Finally3:

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,5,223,77,226,8,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 236
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,64,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,8,0,157,229,0,31,224,227,0,31,224,227,24,16,128,229,8,0,157,229,20,0,144,229
	.byte 0,15,80,227,14,0,0,10,8,0,157,229,20,16,144,229,1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 240
	.byte 8,128,159,231,15,224,160,225,20,240,17,229,0,224,157,229,156,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,224,157,229,176,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,141,226,0,1,189,232,128,128,189,232

Lme_2b:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT:
.loc 3 90 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,48,13,45,233,11,223,77,226,13,176,160,225,12,128,139,229,0,16,139,229,24,0,139,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 244
	.byte 0,0,159,231,4,0,139,229,4,224,155,229,0,224,158,229,8,224,139,229,12,0,155,229
bl _p_34

	.byte 0,80,160,225,0,0,149,229,7,64,128,226,7,64,196,227,4,208,77,224,13,64,160,225,4,224,155,229,108,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,8,224,155,229,0,224,158,229,4,224,155,229,136,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,24,0,155,229,36,0,139,229,12,0,155,229
bl _p_35

	.byte 0,16,160,225,36,48,155,229,0,15,160,227,3,0,160,225,0,47,160,227,0,48,147,229,15,224,160,225,112,240,147,229
	.byte 32,0,139,229,4,224,155,229,208,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,32,0,155,229,4,16,149,229
bl _p_36

	.byte 0,160,160,225,8,0,149,229,16,0,139,229,128,3,80,227,5,0,0,10,16,0,155,229,192,3,80,227,8,0,0,10
	.byte 2,15,138,226,20,0,139,229,15,0,0,234,24,0,149,229,4,16,160,225,0,0,132,224,20,0,139,229,0,160,128,229
	.byte 9,0,0,234,12,32,149,229,28,0,149,229,4,16,160,225,0,16,132,224,10,0,160,225,50,255,47,225,28,0,149,229
	.byte 4,16,160,225,0,0,132,224,20,0,139,229,20,16,155,229,32,0,149,229,4,32,160,225,0,0,132,224,16,32,149,229
	.byte 20,48,149,229,51,255,47,225,0,0,155,229,32,16,149,229,4,32,160,225,1,16,132,224,36,16,139,229,32,0,139,229
	.byte 16,0,149,229,20,0,149,229,12,0,155,229
bl _p_37

	.byte 0,32,160,225,32,0,155,229,36,16,155,229
bl _mono_gsharedvt_value_copy

	.byte 4,224,155,229,176,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,11,223,139,226,48,13,189,232,128,128,189,232

Lme_30:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT_string
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT_string:
.loc 3 103 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,16,13,45,233,12,223,77,226,13,176,160,225,12,128,139,229,0,16,139,229,28,0,139,229
	.byte 32,32,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 248
	.byte 0,0,159,231,4,0,139,229,4,224,155,229,0,224,158,229,8,224,139,229,12,0,155,229
bl _p_38

	.byte 0,64,160,225,0,0,148,229,7,160,128,226,7,160,202,227,10,208,77,224,13,160,160,225,4,224,155,229,112,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,8,224,155,229,0,224,158,229,4,224,155,229,140,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,28,0,155,229,44,0,139,229,12,0,155,229
bl _p_39

	.byte 0,16,160,225,44,48,155,229,32,32,155,229,3,0,160,225,0,48,147,229,15,224,160,225,112,240,147,229,40,0,139,229
	.byte 4,224,155,229,208,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,40,0,155,229,4,16,148,229
bl _p_36

	.byte 20,0,139,229,8,0,148,229,16,0,139,229,128,3,80,227,6,0,0,10,16,0,155,229,192,3,80,227,10,0,0,10
	.byte 20,0,155,229,2,15,128,226,24,0,139,229,16,0,0,234,24,0,148,229,10,16,160,225,0,0,138,224,24,0,139,229
	.byte 20,16,155,229,0,16,128,229,9,0,0,234,12,32,148,229,28,0,148,229,10,16,160,225,0,16,138,224,20,0,155,229
	.byte 50,255,47,225,28,0,148,229,10,16,160,225,0,0,138,224,24,0,139,229,24,16,155,229,32,0,148,229,10,32,160,225
	.byte 0,0,138,224,16,32,148,229,20,48,148,229,51,255,47,225,0,0,155,229,32,16,148,229,10,32,160,225,1,16,138,224
	.byte 44,16,139,229,40,0,139,229,16,0,148,229,20,0,148,229,12,0,155,229
bl _p_40

	.byte 0,32,160,225,40,0,155,229,44,16,155,229
bl _mono_gsharedvt_value_copy

	.byte 4,224,155,229,184,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,223,139,226,16,13,189,232,128,128,189,232

Lme_31:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_GSHAREDVT
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_GSHAREDVT:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,96,9,45,233,10,223,77,226,13,176,160,225,8,128,139,229,16,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 252
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,8,0,155,229
bl _p_41

	.byte 0,96,160,225,0,0,150,229,0,15,160,227,0,15,160,227,12,0,139,229,0,95,160,227,0,224,155,229,104,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,64,3,224,227,8,0,155,229
bl _p_42
bl _p_43

	.byte 32,0,139,229,8,0,155,229
bl _p_44

	.byte 0,32,160,225,32,0,155,229,28,0,139,229,64,19,224,227,50,255,47,225,0,224,155,229,172,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,28,0,155,229,0,80,160,225,16,16,155,229,4,32,150,229,64,35,66,226,2,0,128,224
	.byte 24,16,139,229,0,16,128,229
bl _p_16

	.byte 24,0,155,229,5,0,160,225,0,224,155,229,236,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,223,139,226
	.byte 96,9,189,232,128,128,189,232

Lme_32:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerable_TService_GetEnumerator
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerable_TService_GetEnumerator:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,64,13,45,233,8,223,77,226,13,176,160,225,12,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 256
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,12,0,155,229,0,0,144,229
bl _p_45

	.byte 0,160,160,225,0,0,154,229,0,15,160,227,0,15,160,227,8,0,139,229,0,111,160,227,0,224,155,229,104,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225
bl _p_25

	.byte 20,0,139,229,0,224,155,229,132,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,20,16,155,229,1,0,160,225
	.byte 0,224,209,229
bl _p_26

	.byte 16,0,139,229,0,224,155,229,172,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,16,0,155,229,12,16,155,229
	.byte 4,32,154,229,64,35,66,226,2,16,129,224,0,16,145,229,1,0,80,225,18,0,0,26,12,0,155,229,8,16,154,229
	.byte 64,19,65,226,1,0,128,224,0,0,144,229,64,19,224,227,64,19,224,227,1,0,80,225,9,0,0,26,12,0,155,229
	.byte 0,31,160,227,8,16,154,229,64,19,65,226,1,0,128,224,0,31,160,227,0,16,128,229,12,0,155,229,0,96,160,225
	.byte 32,0,0,234,0,15,160,227,12,0,155,229,0,0,144,229
bl _p_46
bl _p_43

	.byte 24,0,139,229,12,0,155,229,0,0,144,229
bl _p_47

	.byte 0,32,160,225,24,0,155,229,20,0,139,229,0,31,160,227,50,255,47,225,0,224,155,229,100,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,20,0,155,229,0,96,160,225,12,16,155,229,12,32,154,229,64,35,66,226,2,16,129,224
	.byte 0,16,145,229,12,32,154,229,64,35,66,226,2,0,128,224,16,16,139,229,0,16,128,229
bl _p_16

	.byte 16,0,155,229,6,0,160,225,6,0,160,225,0,224,155,229,184,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 8,223,139,226,64,13,189,232,128,128,189,232

Lme_33:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerable_GetEnumerator
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerable_GetEnumerator:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,0,9,45,233,8,223,77,226,13,176,160,225,16,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 260
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,16,0,155,229,0,0,144,229
bl _p_48

	.byte 8,0,139,229,0,0,144,229,0,15,160,227,0,15,160,227,12,0,139,229,0,224,155,229,100,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,16,0,155,229,28,0,139,229,16,0,155,229,0,0,144,229
bl _p_49

	.byte 0,16,160,225,28,0,155,229,49,255,47,225,24,0,139,229,0,224,155,229,156,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,24,0,155,229,0,224,155,229,180,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,223,139,226
	.byte 0,9,189,232,128,128,189,232

Lme_34:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_MoveNext
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_MoveNext:
.loc 3 116 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,112,13,45,233,18,223,77,226,13,176,160,225,40,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 264
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,40,0,155,229,0,0,144,229
bl _p_50

	.byte 0,160,160,225,0,0,154,229,7,96,128,226,7,96,198,227,6,208,77,224,13,96,160,225,0,15,160,227,8,0,203,229
	.byte 0,95,160,227,0,224,155,229,116,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,40,0,155,229,4,16,154,229
	.byte 64,19,65,226,1,0,128,224,0,0,144,229,0,80,160,225,5,64,160,225,192,3,84,227,7,0,0,42,4,17,160,225
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 268
	.byte 0,0,159,231,1,0,128,224,0,0,144,229,0,240,160,225,242,0,0,234,40,0,155,229,0,31,224,227,4,16,154,229
	.byte 64,19,65,226,1,0,128,224,0,31,224,227,0,16,128,229,0,224,155,229,236,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,40,0,155,229,52,0,139,229,40,0,155,229,8,16,154,229,64,19,65,226,1,0,128,224,0,0,144,229
	.byte 68,0,139,229,40,0,155,229,0,0,144,229
bl _p_51

	.byte 0,16,160,225,68,32,155,229,2,0,160,225,0,32,146,229,15,224,160,225,108,240,146,229,60,0,139,229,0,224,155,229
	.byte 72,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 200
	.byte 0,0,159,231,64,0,139,229,40,0,155,229,0,0,144,229
bl _p_52

	.byte 0,16,160,225,60,0,155,229,64,32,155,229,2,128,160,225,49,255,47,225,56,0,139,229,0,224,155,229,148,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,52,0,155,229,56,16,155,229,12,32,154,229,64,35,66,226,2,0,128,224
	.byte 48,16,139,229,0,16,128,229
bl _p_16

	.byte 48,0,155,229,40,0,155,229,64,19,160,227,4,16,154,229,64,19,65,226,1,0,128,224,64,19,160,227,0,16,128,229
	.byte 128,0,0,234,4,224,155,229,0,224,158,229,0,224,155,229,244,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 40,0,155,229,52,0,139,229,40,0,155,229,12,16,154,229,64,19,65,226,1,0,128,224,0,0,144,229,60,0,139,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 204
	.byte 0,0,159,231,64,0,139,229,40,0,155,229,0,0,144,229
bl _p_53

	.byte 0,16,160,225,60,0,155,229,64,32,155,229,2,128,160,225,49,255,47,225,56,0,139,229,0,224,155,229,96,226,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,52,0,155,229,56,16,155,229,16,32,154,229,64,35,66,226,2,0,128,224
	.byte 48,16,139,229,0,16,128,229
bl _p_16

	.byte 48,0,155,229
.loc 3 118 0

	.byte 0,224,155,229,152,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,40,0,155,229,36,0,139,229,40,0,155,229
	.byte 16,16,154,229,64,19,65,226,1,0,128,224,0,0,144,229,20,16,154,229
bl _p_36

	.byte 28,0,139,229,24,0,154,229,24,0,139,229,128,3,80,227,6,0,0,10,24,0,155,229,192,3,80,227,10,0,0,10
	.byte 28,0,155,229,2,15,128,226,32,0,139,229,17,0,0,234,44,0,154,229,6,16,160,225,0,0,134,224,32,0,139,229
	.byte 28,16,155,229,0,16,128,229,10,0,0,234,28,32,154,229,48,0,154,229,6,16,160,225,0,16,134,224,28,0,155,229
	.byte 50,255,47,225,48,0,154,229,6,16,160,225,0,0,134,224,32,0,139,229,255,255,255,234,32,16,155,229,52,0,154,229
	.byte 6,32,160,225,0,0,134,224,36,32,154,229,40,48,154,229,51,255,47,225,32,0,154,229,64,19,64,226,36,0,155,229
	.byte 1,0,128,224,52,16,154,229,6,32,160,225,1,16,134,224,52,16,139,229,48,0,139,229,36,0,154,229,40,0,154,229
	.byte 40,0,155,229,0,0,144,229
bl _p_54

	.byte 0,32,160,225,48,0,155,229,52,16,155,229
bl _mono_gsharedvt_value_copy

	.byte 40,0,155,229,128,19,160,227,4,16,154,229,64,19,65,226,1,0,128,224,128,19,160,227,0,16,128,229,64,3,160,227
	.byte 8,0,203,229,75,0,0,234,40,0,155,229,64,19,160,227,4,16,154,229,64,19,65,226,1,0,128,224,64,19,160,227
	.byte 0,16,128,229
.loc 3 116 0

	.byte 4,224,155,229,0,224,158,229,0,224,155,229,248,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225,40,0,155,229
	.byte 12,16,154,229,64,19,65,226,1,0,128,224,0,16,144,229,1,0,160,225,0,16,145,229,0,128,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 208
	.byte 8,128,159,231,15,224,160,225,60,240,17,229,255,0,0,226,48,0,139,229,0,224,155,229,72,228,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,48,0,155,229,0,15,80,227,96,255,255,26,40,0,155,229,48,0,139,229,40,0,155,229
	.byte 0,0,144,229
bl _p_55

	.byte 0,16,160,225,48,0,155,229,49,255,47,225,0,224,155,229,136,228,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,15,160,227,8,0,203,229,22,0,0,234,20,224,139,229,4,224,155,229,0,224,158,229,0,224,155,229,180,228,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,40,0,155,229,48,0,139,229,40,0,155,229,0,0,144,229
bl _p_56

	.byte 0,16,160,225,48,0,155,229,49,255,47,225,0,224,155,229,232,228,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 20,192,155,229,12,240,160,225,8,0,219,229,255,255,255,234,0,224,155,229,12,229,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,18,223,139,226,112,13,189,232,128,128,189,232

Lme_35:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerator_TService_get_Current
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerator_TService_get_Current:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,96,9,45,233,6,223,77,226,13,176,160,225,0,16,139,229,12,0,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 272
	.byte 0,0,159,231,4,0,139,229,4,224,155,229,0,224,158,229,8,224,139,229,12,0,155,229,0,0,144,229
bl _p_57

	.byte 0,96,160,225,0,0,150,229,7,80,128,226,7,80,197,227,5,208,77,224,13,80,160,225,4,224,155,229,108,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,12,0,155,229,4,16,150,229,64,19,65,226,1,16,128,224,16,0,150,229
	.byte 5,32,160,225,0,0,133,224,8,32,150,229,12,48,150,229,51,255,47,225,0,0,155,229,16,32,150,229,5,16,160,225
	.byte 2,16,129,224,20,16,139,229,16,0,139,229,8,0,150,229,12,0,150,229,12,0,155,229,0,0,144,229
bl _p_58

	.byte 0,32,160,225,16,0,155,229,20,16,155,229
bl _mono_gsharedvt_value_copy

	.byte 4,224,155,229,228,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,6,223,139,226,96,9,189,232,128,128,189,232

Lme_36:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_Reset
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_Reset:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,0,9,45,233,6,223,77,226,13,176,160,225,16,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 276
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,16,0,155,229,0,0,144,229
bl _p_59

	.byte 8,0,139,229,0,0,144,229,0,15,160,227,0,15,160,227,12,0,139,229,0,224,155,229,100,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,171,1,0,227,0,2,64,227,171,1,0,227,0,2,64,227
bl _mono_create_corlib_exception_0
bl _p_6

	.byte 0,224,155,229,144,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,6,223,139,226,0,9,189,232,128,128,189,232

Lme_37:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_IDisposable_Dispose
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_IDisposable_Dispose:

	.byte 128,64,45,233,13,112,160,225,96,13,45,233,11,223,77,226,13,176,160,225,24,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 280
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,24,0,155,229,0,0,144,229
bl _p_60

	.byte 0,160,160,225,0,0,154,229,0,15,160,227,0,15,160,227,8,0,139,229,0,111,160,227,0,224,155,229,104,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,24,0,155,229,4,16,154,229,64,19,65,226,1,0,128,224,0,0,144,229
	.byte 0,96,160,225,64,83,64,226,128,3,85,227,25,0,0,42,5,17,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 284
	.byte 0,0,159,231,1,0,128,224,0,0,144,229,0,240,160,225,0,0,0,235,15,0,0,234,20,224,139,229,24,0,155,229
	.byte 32,0,139,229,24,0,155,229,0,0,144,229
bl _p_61

	.byte 0,16,160,225,32,0,155,229,49,255,47,225,0,224,155,229,236,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 20,192,155,229,12,240,160,225,0,224,155,229,8,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,11,223,139,226
	.byte 96,13,189,232,128,128,189,232

Lme_38:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_get_Current
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_get_Current:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,112,13,45,233,8,223,77,226,13,176,160,225,8,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 288
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,8,0,155,229,0,0,144,229
bl _p_62

	.byte 0,160,160,225,0,0,154,229,7,96,128,226,7,96,198,227,6,208,77,224,13,96,160,225,0,224,155,229,104,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,8,0,155,229,4,16,154,229,64,19,65,226,1,16,128,224,24,0,154,229
	.byte 6,32,160,225,0,0,134,224,16,32,154,229,20,48,154,229,51,255,47,225,8,80,154,229,128,3,85,227,24,0,0,10
	.byte 192,3,85,227,27,0,0,10,8,0,155,229,0,0,144,229
bl _p_63
bl _p_43

	.byte 24,16,154,229,6,32,160,225,1,16,134,224,24,16,139,229,16,0,139,229,2,15,128,226,20,0,139,229,16,0,154,229
	.byte 20,0,154,229,8,0,155,229,0,0,144,229
bl _p_64

	.byte 0,32,160,225,20,0,155,229,24,16,155,229
bl _mono_gsharedvt_value_copy

	.byte 16,0,155,229,0,64,160,225,10,0,0,234,24,0,154,229,6,16,160,225,0,0,134,224,0,64,144,229,5,0,0,234
	.byte 12,16,154,229,24,0,154,229,6,32,160,225,0,0,134,224,49,255,47,225,0,64,160,225,4,0,160,225,0,224,155,229
	.byte 68,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,223,139,226,112,13,189,232,128,128,189,232

Lme_39:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__ctor_int
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__ctor_int:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,64,9,45,233,11,223,77,226,13,176,160,225,12,0,139,229,16,16,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 292
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,12,0,155,229,0,0,144,229
bl _p_65

	.byte 0,96,160,225,0,0,150,229,0,15,160,227,0,15,160,227,8,0,139,229,0,224,155,229,104,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,12,0,155,229,0,224,155,229,128,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 12,0,155,229,16,16,155,229,4,32,150,229,64,35,66,226,2,0,128,224,0,16,128,229,12,0,155,229,24,0,139,229
bl _p_25

	.byte 32,0,139,229,0,224,155,229,188,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,32,16,155,229,1,0,160,225
	.byte 0,224,209,229
bl _p_26

	.byte 28,0,139,229,0,224,155,229,228,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,155,229,28,16,155,229
	.byte 8,32,150,229,64,35,66,226,2,0,128,224,0,16,128,229,0,224,155,229,16,225,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,11,223,139,226,64,9,189,232,128,128,189,232

Lme_3a:
.text
	.align 2
	.no_dead_strip Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__m__Finally3
Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__m__Finally3:

	.byte 128,64,45,233,13,112,160,225,0,13,45,233,5,223,77,226,13,176,160,225,12,0,139,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 296
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,12,0,155,229,0,0,144,229
bl _p_66

	.byte 0,160,160,225,0,0,154,229,0,15,160,227,0,15,160,227,8,0,139,229,0,224,155,229,100,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,12,0,155,229,0,31,224,227,4,16,154,229,64,19,65,226,1,0,128,224,0,31,224,227
	.byte 0,16,128,229,12,0,155,229,8,16,154,229,64,19,65,226,1,0,128,224,0,0,144,229,0,15,80,227,17,0,0,10
	.byte 12,0,155,229,8,16,154,229,64,19,65,226,1,0,128,224,0,16,144,229,1,0,160,225,0,16,145,229,0,128,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 240
	.byte 8,128,159,231,15,224,160,225,20,240,17,229,0,224,155,229,228,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 0,224,155,229,248,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,223,139,226,0,13,189,232,128,128,189,232

Lme_3b:
.text
	.align 2
	.no_dead_strip System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF:
.file 6 "/Library/Frameworks/Xamarin.iOS.framework/Versions/10.8.0.175/src/mono/mcs/class/corlib/System/Array.cs"
.loc 6 78 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,15,223,77,226,8,128,141,229,28,0,141,229,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 300
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,68,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,96,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,28,0,157,229,48,0,141,229,3,15,141,226,0,15,160,227,0,15,160,227,12,0,141,229,0,15,160,227
	.byte 16,0,141,229,3,15,141,226,44,0,141,229,8,0,157,229
bl _p_67

	.byte 0,32,160,225,44,0,157,229,48,16,157,229,2,128,160,225
bl _p_68

	.byte 3,15,141,226,5,15,141,226,12,0,157,229,20,0,141,229,16,0,157,229,24,0,141,229,0,224,157,229,208,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229
bl _p_67

	.byte 4,31,160,227,4,31,160,227
bl _p_7

	.byte 5,31,141,226,32,0,141,229,2,31,128,226,1,0,160,225,20,32,157,229,40,32,141,229,0,32,129,229,36,0,141,229
bl _p_16

	.byte 32,0,157,229,36,16,157,229,40,32,157,229,1,31,129,226,24,32,157,229,0,32,129,229,0,224,157,229,52,225,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,15,223,141,226,0,1,189,232,128,128,189,232

Lme_3c:
.text
	.align 2
	.no_dead_strip wrapper_delegate_invoke__Module_invoke_IServiceLocator
wrapper_delegate_invoke__Module_invoke_IServiceLocator:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,112,13,45,233,8,223,77,226,0,160,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 304
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,111,160,227,0,95,160,227,0,79,160,227
	.byte 0,191,160,227,0,15,160,227,8,0,141,229,0,15,160,227,12,0,141,229,0,224,157,229,96,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,124,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 308
	.byte 0,0,159,231,0,0,144,229,0,15,80,227,19,0,0,10,0,224,157,229,172,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,0,224,157,229,192,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
bl _p_69

	.byte 16,0,141,229,0,16,160,225,16,0,157,229,20,16,141,229,0,15,80,227,1,0,0,10,20,0,157,229
bl _p_6

	.byte 20,0,157,229,4,224,157,229,0,224,158,229,0,224,157,229,4,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 10,0,160,225,10,0,160,225,13,15,138,226,0,0,144,229,0,64,160,225,0,224,157,229,44,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,0,160,225,0,15,84,227,66,0,0,26,0,224,157,229,76,225,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,10,0,160,225,10,0,160,225,4,15,138,226,0,0,144,229,8,0,141,229,0,224,157,229
	.byte 116,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229,0,15,80,227,24,0,0,10,0,224,157,229
	.byte 148,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,157,229,10,16,160,225,10,16,160,225,7,31,138,226
	.byte 0,16,145,229,10,16,160,225,10,16,160,225,2,31,138,226,0,16,145,229,49,255,47,225,24,0,141,229,4,224,157,229
	.byte 0,224,158,229,0,224,157,229,220,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229,106,0,0,234
	.byte 0,224,157,229,248,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225,10,0,160,225,7,15,138,226
	.byte 0,0,144,229,10,0,160,225,10,0,160,225,2,15,138,226,0,0,144,229,48,255,47,225,24,0,141,229,4,224,157,229
	.byte 0,224,158,229,0,224,157,229,60,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,24,0,157,229,82,0,0,234
	.byte 0,224,157,229,88,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,0,160,225,12,0,148,229,0,80,160,225
	.byte 0,224,157,229,120,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,0,111,160,227,4,224,157,229,0,224,158,229
	.byte 0,224,157,229,152,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,0,160,225,6,0,160,225,12,0,148,229
	.byte 6,0,80,225,64,0,0,155,6,1,160,225,0,0,132,224,4,15,128,226,0,0,144,229,0,176,160,225,0,224,157,229
	.byte 212,226,158,229,0,0,94,227,0,224,158,21,0,0,160,225,11,0,160,225,28,0,141,229,11,0,160,225,15,224,160,225
	.byte 12,240,155,229,0,16,160,225,28,0,157,229,24,16,141,229,0,224,157,229,8,227,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,24,0,157,229,12,0,141,229,0,224,157,229,36,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 6,0,160,225,64,3,134,226,0,96,160,225,0,224,157,229,68,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 6,0,160,225,5,0,160,225,5,0,86,225,201,255,255,186,0,224,157,229,104,227,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,12,0,157,229,24,0,141,229,4,224,157,229,0,224,158,229,0,224,157,229,140,227,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,24,0,157,229,0,224,157,229,164,227,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 8,223,141,226,112,13,189,232,128,128,189,232,14,16,160,225,0,0,159,229
bl _p_70

	.byte 113,1,0,0

Lme_3d:
.text
	.align 2
	.no_dead_strip wrapper_delegate_begin_invoke__Module_begin_invoke_IAsyncResult__this___AsyncCallback_object_System_AsyncCallback_object
wrapper_delegate_begin_invoke__Module_begin_invoke_IAsyncResult__this___AsyncCallback_object_System_AsyncCallback_object:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,112,13,45,233,8,223,77,226,13,176,160,225,8,0,139,229,12,16,139,229,16,32,139,229
	.byte 0,0,159,229,0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 312
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,0,111,160,227,0,95,160,227,0,224,155,229
	.byte 84,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,224,155,229,0,224,158,229,0,224,155,229,112,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,3,79,160,227,0,15,84,227,1,0,0,26,0,175,160,227,8,0,0,234
	.byte 7,160,132,226,7,160,202,227,10,208,77,224,0,224,160,227,0,0,0,234,10,224,141,231,4,160,90,226,252,255,255,170
	.byte 13,160,160,225,10,0,160,225,10,96,160,225,0,224,155,229,196,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 10,0,160,225,10,80,160,225,0,224,155,229,224,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225
	.byte 3,15,139,226,0,0,138,229,0,224,155,229,0,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225
	.byte 1,15,138,226,0,80,160,225,0,224,155,229,32,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,5,0,160,225
	.byte 4,15,139,226,0,0,133,229,0,224,155,229,64,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,155,229
	.byte 10,16,160,225,10,16,160,225
bl _p_71

	.byte 24,0,139,229,4,224,155,229,0,224,158,229,0,224,155,229,112,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 24,0,155,229,0,224,155,229,136,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,223,139,226,112,13,189,232
	.byte 128,128,189,232

Lme_3e:
.text
	.align 2
	.no_dead_strip wrapper_delegate_end_invoke__Module_end_invoke_IServiceLocator__this___IAsyncResult_System_IAsyncResult
wrapper_delegate_end_invoke__Module_end_invoke_IServiceLocator__this___IAsyncResult_System_IAsyncResult:
.loc 4 1 0

	.byte 128,64,45,233,13,112,160,225,112,13,45,233,6,223,77,226,13,176,160,225,8,0,139,229,12,16,139,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 316
	.byte 0,0,159,231,0,0,139,229,0,224,155,229,0,224,158,229,4,224,139,229,0,111,160,227,0,95,160,227,0,224,155,229
	.byte 80,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,4,224,155,229,0,224,158,229,0,224,155,229,108,224,158,229
	.byte 0,0,94,227,0,224,158,21,0,0,160,225,2,79,160,227,0,15,84,227,1,0,0,26,0,175,160,227,8,0,0,234
	.byte 7,160,132,226,7,160,202,227,10,208,77,224,0,224,160,227,0,0,0,234,10,224,141,231,4,160,90,226,252,255,255,170
	.byte 13,160,160,225,10,0,160,225,10,96,160,225,0,224,155,229,192,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 10,0,160,225,10,80,160,225,0,224,155,229,220,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,10,0,160,225
	.byte 3,15,139,226,0,0,138,229,0,224,155,229,252,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,8,0,155,229
	.byte 10,16,160,225,10,16,160,225
bl _p_72

	.byte 16,0,139,229,4,224,155,229,0,224,158,229,0,224,155,229,44,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225
	.byte 16,0,155,229,0,224,155,229,68,225,158,229,0,0,94,227,0,224,158,21,0,0,160,225,6,223,139,226,112,13,189,232
	.byte 128,128,189,232

Lme_3f:
.text
ut_64:

	.byte 8,0,128,226
	b System_Array_InternalEnumerator_1_T_REF__ctor_System_Array

ut_end:
.section __TEXT, __const
_unbox_trampoline_p:

	.long 0
LDIFF_SYM3=ut_end - ut_64
	.long LDIFF_SYM3
.text
	.align 2
	.no_dead_strip System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
.loc 6 239 0 prologue_end

	.byte 128,64,45,233,13,112,160,225,0,1,45,233,9,223,77,226,8,128,141,229,12,0,141,229,16,16,141,229,0,0,159,229
	.byte 0,0,0,234
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 320
	.byte 0,0,159,231,0,0,141,229,0,224,157,229,0,224,158,229,4,224,141,229,0,224,157,229,72,224,158,229,0,0,94,227
	.byte 0,224,158,21,0,0,160,225,4,224,157,229,0,224,158,229,0,224,157,229,100,224,158,229,0,0,94,227,0,224,158,21
	.byte 0,0,160,225,12,0,157,229,16,16,157,229,24,16,141,229,0,16,128,229,0,16,160,225
bl _p_16

	.byte 24,0,157,229
.loc 6 240 0

	.byte 0,224,157,229,148,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,12,0,157,229,64,19,224,227,64,19,224,227
	.byte 4,16,128,229,0,224,157,229,184,224,158,229,0,0,94,227,0,224,158,21,0,0,160,225,9,223,141,226,0,1,189,232
	.byte 128,128,189,232

Lme_40:
.text
	.align 3
jit_code_end:

	.byte 0,0,0,0
.text
	.align 3
method_addresses:
	.no_dead_strip method_addresses
bl Microsoft_Practices_ServiceLocation_ActivationException__ctor
bl Microsoft_Practices_ServiceLocation_ActivationException__ctor_string
bl Microsoft_Practices_ServiceLocation_ActivationException__ctor_string_System_Exception
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl Microsoft_Practices_ServiceLocation_ServiceLocator_get_Current
bl Microsoft_Practices_ServiceLocation_ServiceLocator_SetLocatorProvider_Microsoft_Practices_ServiceLocation_ServiceLocatorProvider
bl Microsoft_Practices_ServiceLocation_ServiceLocator_get_IsLocationProviderSet
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetService_System_Type
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type_string
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_System_Type
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF_string
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_REF
bl method_addresses
bl method_addresses
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivationExceptionMessage_System_Exception_System_Type_string
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivateAllExceptionMessage_System_Exception_System_Type
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__ctor
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl Microsoft_Practices_ServiceLocation_Properties_Resources__ctor
bl Microsoft_Practices_ServiceLocation_Properties_Resources_get_ResourceManager
bl Microsoft_Practices_ServiceLocation_Properties_Resources_get_Culture
bl Microsoft_Practices_ServiceLocation_Properties_Resources_set_Culture_System_Globalization_CultureInfo
bl Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivateAllExceptionMessage
bl Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivationExceptionMessage
bl Microsoft_Practices_ServiceLocation_Properties_Resources_get_ServiceLocationProviderNotSetMessage
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerable_TService_GetEnumerator
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerable_GetEnumerator
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_MoveNext
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerator_TService_get_Current
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_Reset
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_IDisposable_Dispose
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_get_Current
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__m__Finally3
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT_string
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_GSHAREDVT
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerable_TService_GetEnumerator
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerable_GetEnumerator
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_MoveNext
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerator_TService_get_Current
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_Reset
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_IDisposable_Dispose
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_get_Current
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__ctor_int
bl Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__m__Finally3
bl System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
bl wrapper_delegate_invoke__Module_invoke_IServiceLocator
bl wrapper_delegate_begin_invoke__Module_begin_invoke_IAsyncResult__this___AsyncCallback_object_System_AsyncCallback_object
bl wrapper_delegate_end_invoke__Module_end_invoke_IServiceLocator__this___IAsyncResult_System_IAsyncResult
bl System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
method_addresses_end:

.section __TEXT, __const
	.align 3
unbox_trampolines:

	.long 64
unbox_trampolines_end:

	.long 0
.text
	.align 3
unbox_trampoline_addresses:
bl ut_64

	.long 0
.section __TEXT, __const
	.align 3
unwind_info:

	.byte 3,12,13,0,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,132,10,68,14,12,68,8,8
	.byte 14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,140,10,68,14,12,68,8,8
	.byte 14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,40,2,148,10,68,14,12,68,8,8
	.byte 14,8,68,11,32,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,3,56,1,10,68,14,12,68,8
	.byte 8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,148,10,68,14,12,68,8
	.byte 8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,24,2,152,10,68,14,12,68,8
	.byte 8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,40,2,168,10,68,14,12,68,8
	.byte 8,14,8,68,11,45,12,13,0,68,14,8,135,2,72,14,20,136,5,138,4,139,3,142,1,68,14,80,68,13,11,3
	.byte 164,1,10,68,13,13,14,20,68,8,8,8,10,8,11,14,8,68,11,45,12,13,0,68,14,8,135,2,72,14,20,136
	.byte 5,138,4,139,3,142,1,68,14,80,68,13,11,3,152,1,10,68,13,13,14,20,68,8,8,8,10,8,11,14,8,68
	.byte 11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,204,10,68,14,12,68,8,8,14,8,68
	.byte 11,35,12,13,0,68,14,8,135,2,72,14,16,134,4,136,3,142,1,68,14,40,2,176,10,68,14,16,68,8,6,8
	.byte 8,14,8,68,11,36,12,13,0,68,14,8,135,2,72,14,16,133,4,136,3,142,1,68,14,64,3,108,1,10,68,14
	.byte 16,68,8,5,8,8,14,8,68,11,36,12,13,0,68,14,8,135,2,72,14,16,134,4,136,3,142,1,68,14,64,3
	.byte 72,1,10,68,14,16,68,8,6,8,8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68
	.byte 14,32,2,100,10,68,14,12,68,8,8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68
	.byte 14,32,2,128,10,68,14,12,68,8,8,14,8,68,11,36,12,13,0,68,14,8,135,2,72,14,16,136,4,138,3,142
	.byte 1,68,14,40,3,180,1,10,68,14,16,68,8,8,8,10,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12
	.byte 136,3,142,1,68,14,24,2,120,10,68,14,12,68,8,8,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12
	.byte 136,3,142,1,68,14,32,2,212,10,68,14,12,68,8,8,14,8,68,11,36,12,13,0,68,14,8,135,2,72,14,16
	.byte 136,4,138,3,142,1,68,14,40,3,68,1,10,68,14,16,68,8,8,8,10,14,8,68,11,31,12,13,0,68,14,8
	.byte 135,2,72,14,12,136,3,142,1,68,14,40,2,112,10,68,14,12,68,8,8,14,8,68,11,49,12,13,0,68,14,8
	.byte 135,2,72,14,24,134,6,136,5,138,4,139,3,142,1,68,14,80,68,13,11,3,96,3,10,68,13,13,14,24,68,8
	.byte 6,8,8,8,10,8,11,14,8,68,11,31,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,84
	.byte 10,68,14,12,68,8,8,14,8,68,11,48,12,13,0,68,14,8,135,2,72,14,24,134,6,136,5,138,4,139,3,142
	.byte 1,68,14,48,68,13,11,2,184,10,68,13,13,14,24,68,8,6,8,8,8,10,8,11,14,8,68,11,31,12,13,0
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,168,10,68,14,12,68,8,8,14,8,68,11,53,12,13,0
	.byte 68,14,8,135,2,72,14,28,132,7,133,6,136,5,138,4,139,3,142,1,68,14,72,68,13,11,3,164,1,10,68,13
	.byte 13,14,28,68,8,4,8,5,8,8,8,10,8,11,14,8,68,11,49,12,13,0,68,14,8,135,2,72,14,24,132,6
	.byte 136,5,138,4,139,3,142,1,68,14,72,68,13,11,3,172,1,10,68,13,13,14,24,68,8,4,8,8,8,10,8,11
	.byte 14,8,68,11,48,12,13,0,68,14,8,135,2,72,14,24,133,6,134,5,136,4,139,3,142,1,68,14,64,68,13,11
	.byte 2,224,10,68,13,13,14,24,68,8,5,8,6,8,8,8,11,14,8,68,11,49,12,13,0,68,14,8,135,2,72,14
	.byte 24,134,6,136,5,138,4,139,3,142,1,68,14,56,68,13,11,3,172,1,10,68,13,13,14,24,68,8,6,8,8,8
	.byte 10,8,11,14,8,68,11,40,12,13,0,68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,48,68,13,11,2
	.byte 168,10,68,13,13,14,16,68,8,8,8,11,14,8,68,11,57,12,13,0,68,14,8,135,2,72,14,32,132,8,133,7
	.byte 134,6,136,5,138,4,139,3,142,1,68,14,104,68,13,11,3,0,5,10,68,13,13,14,32,68,8,4,8,5,8,6
	.byte 8,8,8,10,8,11,14,8,68,11,48,12,13,0,68,14,8,135,2,72,14,24,133,6,134,5,136,4,139,3,142,1
	.byte 68,14,48,68,13,11,2,216,10,68,13,13,14,24,68,8,5,8,6,8,8,8,11,14,8,68,11,40,12,13,0,68
	.byte 14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,40,68,13,11,2,132,10,68,13,13,14,16,68,8,8,8,11
	.byte 14,8,68,11,52,12,13,0,68,14,8,135,2,72,14,28,133,7,134,6,136,5,138,4,139,3,142,1,68,14,72,68
	.byte 13,11,2,252,10,68,13,13,14,28,68,8,5,8,6,8,8,8,10,8,11,14,8,68,11,57,12,13,0,68,14,8
	.byte 135,2,72,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,64,68,13,11,3,56,1,10,68,13,13
	.byte 14,32,68,8,4,8,5,8,6,8,8,8,10,8,11,14,8,68,11,45,12,13,0,68,14,8,135,2,72,14,20,134
	.byte 5,136,4,139,3,142,1,68,14,64,68,13,11,3,4,1,10,68,13,13,14,20,68,8,6,8,8,8,11,14,8,68
	.byte 11,44,12,13,0,68,14,8,135,2,72,14,20,136,5,138,4,139,3,142,1,68,14,40,68,13,11,2,236,10,68,13
	.byte 13,14,20,68,8,8,8,10,8,11,14,8,68,11,32,12,13,0,68,14,8,135,2,72,14,12,136,3,142,1,68,14
	.byte 72,3,44,1,10,68,14,12,68,8,8,14,8,68,11,52,12,13,0,68,14,8,135,2,72,14,32,132,8,133,7,134
	.byte 6,136,5,138,4,139,3,142,1,68,14,64,3,156,3,10,68,14,32,68,8,4,8,5,8,6,8,8,8,10,8,11
	.byte 14,8,68,11,57,12,13,0,68,14,8,135,2,72,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14
	.byte 64,68,13,11,3,124,1,10,68,13,13,14,32,68,8,4,8,5,8,6,8,8,8,10,8,11,14,8,68,11,57,12
	.byte 13,0,68,14,8,135,2,72,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,56,68,13,11,3,56
	.byte 1,10,68,13,13,14,32,68,8,4,8,5,8,6,8,8,8,10,8,11,14,8,68,11,31,12,13,0,68,14,8,135
	.byte 2,72,14,12,136,3,142,1,68,14,48,2,176,10,68,14,12,68,8,8,14,8,68,11

.text
	.align 4
plt:
mono_aot_Microsoft_Practices_ServiceLocation_plt:
	.no_dead_strip plt_System_Exception__ctor
plt_System_Exception__ctor:
_p_1:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 336,1046
	.no_dead_strip plt_System_Exception__ctor_string
plt_System_Exception__ctor_string:
_p_2:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 340,1051
	.no_dead_strip plt_System_Exception__ctor_string_System_Exception
plt_System_Exception__ctor_string_System_Exception:
_p_3:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 344,1056
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_ServiceLocator_get_IsLocationProviderSet
plt_Microsoft_Practices_ServiceLocation_ServiceLocator_get_IsLocationProviderSet:
_p_4:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 348,1061
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_Properties_Resources_get_ServiceLocationProviderNotSetMessage
plt_Microsoft_Practices_ServiceLocation_Properties_Resources_get_ServiceLocationProviderNotSetMessage:
_p_5:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 352,1063
	.no_dead_strip plt__jit_icall_mono_arch_throw_exception
plt__jit_icall_mono_arch_throw_exception:
_p_6:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 356,1065
	.no_dead_strip plt_wrapper_alloc_object_AllocSmall_intptr_intptr
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
_p_7:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 360,1093
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_ActivationException__ctor_string_System_Exception
plt_Microsoft_Practices_ServiceLocation_ActivationException__ctor_string_System_Exception:
_p_8:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 364,1101
	.no_dead_strip plt__rgctx_fetch_0
plt__rgctx_fetch_0:
_p_9:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 368,1126
	.no_dead_strip plt__rgctx_fetch_1
plt__rgctx_fetch_1:
_p_10:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 372,1134
	.no_dead_strip plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr:
_p_11:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 376,1142
	.no_dead_strip plt__rgctx_fetch_2
plt__rgctx_fetch_2:
_p_12:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 380,1173
	.no_dead_strip plt__rgctx_fetch_3
plt__rgctx_fetch_3:
_p_13:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 384,1181
	.no_dead_strip plt__rgctx_fetch_4
plt__rgctx_fetch_4:
_p_14:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 388,1219
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int
plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int:
_p_15:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 392,1227
	.no_dead_strip plt_wrapper_write_barrier_object_wbarrier_conc_intptr
plt_wrapper_write_barrier_object_wbarrier_conc_intptr:
_p_16:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 396,1246
	.no_dead_strip plt_System_Globalization_CultureInfo_get_CurrentUICulture
plt_System_Globalization_CultureInfo_get_CurrentUICulture:
_p_17:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 400,1253
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivationExceptionMessage
plt_Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivationExceptionMessage:
_p_18:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 404,1258
	.no_dead_strip plt_wrapper_alloc_object_AllocVector_intptr_intptr
plt_wrapper_alloc_object_AllocVector_intptr_intptr:
_p_19:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 408,1260
	.no_dead_strip plt_string_Format_System_IFormatProvider_string_object__
plt_string_Format_System_IFormatProvider_string_object__:
_p_20:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 412,1268
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivateAllExceptionMessage
plt_Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivateAllExceptionMessage:
_p_21:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 416,1273
	.no_dead_strip plt_object_ReferenceEquals_object_object
plt_object_ReferenceEquals_object_object:
_p_22:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 420,1275
	.no_dead_strip plt_System_Resources_ResourceManager__ctor_string_System_Reflection_Assembly
plt_System_Resources_ResourceManager__ctor_string_System_Reflection_Assembly:
_p_23:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 424,1280
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_Properties_Resources_get_ResourceManager
plt_Microsoft_Practices_ServiceLocation_Properties_Resources_get_ResourceManager:
_p_24:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 428,1285
	.no_dead_strip plt_System_Threading_Thread_get_CurrentThread
plt_System_Threading_Thread_get_CurrentThread:
_p_25:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 432,1287
	.no_dead_strip plt_System_Threading_Thread_get_ManagedThreadId
plt_System_Threading_Thread_get_ManagedThreadId:
_p_26:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 436,1292
	.no_dead_strip plt__rgctx_fetch_5
plt__rgctx_fetch_5:
_p_27:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 440,1328
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int_0
plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int_0:
_p_28:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 444,1336
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerable_TService_GetEnumerator
plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerable_TService_GetEnumerator:
_p_29:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 448,1355
	.no_dead_strip plt__rgctx_fetch_6
plt__rgctx_fetch_6:
_p_30:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 452,1392
	.no_dead_strip plt__rgctx_fetch_7
plt__rgctx_fetch_7:
_p_31:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 456,1400
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__m__Finally3
plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__m__Finally3:
_p_32:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 460,1408
	.no_dead_strip plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_IDisposable_Dispose
plt_Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_IDisposable_Dispose:
_p_33:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 464,1427
	.no_dead_strip plt__rgctx_fetch_8
plt__rgctx_fetch_8:
_p_34:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 468,1463
	.no_dead_strip plt__rgctx_fetch_9
plt__rgctx_fetch_9:
_p_35:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 472,1520
	.no_dead_strip plt__jit_icall_mono_object_castclass_unbox
plt__jit_icall_mono_object_castclass_unbox:
_p_36:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 476,1528
	.no_dead_strip plt__rgctx_fetch_10
plt__rgctx_fetch_10:
_p_37:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 480,1558
	.no_dead_strip plt__rgctx_fetch_11
plt__rgctx_fetch_11:
_p_38:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 484,1583
	.no_dead_strip plt__rgctx_fetch_12
plt__rgctx_fetch_12:
_p_39:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 488,1640
	.no_dead_strip plt__rgctx_fetch_13
plt__rgctx_fetch_13:
_p_40:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 492,1648
	.no_dead_strip plt__rgctx_fetch_14
plt__rgctx_fetch_14:
_p_41:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 496,1680
	.no_dead_strip plt__rgctx_fetch_15
plt__rgctx_fetch_15:
_p_42:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 500,1710
	.no_dead_strip plt_wrapper_alloc_object_Alloc_intptr
plt_wrapper_alloc_object_Alloc_intptr:
_p_43:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 504,1718
	.no_dead_strip plt__rgctx_fetch_16
plt__rgctx_fetch_16:
_p_44:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 508,1726
	.no_dead_strip plt__rgctx_fetch_17
plt__rgctx_fetch_17:
_p_45:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 512,1767
	.no_dead_strip plt__rgctx_fetch_18
plt__rgctx_fetch_18:
_p_46:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 516,1808
	.no_dead_strip plt__rgctx_fetch_19
plt__rgctx_fetch_19:
_p_47:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 520,1816
	.no_dead_strip plt__rgctx_fetch_20
plt__rgctx_fetch_20:
_p_48:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 524,1857
	.no_dead_strip plt__rgctx_fetch_21
plt__rgctx_fetch_21:
_p_49:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 528,1883
	.no_dead_strip plt__rgctx_fetch_22
plt__rgctx_fetch_22:
_p_50:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 532,1937
	.no_dead_strip plt__rgctx_fetch_23
plt__rgctx_fetch_23:
_p_51:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 536,2020
	.no_dead_strip plt__rgctx_fetch_24
plt__rgctx_fetch_24:
_p_52:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 540,2028
	.no_dead_strip plt__rgctx_fetch_25
plt__rgctx_fetch_25:
_p_53:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 544,2068
	.no_dead_strip plt__rgctx_fetch_26
plt__rgctx_fetch_26:
_p_54:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 548,2099
	.no_dead_strip plt__rgctx_fetch_27
plt__rgctx_fetch_27:
_p_55:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 552,2107
	.no_dead_strip plt__rgctx_fetch_28
plt__rgctx_fetch_28:
_p_56:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 556,2135
	.no_dead_strip plt__rgctx_fetch_29
plt__rgctx_fetch_29:
_p_57:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 560,2181
	.no_dead_strip plt__rgctx_fetch_30
plt__rgctx_fetch_30:
_p_58:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 564,2224
	.no_dead_strip plt__rgctx_fetch_31
plt__rgctx_fetch_31:
_p_59:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 568,2250
	.no_dead_strip plt__rgctx_fetch_32
plt__rgctx_fetch_32:
_p_60:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 572,2294
	.no_dead_strip plt__rgctx_fetch_33
plt__rgctx_fetch_33:
_p_61:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 576,2325
	.no_dead_strip plt__rgctx_fetch_34
plt__rgctx_fetch_34:
_p_62:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 580,2371
	.no_dead_strip plt__rgctx_fetch_35
plt__rgctx_fetch_35:
_p_63:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 584,2422
	.no_dead_strip plt__rgctx_fetch_36
plt__rgctx_fetch_36:
_p_64:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 588,2430
	.no_dead_strip plt__rgctx_fetch_37
plt__rgctx_fetch_37:
_p_65:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 592,2456
	.no_dead_strip plt__rgctx_fetch_38
plt__rgctx_fetch_38:
_p_66:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 596,2510
	.no_dead_strip plt__rgctx_fetch_39
plt__rgctx_fetch_39:
_p_67:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 600,2574
	.no_dead_strip plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
plt_System_Array_InternalEnumerator_1_T_REF__ctor_System_Array:
_p_68:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 604,2582
	.no_dead_strip plt__jit_icall_mono_thread_interruption_checkpoint
plt__jit_icall_mono_thread_interruption_checkpoint:
_p_69:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 608,2601
	.no_dead_strip plt__jit_icall_mono_arch_throw_corlib_exception
plt__jit_icall_mono_arch_throw_corlib_exception:
_p_70:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 612,2639
	.no_dead_strip plt__jit_icall_mono_delegate_begin_invoke
plt__jit_icall_mono_delegate_begin_invoke:
_p_71:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 616,2674
	.no_dead_strip plt__jit_icall_mono_delegate_end_invoke
plt__jit_icall_mono_delegate_end_invoke:
_p_72:

	.byte 0,192,159,229,12,240,159,231
	.long mono_aot_Microsoft_Practices_ServiceLocation_got - . + 620,2703
plt_end:
.section __DATA, __bss
	.align 3
.lcomm mono_aot_Microsoft_Practices_ServiceLocation_got, 628
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
	.asciz "7D3316BA-C928-4A64-AD5F-824E0C3D6D36"
.section __TEXT, __const
	.align 2
assembly_name:
	.asciz "Microsoft.Practices.ServiceLocation"
.data
	.align 3
_mono_aot_file_info:

	.long 137,0
	.align 2
	.long mono_aot_Microsoft_Practices_ServiceLocation_got
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

	.long 84,628,73,65,70,923871743,0,8030
	.long 128,4,4,10,0,15,9400,1360
	.long 1152,768,0,984,1120,856,0,600
	.long 120,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0
	.byte 114,11,197,102,253,102,86,125,10,139,152,6,214,168,78,189
	.globl _mono_aot_module_Microsoft_Practices_ServiceLocation_info
	.align 2
_mono_aot_module_Microsoft_Practices_ServiceLocation_info:
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
LTDIE_3:

	.byte 17
	.asciz "System_Collections_IDictionary"

	.byte 8,7
	.asciz "System_Collections_IDictionary"

LDIFF_SYM7=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM7
LTDIE_3_POINTER:

	.byte 13
LDIFF_SYM8=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM8
LTDIE_3_REFERENCE:

	.byte 14
LDIFF_SYM9=LTDIE_3 - Ldebug_info_start
	.long LDIFF_SYM9
LTDIE_5:

	.byte 5
	.asciz "System_ValueType"

	.byte 8,16
LDIFF_SYM10=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM10
	.byte 2,35,0,0,7
	.asciz "System_ValueType"

LDIFF_SYM11=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM11
LTDIE_5_POINTER:

	.byte 13
LDIFF_SYM12=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM12
LTDIE_5_REFERENCE:

	.byte 14
LDIFF_SYM13=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM13
LTDIE_4:

	.byte 5
	.asciz "System_Int32"

	.byte 12,16
LDIFF_SYM14=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM14
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM15=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM15
	.byte 2,35,8,0,7
	.asciz "System_Int32"

LDIFF_SYM16=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM16
LTDIE_4_POINTER:

	.byte 13
LDIFF_SYM17=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM17
LTDIE_4_REFERENCE:

	.byte 14
LDIFF_SYM18=LTDIE_4 - Ldebug_info_start
	.long LDIFF_SYM18
LTDIE_7:

	.byte 17
	.asciz "System_Collections_Generic_IList`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IList`1"

LDIFF_SYM19=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM19
LTDIE_7_POINTER:

	.byte 13
LDIFF_SYM20=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM20
LTDIE_7_REFERENCE:

	.byte 14
LDIFF_SYM21=LTDIE_7 - Ldebug_info_start
	.long LDIFF_SYM21
LTDIE_10:

	.byte 17
	.asciz "System_Collections_Generic_IEqualityComparer`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IEqualityComparer`1"

LDIFF_SYM22=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM22
LTDIE_10_POINTER:

	.byte 13
LDIFF_SYM23=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM23
LTDIE_10_REFERENCE:

	.byte 14
LDIFF_SYM24=LTDIE_10 - Ldebug_info_start
	.long LDIFF_SYM24
LTDIE_11:

	.byte 5
	.asciz "_KeyCollection"

	.byte 12,16
LDIFF_SYM25=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM25
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM26=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM26
	.byte 2,35,8,0,7
	.asciz "_KeyCollection"

LDIFF_SYM27=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM27
LTDIE_11_POINTER:

	.byte 13
LDIFF_SYM28=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM28
LTDIE_11_REFERENCE:

	.byte 14
LDIFF_SYM29=LTDIE_11 - Ldebug_info_start
	.long LDIFF_SYM29
LTDIE_12:

	.byte 5
	.asciz "_ValueCollection"

	.byte 12,16
LDIFF_SYM30=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM30
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM31=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM31
	.byte 2,35,8,0,7
	.asciz "_ValueCollection"

LDIFF_SYM32=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM32
LTDIE_12_POINTER:

	.byte 13
LDIFF_SYM33=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM33
LTDIE_12_REFERENCE:

	.byte 14
LDIFF_SYM34=LTDIE_12 - Ldebug_info_start
	.long LDIFF_SYM34
LTDIE_9:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 48,16
LDIFF_SYM35=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM35
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM36=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM36
	.byte 2,35,8,6
	.asciz "entries"

LDIFF_SYM37=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM37
	.byte 2,35,12,6
	.asciz "count"

LDIFF_SYM38=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM38
	.byte 2,35,32,6
	.asciz "version"

LDIFF_SYM39=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM39
	.byte 2,35,36,6
	.asciz "freeList"

LDIFF_SYM40=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM40
	.byte 2,35,40,6
	.asciz "freeCount"

LDIFF_SYM41=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM41
	.byte 2,35,44,6
	.asciz "comparer"

LDIFF_SYM42=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM42
	.byte 2,35,16,6
	.asciz "keys"

LDIFF_SYM43=LTDIE_11_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM43
	.byte 2,35,20,6
	.asciz "values"

LDIFF_SYM44=LTDIE_12_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM44
	.byte 2,35,24,6
	.asciz "_syncRoot"

LDIFF_SYM45=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM45
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM46=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM46
LTDIE_9_POINTER:

	.byte 13
LDIFF_SYM47=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM47
LTDIE_9_REFERENCE:

	.byte 14
LDIFF_SYM48=LTDIE_9 - Ldebug_info_start
	.long LDIFF_SYM48
LTDIE_13:

	.byte 17
	.asciz "System_Runtime_Serialization_IFormatterConverter"

	.byte 8,7
	.asciz "System_Runtime_Serialization_IFormatterConverter"

LDIFF_SYM49=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM49
LTDIE_13_POINTER:

	.byte 13
LDIFF_SYM50=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM50
LTDIE_13_REFERENCE:

	.byte 14
LDIFF_SYM51=LTDIE_13 - Ldebug_info_start
	.long LDIFF_SYM51
LTDIE_15:

	.byte 5
	.asciz "System_Reflection_MemberInfo"

	.byte 8,16
LDIFF_SYM52=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM52
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MemberInfo"

LDIFF_SYM53=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM53
LTDIE_15_POINTER:

	.byte 13
LDIFF_SYM54=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM54
LTDIE_15_REFERENCE:

	.byte 14
LDIFF_SYM55=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM55
LTDIE_14:

	.byte 5
	.asciz "System_Type"

	.byte 12,16
LDIFF_SYM56=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM56
	.byte 2,35,0,6
	.asciz "_impl"

LDIFF_SYM57=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM57
	.byte 2,35,8,0,7
	.asciz "System_Type"

LDIFF_SYM58=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM58
LTDIE_14_POINTER:

	.byte 13
LDIFF_SYM59=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM59
LTDIE_14_REFERENCE:

	.byte 14
LDIFF_SYM60=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM60
LTDIE_16:

	.byte 5
	.asciz "System_Boolean"

	.byte 9,16
LDIFF_SYM61=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM61
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM62=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM62
	.byte 2,35,8,0,7
	.asciz "System_Boolean"

LDIFF_SYM63=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM63
LTDIE_16_POINTER:

	.byte 13
LDIFF_SYM64=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM64
LTDIE_16_REFERENCE:

	.byte 14
LDIFF_SYM65=LTDIE_16 - Ldebug_info_start
	.long LDIFF_SYM65
LTDIE_8:

	.byte 5
	.asciz "System_Runtime_Serialization_SerializationInfo"

	.byte 48,16
LDIFF_SYM66=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM66
	.byte 2,35,0,6
	.asciz "m_members"

LDIFF_SYM67=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM67
	.byte 2,35,8,6
	.asciz "m_data"

LDIFF_SYM68=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM68
	.byte 2,35,12,6
	.asciz "m_types"

LDIFF_SYM69=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM69
	.byte 2,35,16,6
	.asciz "m_nameToIndex"

LDIFF_SYM70=LTDIE_9_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM70
	.byte 2,35,20,6
	.asciz "m_currMember"

LDIFF_SYM71=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM71
	.byte 2,35,40,6
	.asciz "m_converter"

LDIFF_SYM72=LTDIE_13_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM72
	.byte 2,35,24,6
	.asciz "m_fullTypeName"

LDIFF_SYM73=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM73
	.byte 2,35,28,6
	.asciz "m_assemName"

LDIFF_SYM74=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM74
	.byte 2,35,32,6
	.asciz "objectType"

LDIFF_SYM75=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM75
	.byte 2,35,36,6
	.asciz "isFullTypeNameSetExplicit"

LDIFF_SYM76=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM76
	.byte 2,35,44,6
	.asciz "isAssemblyNameSetExplicit"

LDIFF_SYM77=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM77
	.byte 2,35,45,6
	.asciz "requireSameTokenInPartialTrust"

LDIFF_SYM78=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM78
	.byte 2,35,46,0,7
	.asciz "System_Runtime_Serialization_SerializationInfo"

LDIFF_SYM79=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM79
LTDIE_8_POINTER:

	.byte 13
LDIFF_SYM80=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM80
LTDIE_8_REFERENCE:

	.byte 14
LDIFF_SYM81=LTDIE_8 - Ldebug_info_start
	.long LDIFF_SYM81
LTDIE_18:

	.byte 5
	.asciz "System_Reflection_TypeInfo"

	.byte 12,16
LDIFF_SYM82=LTDIE_14 - Ldebug_info_start
	.long LDIFF_SYM82
	.byte 2,35,0,0,7
	.asciz "System_Reflection_TypeInfo"

LDIFF_SYM83=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM83
LTDIE_18_POINTER:

	.byte 13
LDIFF_SYM84=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM84
LTDIE_18_REFERENCE:

	.byte 14
LDIFF_SYM85=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM85
LTDIE_23:

	.byte 5
	.asciz "System_Reflection_MethodBase"

	.byte 8,16
LDIFF_SYM86=LTDIE_15 - Ldebug_info_start
	.long LDIFF_SYM86
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodBase"

LDIFF_SYM87=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM87
LTDIE_23_POINTER:

	.byte 13
LDIFF_SYM88=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM88
LTDIE_23_REFERENCE:

	.byte 14
LDIFF_SYM89=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM89
LTDIE_22:

	.byte 5
	.asciz "System_Reflection_ConstructorInfo"

	.byte 8,16
LDIFF_SYM90=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM90
	.byte 2,35,0,0,7
	.asciz "System_Reflection_ConstructorInfo"

LDIFF_SYM91=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM91
LTDIE_22_POINTER:

	.byte 13
LDIFF_SYM92=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM92
LTDIE_22_REFERENCE:

	.byte 14
LDIFF_SYM93=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM93
LTDIE_21:

	.byte 5
	.asciz "System_Reflection_RuntimeConstructorInfo"

	.byte 8,16
LDIFF_SYM94=LTDIE_22 - Ldebug_info_start
	.long LDIFF_SYM94
	.byte 2,35,0,0,7
	.asciz "System_Reflection_RuntimeConstructorInfo"

LDIFF_SYM95=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM95
LTDIE_21_POINTER:

	.byte 13
LDIFF_SYM96=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM96
LTDIE_21_REFERENCE:

	.byte 14
LDIFF_SYM97=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM97
LTDIE_20:

	.byte 5
	.asciz "System_Reflection_MonoCMethod"

	.byte 20,16
LDIFF_SYM98=LTDIE_21 - Ldebug_info_start
	.long LDIFF_SYM98
	.byte 2,35,0,6
	.asciz "mhandle"

LDIFF_SYM99=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM99
	.byte 2,35,8,6
	.asciz "name"

LDIFF_SYM100=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM100
	.byte 2,35,12,6
	.asciz "reftype"

LDIFF_SYM101=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM101
	.byte 2,35,16,0,7
	.asciz "System_Reflection_MonoCMethod"

LDIFF_SYM102=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM102
LTDIE_20_POINTER:

	.byte 13
LDIFF_SYM103=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM103
LTDIE_20_REFERENCE:

	.byte 14
LDIFF_SYM104=LTDIE_20 - Ldebug_info_start
	.long LDIFF_SYM104
LTDIE_19:

	.byte 5
	.asciz "System_MonoTypeInfo"

	.byte 16,16
LDIFF_SYM105=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM105
	.byte 2,35,0,6
	.asciz "full_name"

LDIFF_SYM106=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM106
	.byte 2,35,8,6
	.asciz "default_ctor"

LDIFF_SYM107=LTDIE_20_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM107
	.byte 2,35,12,0,7
	.asciz "System_MonoTypeInfo"

LDIFF_SYM108=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM108
LTDIE_19_POINTER:

	.byte 13
LDIFF_SYM109=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM109
LTDIE_19_REFERENCE:

	.byte 14
LDIFF_SYM110=LTDIE_19 - Ldebug_info_start
	.long LDIFF_SYM110
LTDIE_17:

	.byte 5
	.asciz "System_RuntimeType"

	.byte 24,16
LDIFF_SYM111=LTDIE_18 - Ldebug_info_start
	.long LDIFF_SYM111
	.byte 2,35,0,6
	.asciz "type_info"

LDIFF_SYM112=LTDIE_19_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM112
	.byte 2,35,12,6
	.asciz "GenericCache"

LDIFF_SYM113=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM113
	.byte 2,35,16,6
	.asciz "m_serializationCtor"

LDIFF_SYM114=LTDIE_21_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM114
	.byte 2,35,20,0,7
	.asciz "System_RuntimeType"

LDIFF_SYM115=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM115
LTDIE_17_POINTER:

	.byte 13
LDIFF_SYM116=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM116
LTDIE_17_REFERENCE:

	.byte 14
LDIFF_SYM117=LTDIE_17 - Ldebug_info_start
	.long LDIFF_SYM117
LTDIE_27:

	.byte 5
	.asciz "System_Reflection_MethodInfo"

	.byte 8,16
LDIFF_SYM118=LTDIE_23 - Ldebug_info_start
	.long LDIFF_SYM118
	.byte 2,35,0,0,7
	.asciz "System_Reflection_MethodInfo"

LDIFF_SYM119=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM119
LTDIE_27_POINTER:

	.byte 13
LDIFF_SYM120=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM120
LTDIE_27_REFERENCE:

	.byte 14
LDIFF_SYM121=LTDIE_27 - Ldebug_info_start
	.long LDIFF_SYM121
LTDIE_28:

	.byte 5
	.asciz "System_DelegateData"

	.byte 20,16
LDIFF_SYM122=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM122
	.byte 2,35,0,6
	.asciz "target_type"

LDIFF_SYM123=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM123
	.byte 2,35,8,6
	.asciz "method_name"

LDIFF_SYM124=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM124
	.byte 2,35,12,6
	.asciz "curried_first_arg"

LDIFF_SYM125=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM125
	.byte 2,35,16,0,7
	.asciz "System_DelegateData"

LDIFF_SYM126=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM126
LTDIE_28_POINTER:

	.byte 13
LDIFF_SYM127=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM127
LTDIE_28_REFERENCE:

	.byte 14
LDIFF_SYM128=LTDIE_28 - Ldebug_info_start
	.long LDIFF_SYM128
LTDIE_26:

	.byte 5
	.asciz "System_Delegate"

	.byte 52,16
LDIFF_SYM129=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM129
	.byte 2,35,0,6
	.asciz "method_ptr"

LDIFF_SYM130=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM130
	.byte 2,35,8,6
	.asciz "invoke_impl"

LDIFF_SYM131=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM131
	.byte 2,35,12,6
	.asciz "m_target"

LDIFF_SYM132=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM132
	.byte 2,35,16,6
	.asciz "method"

LDIFF_SYM133=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM133
	.byte 2,35,20,6
	.asciz "delegate_trampoline"

LDIFF_SYM134=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM134
	.byte 2,35,24,6
	.asciz "extra_arg"

LDIFF_SYM135=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM135
	.byte 2,35,28,6
	.asciz "method_code"

LDIFF_SYM136=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM136
	.byte 2,35,32,6
	.asciz "method_info"

LDIFF_SYM137=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM137
	.byte 2,35,36,6
	.asciz "original_method_info"

LDIFF_SYM138=LTDIE_27_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM138
	.byte 2,35,40,6
	.asciz "data"

LDIFF_SYM139=LTDIE_28_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM139
	.byte 2,35,44,6
	.asciz "method_is_virtual"

LDIFF_SYM140=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM140
	.byte 2,35,48,0,7
	.asciz "System_Delegate"

LDIFF_SYM141=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM141
LTDIE_26_POINTER:

	.byte 13
LDIFF_SYM142=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM142
LTDIE_26_REFERENCE:

	.byte 14
LDIFF_SYM143=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM143
LTDIE_25:

	.byte 5
	.asciz "System_MulticastDelegate"

	.byte 56,16
LDIFF_SYM144=LTDIE_26 - Ldebug_info_start
	.long LDIFF_SYM144
	.byte 2,35,0,6
	.asciz "delegates"

LDIFF_SYM145=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM145
	.byte 2,35,52,0,7
	.asciz "System_MulticastDelegate"

LDIFF_SYM146=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM146
LTDIE_25_POINTER:

	.byte 13
LDIFF_SYM147=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM147
LTDIE_25_REFERENCE:

	.byte 14
LDIFF_SYM148=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM148
LTDIE_24:

	.byte 5
	.asciz "System_EventHandler`1"

	.byte 56,16
LDIFF_SYM149=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM149
	.byte 2,35,0,0,7
	.asciz "System_EventHandler`1"

LDIFF_SYM150=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM150
LTDIE_24_POINTER:

	.byte 13
LDIFF_SYM151=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM151
LTDIE_24_REFERENCE:

	.byte 14
LDIFF_SYM152=LTDIE_24 - Ldebug_info_start
	.long LDIFF_SYM152
LTDIE_6:

	.byte 5
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

	.byte 28,16
LDIFF_SYM153=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM153
	.byte 2,35,0,6
	.asciz "m_serializedStates"

LDIFF_SYM154=LTDIE_7_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM154
	.byte 2,35,8,6
	.asciz "m_savedSerializationInfo"

LDIFF_SYM155=LTDIE_8_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM155
	.byte 2,35,12,6
	.asciz "m_realObject"

LDIFF_SYM156=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM156
	.byte 2,35,16,6
	.asciz "m_realType"

LDIFF_SYM157=LTDIE_17_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM157
	.byte 2,35,20,6
	.asciz "SerializeObjectState"

LDIFF_SYM158=LTDIE_24_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM158
	.byte 2,35,24,0,7
	.asciz "System_Runtime_Serialization_SafeSerializationManager"

LDIFF_SYM159=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM159
LTDIE_6_POINTER:

	.byte 13
LDIFF_SYM160=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM160
LTDIE_6_REFERENCE:

	.byte 14
LDIFF_SYM161=LTDIE_6 - Ldebug_info_start
	.long LDIFF_SYM161
LTDIE_1:

	.byte 5
	.asciz "System_Exception"

	.byte 68,16
LDIFF_SYM162=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM162
	.byte 2,35,0,6
	.asciz "_className"

LDIFF_SYM163=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM163
	.byte 2,35,8,6
	.asciz "_message"

LDIFF_SYM164=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM164
	.byte 2,35,12,6
	.asciz "_data"

LDIFF_SYM165=LTDIE_3_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM165
	.byte 2,35,16,6
	.asciz "_innerException"

LDIFF_SYM166=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM166
	.byte 2,35,20,6
	.asciz "_helpURL"

LDIFF_SYM167=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM167
	.byte 2,35,24,6
	.asciz "_stackTrace"

LDIFF_SYM168=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM168
	.byte 2,35,28,6
	.asciz "_stackTraceString"

LDIFF_SYM169=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM169
	.byte 2,35,32,6
	.asciz "_remoteStackTraceString"

LDIFF_SYM170=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM170
	.byte 2,35,36,6
	.asciz "_remoteStackIndex"

LDIFF_SYM171=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM171
	.byte 2,35,40,6
	.asciz "_dynamicMethods"

LDIFF_SYM172=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM172
	.byte 2,35,44,6
	.asciz "_HResult"

LDIFF_SYM173=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM173
	.byte 2,35,48,6
	.asciz "_source"

LDIFF_SYM174=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM174
	.byte 2,35,52,6
	.asciz "_safeSerializationManager"

LDIFF_SYM175=LTDIE_6_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM175
	.byte 2,35,56,6
	.asciz "captured_traces"

LDIFF_SYM176=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM176
	.byte 2,35,60,6
	.asciz "native_trace_ips"

LDIFF_SYM177=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM177
	.byte 2,35,64,0,7
	.asciz "System_Exception"

LDIFF_SYM178=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM178
LTDIE_1_POINTER:

	.byte 13
LDIFF_SYM179=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM179
LTDIE_1_REFERENCE:

	.byte 14
LDIFF_SYM180=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM180
LTDIE_0:

	.byte 5
	.asciz "Microsoft_Practices_ServiceLocation_ActivationException"

	.byte 68,16
LDIFF_SYM181=LTDIE_1 - Ldebug_info_start
	.long LDIFF_SYM181
	.byte 2,35,0,0,7
	.asciz "Microsoft_Practices_ServiceLocation_ActivationException"

LDIFF_SYM182=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM182
LTDIE_0_POINTER:

	.byte 13
LDIFF_SYM183=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM183
LTDIE_0_REFERENCE:

	.byte 14
LDIFF_SYM184=LTDIE_0 - Ldebug_info_start
	.long LDIFF_SYM184
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ActivationException:.ctor"
	.asciz "Microsoft_Practices_ServiceLocation_ActivationException__ctor"

	.byte 1,13
	.long Microsoft_Practices_ServiceLocation_ActivationException__ctor
	.long Lme_0

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM185=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM185
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM186=Lfde0_end - Lfde0_start
	.long LDIFF_SYM186
Lfde0_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ActivationException__ctor

LDIFF_SYM187=Lme_0 - Microsoft_Practices_ServiceLocation_ActivationException__ctor
	.long LDIFF_SYM187
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,132,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde0_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ActivationException:.ctor"
	.asciz "Microsoft_Practices_ServiceLocation_ActivationException__ctor_string"

	.byte 1,21
	.long Microsoft_Practices_ServiceLocation_ActivationException__ctor_string
	.long Lme_1

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM188=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM188
	.byte 2,125,8,3
	.asciz "message"

LDIFF_SYM189=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM189
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM190=Lfde1_end - Lfde1_start
	.long LDIFF_SYM190
Lfde1_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ActivationException__ctor_string

LDIFF_SYM191=Lme_1 - Microsoft_Practices_ServiceLocation_ActivationException__ctor_string
	.long LDIFF_SYM191
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,140,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde1_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ActivationException:.ctor"
	.asciz "Microsoft_Practices_ServiceLocation_ActivationException__ctor_string_System_Exception"

	.byte 1,32
	.long Microsoft_Practices_ServiceLocation_ActivationException__ctor_string_System_Exception
	.long Lme_2

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM192=LTDIE_0_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM192
	.byte 2,125,8,3
	.asciz "message"

LDIFF_SYM193=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM193
	.byte 2,125,12,3
	.asciz "innerException"

LDIFF_SYM194=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM194
	.byte 2,125,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM195=Lfde2_end - Lfde2_start
	.long LDIFF_SYM195
Lfde2_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ActivationException__ctor_string_System_Exception

LDIFF_SYM196=Lme_2 - Microsoft_Practices_ServiceLocation_ActivationException__ctor_string_System_Exception
	.long LDIFF_SYM196
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,40,2,148,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde2_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocator:get_Current"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocator_get_Current"

	.byte 2,22
	.long Microsoft_Practices_ServiceLocation_ServiceLocator_get_Current
	.long Lme_9

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM197=Lfde3_end - Lfde3_start
	.long LDIFF_SYM197
Lfde3_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocator_get_Current

LDIFF_SYM198=Lme_9 - Microsoft_Practices_ServiceLocation_ServiceLocator_get_Current
	.long LDIFF_SYM198
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,3,56,1,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde3_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_29:

	.byte 5
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorProvider"

	.byte 56,16
LDIFF_SYM199=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM199
	.byte 2,35,0,0,7
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorProvider"

LDIFF_SYM200=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM200
LTDIE_29_POINTER:

	.byte 13
LDIFF_SYM201=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM201
LTDIE_29_REFERENCE:

	.byte 14
LDIFF_SYM202=LTDIE_29 - Ldebug_info_start
	.long LDIFF_SYM202
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocator:SetLocatorProvider"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocator_SetLocatorProvider_Microsoft_Practices_ServiceLocation_ServiceLocatorProvider"

	.byte 2,35
	.long Microsoft_Practices_ServiceLocation_ServiceLocator_SetLocatorProvider_Microsoft_Practices_ServiceLocation_ServiceLocatorProvider
	.long Lme_a

	.byte 2,118,16,3
	.asciz "newProvider"

LDIFF_SYM203=LTDIE_29_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM203
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM204=Lfde4_end - Lfde4_start
	.long LDIFF_SYM204
Lfde4_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocator_SetLocatorProvider_Microsoft_Practices_ServiceLocation_ServiceLocatorProvider

LDIFF_SYM205=Lme_a - Microsoft_Practices_ServiceLocation_ServiceLocator_SetLocatorProvider_Microsoft_Practices_ServiceLocation_ServiceLocatorProvider
	.long LDIFF_SYM205
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,148,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde4_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocator:get_IsLocationProviderSet"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocator_get_IsLocationProviderSet"

	.byte 2,42
	.long Microsoft_Practices_ServiceLocation_ServiceLocator_get_IsLocationProviderSet
	.long Lme_b

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM206=Lfde5_end - Lfde5_start
	.long LDIFF_SYM206
Lfde5_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocator_get_IsLocationProviderSet

LDIFF_SYM207=Lme_b - Microsoft_Practices_ServiceLocation_ServiceLocator_get_IsLocationProviderSet
	.long LDIFF_SYM207
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,24,2,152,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde5_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_30:

	.byte 5
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase"

	.byte 8,16
LDIFF_SYM208=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM208
	.byte 2,35,0,0,7
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase"

LDIFF_SYM209=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM209
LTDIE_30_POINTER:

	.byte 13
LDIFF_SYM210=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM210
LTDIE_30_REFERENCE:

	.byte 14
LDIFF_SYM211=LTDIE_30 - Ldebug_info_start
	.long LDIFF_SYM211
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetService"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetService_System_Type"

	.byte 3,22
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetService_System_Type
	.long Lme_c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM212=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM212
	.byte 2,125,8,3
	.asciz "serviceType"

LDIFF_SYM213=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM213
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM214=Lfde6_end - Lfde6_start
	.long LDIFF_SYM214
Lfde6_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetService_System_Type

LDIFF_SYM215=Lme_c - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetService_System_Type
	.long LDIFF_SYM215
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,40,2,168,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde6_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetInstance"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type"

	.byte 3,34
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type
	.long Lme_d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM216=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM216
	.byte 2,125,8,3
	.asciz "serviceType"

LDIFF_SYM217=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM217
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM218=Lfde7_end - Lfde7_start
	.long LDIFF_SYM218
Lfde7_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type

LDIFF_SYM219=Lme_d - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type
	.long LDIFF_SYM219
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,40,2,168,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde7_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetInstance"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type_string"

	.byte 3,49
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type_string
	.long Lme_e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM220=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM220
	.byte 2,123,28,3
	.asciz "serviceType"

LDIFF_SYM221=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM221
	.byte 2,123,32,3
	.asciz "key"

LDIFF_SYM222=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM222
	.byte 2,123,36,11
	.asciz "ex"

LDIFF_SYM223=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM223
	.byte 2,123,8,11
	.asciz "CS$1$0000"

LDIFF_SYM224=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM224
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM225=Lfde8_end - Lfde8_start
	.long LDIFF_SYM225
Lfde8_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type_string

LDIFF_SYM226=Lme_e - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_System_Type_string
	.long LDIFF_SYM226
	.byte 68,14,8,135,2,72,14,20,136,5,138,4,139,3,142,1,68,14,80,68,13,11,3,164,1,10,68,13,13,14,20,68
	.byte 8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde8_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_31:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerable`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IEnumerable`1"

LDIFF_SYM227=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM227
LTDIE_31_POINTER:

	.byte 13
LDIFF_SYM228=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM228
LTDIE_31_REFERENCE:

	.byte 14
LDIFF_SYM229=LTDIE_31 - Ldebug_info_start
	.long LDIFF_SYM229
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetAllInstances"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_System_Type"

	.byte 3,71
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_System_Type
	.long Lme_f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM230=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM230
	.byte 2,123,28,3
	.asciz "serviceType"

LDIFF_SYM231=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM231
	.byte 2,123,32,11
	.asciz "ex"

LDIFF_SYM232=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM232
	.byte 2,123,8,11
	.asciz "CS$1$0000"

LDIFF_SYM233=LTDIE_31_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM233
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM234=Lfde9_end - Lfde9_start
	.long LDIFF_SYM234
Lfde9_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_System_Type

LDIFF_SYM235=Lme_f - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_System_Type
	.long LDIFF_SYM235
	.byte 68,14,8,135,2,72,14,20,136,5,138,4,139,3,142,1,68,14,80,68,13,11,3,152,1,10,68,13,13,14,20,68
	.byte 8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde9_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetInstance<TService_REF>"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF"

	.byte 3,90
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF
	.long Lme_10

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM236=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM236
	.byte 2,125,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM237=Lfde10_end - Lfde10_start
	.long LDIFF_SYM237
Lfde10_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF

LDIFF_SYM238=Lme_10 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF
	.long LDIFF_SYM238
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,204,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde10_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetInstance<TService_REF>"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF_string"

	.byte 3,103
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF_string
	.long Lme_11

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM239=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM239
	.byte 2,125,16,3
	.asciz "key"

LDIFF_SYM240=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM240
	.byte 2,125,20,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM241=Lfde11_end - Lfde11_start
	.long LDIFF_SYM241
Lfde11_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF_string

LDIFF_SYM242=Lme_11 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_REF_string
	.long LDIFF_SYM242
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,204,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde11_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_33:

	.byte 17
	.asciz "System_Collections_Generic_IEnumerator`1"

	.byte 8,7
	.asciz "System_Collections_Generic_IEnumerator`1"

LDIFF_SYM243=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM243
LTDIE_33_POINTER:

	.byte 13
LDIFF_SYM244=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM244
LTDIE_33_REFERENCE:

	.byte 14
LDIFF_SYM245=LTDIE_33 - Ldebug_info_start
	.long LDIFF_SYM245
LTDIE_32:

	.byte 5
	.asciz "_<GetAllInstances>d__0`1"

	.byte 32,16
LDIFF_SYM246=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM246
	.byte 2,35,0,6
	.asciz "<>2__current"

LDIFF_SYM247=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM247
	.byte 2,35,8,6
	.asciz "<>1__state"

LDIFF_SYM248=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM248
	.byte 2,35,24,6
	.asciz "<>l__initialThreadId"

LDIFF_SYM249=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM249
	.byte 2,35,28,6
	.asciz "<>4__this"

LDIFF_SYM250=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM250
	.byte 2,35,12,6
	.asciz "<item>5__1"

LDIFF_SYM251=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM251
	.byte 2,35,16,6
	.asciz "<>7__wrap2"

LDIFF_SYM252=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM252
	.byte 2,35,20,0,7
	.asciz "_<GetAllInstances>d__0`1"

LDIFF_SYM253=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM253
LTDIE_32_POINTER:

	.byte 13
LDIFF_SYM254=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM254
LTDIE_32_REFERENCE:

	.byte 14
LDIFF_SYM255=LTDIE_32 - Ldebug_info_start
	.long LDIFF_SYM255
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetAllInstances<TService_REF>"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_REF"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_REF
	.long Lme_12

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM256=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM256
	.byte 2,125,12,11
	.asciz "V_0"

LDIFF_SYM257=LTDIE_32_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM257
	.byte 1,86,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM258=Lfde12_end - Lfde12_start
	.long LDIFF_SYM258
Lfde12_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_REF

LDIFF_SYM259=Lme_12 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_REF
	.long LDIFF_SYM259
	.byte 68,14,8,135,2,72,14,16,134,4,136,3,142,1,68,14,40,2,176,10,68,14,16,68,8,6,8,8,14,8,68,11
	.align 2
Lfde12_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:FormatActivationExceptionMessage"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivationExceptionMessage_System_Exception_System_Type_string"

	.byte 3,149,1
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivationExceptionMessage_System_Exception_System_Type_string
	.long Lme_15

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM260=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM260
	.byte 2,125,8,3
	.asciz "actualException"

LDIFF_SYM261=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM261
	.byte 2,125,12,3
	.asciz "serviceType"

LDIFF_SYM262=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM262
	.byte 2,125,16,3
	.asciz "key"

LDIFF_SYM263=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM263
	.byte 2,125,20,11
	.asciz "CS$0$0000"

LDIFF_SYM264=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM264
	.byte 1,85,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM265=Lfde13_end - Lfde13_start
	.long LDIFF_SYM265
Lfde13_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivationExceptionMessage_System_Exception_System_Type_string

LDIFF_SYM266=Lme_15 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivationExceptionMessage_System_Exception_System_Type_string
	.long LDIFF_SYM266
	.byte 68,14,8,135,2,72,14,16,133,4,136,3,142,1,68,14,64,3,108,1,10,68,14,16,68,8,5,8,8,14,8,68
	.byte 11
	.align 2
Lfde13_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:FormatActivateAllExceptionMessage"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivateAllExceptionMessage_System_Exception_System_Type"

	.byte 3,161,1
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivateAllExceptionMessage_System_Exception_System_Type
	.long Lme_16

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM267=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM267
	.byte 2,125,8,3
	.asciz "actualException"

LDIFF_SYM268=LTDIE_1_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM268
	.byte 2,125,12,3
	.asciz "serviceType"

LDIFF_SYM269=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM269
	.byte 2,125,16,11
	.asciz "CS$0$0000"

LDIFF_SYM270=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM270
	.byte 1,86,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM271=Lfde14_end - Lfde14_start
	.long LDIFF_SYM271
Lfde14_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivateAllExceptionMessage_System_Exception_System_Type

LDIFF_SYM272=Lme_16 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_FormatActivateAllExceptionMessage_System_Exception_System_Type
	.long LDIFF_SYM272
	.byte 68,14,8,135,2,72,14,16,134,4,136,3,142,1,68,14,64,3,72,1,10,68,14,16,68,8,6,8,8,14,8,68
	.byte 11
	.align 2
Lfde14_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:.ctor"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__ctor"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__ctor
	.long Lme_17

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM273=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM273
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM274=Lfde15_end - Lfde15_start
	.long LDIFF_SYM274
Lfde15_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__ctor

LDIFF_SYM275=Lme_17 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__ctor
	.long LDIFF_SYM275
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,100,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde15_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_34:

	.byte 5
	.asciz "Microsoft_Practices_ServiceLocation_Properties_Resources"

	.byte 8,16
LDIFF_SYM276=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM276
	.byte 2,35,0,0,7
	.asciz "Microsoft_Practices_ServiceLocation_Properties_Resources"

LDIFF_SYM277=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM277
LTDIE_34_POINTER:

	.byte 13
LDIFF_SYM278=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM278
LTDIE_34_REFERENCE:

	.byte 14
LDIFF_SYM279=LTDIE_34 - Ldebug_info_start
	.long LDIFF_SYM279
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.Properties.Resources:.ctor"
	.asciz "Microsoft_Practices_ServiceLocation_Properties_Resources__ctor"

	.byte 4,31
	.long Microsoft_Practices_ServiceLocation_Properties_Resources__ctor
	.long Lme_1c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM280=LTDIE_34_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM280
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM281=Lfde16_end - Lfde16_start
	.long LDIFF_SYM281
Lfde16_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_Properties_Resources__ctor

LDIFF_SYM282=Lme_1c - Microsoft_Practices_ServiceLocation_Properties_Resources__ctor
	.long LDIFF_SYM282
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,128,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde16_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_37:

	.byte 5
	.asciz "System_Single"

	.byte 12,16
LDIFF_SYM283=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM283
	.byte 2,35,0,6
	.asciz "m_value"

LDIFF_SYM284=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM284
	.byte 2,35,8,0,7
	.asciz "System_Single"

LDIFF_SYM285=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM285
LTDIE_37_POINTER:

	.byte 13
LDIFF_SYM286=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM286
LTDIE_37_REFERENCE:

	.byte 14
LDIFF_SYM287=LTDIE_37 - Ldebug_info_start
	.long LDIFF_SYM287
LTDIE_38:

	.byte 17
	.asciz "System_Collections_ICollection"

	.byte 8,7
	.asciz "System_Collections_ICollection"

LDIFF_SYM288=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM288
LTDIE_38_POINTER:

	.byte 13
LDIFF_SYM289=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM289
LTDIE_38_REFERENCE:

	.byte 14
LDIFF_SYM290=LTDIE_38 - Ldebug_info_start
	.long LDIFF_SYM290
LTDIE_39:

	.byte 17
	.asciz "System_Collections_IEqualityComparer"

	.byte 8,7
	.asciz "System_Collections_IEqualityComparer"

LDIFF_SYM291=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM291
LTDIE_39_POINTER:

	.byte 13
LDIFF_SYM292=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM292
LTDIE_39_REFERENCE:

	.byte 14
LDIFF_SYM293=LTDIE_39 - Ldebug_info_start
	.long LDIFF_SYM293
LTDIE_36:

	.byte 5
	.asciz "System_Collections_Hashtable"

	.byte 52,16
LDIFF_SYM294=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM294
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM295=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM295
	.byte 2,35,8,6
	.asciz "count"

LDIFF_SYM296=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM296
	.byte 2,35,28,6
	.asciz "occupancy"

LDIFF_SYM297=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM297
	.byte 2,35,32,6
	.asciz "loadsize"

LDIFF_SYM298=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM298
	.byte 2,35,36,6
	.asciz "loadFactor"

LDIFF_SYM299=LDIE_R4 - Ldebug_info_start
	.long LDIFF_SYM299
	.byte 2,35,40,6
	.asciz "version"

LDIFF_SYM300=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM300
	.byte 2,35,44,6
	.asciz "isWriterInProgress"

LDIFF_SYM301=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM301
	.byte 2,35,48,6
	.asciz "keys"

LDIFF_SYM302=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM302
	.byte 2,35,12,6
	.asciz "values"

LDIFF_SYM303=LTDIE_38_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM303
	.byte 2,35,16,6
	.asciz "_keycomparer"

LDIFF_SYM304=LTDIE_39_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM304
	.byte 2,35,20,6
	.asciz "_syncRoot"

LDIFF_SYM305=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM305
	.byte 2,35,24,0,7
	.asciz "System_Collections_Hashtable"

LDIFF_SYM306=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM306
LTDIE_36_POINTER:

	.byte 13
LDIFF_SYM307=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM307
LTDIE_36_REFERENCE:

	.byte 14
LDIFF_SYM308=LTDIE_36 - Ldebug_info_start
	.long LDIFF_SYM308
LTDIE_41:

	.byte 5
	.asciz "_KeyCollection"

	.byte 12,16
LDIFF_SYM309=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM309
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM310=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM310
	.byte 2,35,8,0,7
	.asciz "_KeyCollection"

LDIFF_SYM311=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM311
LTDIE_41_POINTER:

	.byte 13
LDIFF_SYM312=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM312
LTDIE_41_REFERENCE:

	.byte 14
LDIFF_SYM313=LTDIE_41 - Ldebug_info_start
	.long LDIFF_SYM313
LTDIE_42:

	.byte 5
	.asciz "_ValueCollection"

	.byte 12,16
LDIFF_SYM314=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM314
	.byte 2,35,0,6
	.asciz "dictionary"

LDIFF_SYM315=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM315
	.byte 2,35,8,0,7
	.asciz "_ValueCollection"

LDIFF_SYM316=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM316
LTDIE_42_POINTER:

	.byte 13
LDIFF_SYM317=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM317
LTDIE_42_REFERENCE:

	.byte 14
LDIFF_SYM318=LTDIE_42 - Ldebug_info_start
	.long LDIFF_SYM318
LTDIE_40:

	.byte 5
	.asciz "System_Collections_Generic_Dictionary`2"

	.byte 48,16
LDIFF_SYM319=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM319
	.byte 2,35,0,6
	.asciz "buckets"

LDIFF_SYM320=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM320
	.byte 2,35,8,6
	.asciz "entries"

LDIFF_SYM321=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM321
	.byte 2,35,12,6
	.asciz "count"

LDIFF_SYM322=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM322
	.byte 2,35,32,6
	.asciz "version"

LDIFF_SYM323=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM323
	.byte 2,35,36,6
	.asciz "freeList"

LDIFF_SYM324=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM324
	.byte 2,35,40,6
	.asciz "freeCount"

LDIFF_SYM325=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM325
	.byte 2,35,44,6
	.asciz "comparer"

LDIFF_SYM326=LTDIE_10_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM326
	.byte 2,35,16,6
	.asciz "keys"

LDIFF_SYM327=LTDIE_41_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM327
	.byte 2,35,20,6
	.asciz "values"

LDIFF_SYM328=LTDIE_42_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM328
	.byte 2,35,24,6
	.asciz "_syncRoot"

LDIFF_SYM329=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM329
	.byte 2,35,28,0,7
	.asciz "System_Collections_Generic_Dictionary`2"

LDIFF_SYM330=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM330
LTDIE_40_POINTER:

	.byte 13
LDIFF_SYM331=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM331
LTDIE_40_REFERENCE:

	.byte 14
LDIFF_SYM332=LTDIE_40 - Ldebug_info_start
	.long LDIFF_SYM332
LTDIE_44:

	.byte 5
	.asciz "_ResolveEventHolder"

	.byte 8,16
LDIFF_SYM333=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM333
	.byte 2,35,0,0,7
	.asciz "_ResolveEventHolder"

LDIFF_SYM334=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM334
LTDIE_44_POINTER:

	.byte 13
LDIFF_SYM335=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM335
LTDIE_44_REFERENCE:

	.byte 14
LDIFF_SYM336=LTDIE_44 - Ldebug_info_start
	.long LDIFF_SYM336
LTDIE_43:

	.byte 5
	.asciz "System_Reflection_Assembly"

	.byte 48,16
LDIFF_SYM337=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM337
	.byte 2,35,0,6
	.asciz "_mono_assembly"

LDIFF_SYM338=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM338
	.byte 2,35,8,6
	.asciz "resolve_event_holder"

LDIFF_SYM339=LTDIE_44_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM339
	.byte 2,35,12,6
	.asciz "_evidence"

LDIFF_SYM340=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM340
	.byte 2,35,16,6
	.asciz "_minimum"

LDIFF_SYM341=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM341
	.byte 2,35,20,6
	.asciz "_optional"

LDIFF_SYM342=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM342
	.byte 2,35,24,6
	.asciz "_refuse"

LDIFF_SYM343=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM343
	.byte 2,35,28,6
	.asciz "_granted"

LDIFF_SYM344=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM344
	.byte 2,35,32,6
	.asciz "_denied"

LDIFF_SYM345=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM345
	.byte 2,35,36,6
	.asciz "fromByteArray"

LDIFF_SYM346=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM346
	.byte 2,35,40,6
	.asciz "assemblyName"

LDIFF_SYM347=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM347
	.byte 2,35,44,0,7
	.asciz "System_Reflection_Assembly"

LDIFF_SYM348=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM348
LTDIE_43_POINTER:

	.byte 13
LDIFF_SYM349=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM349
LTDIE_43_REFERENCE:

	.byte 14
LDIFF_SYM350=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM350
LTDIE_46:

	.byte 5
	.asciz "System_Globalization_NumberFormatInfo"

	.byte 132,1,16
LDIFF_SYM351=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM351
	.byte 2,35,0,6
	.asciz "numberGroupSizes"

LDIFF_SYM352=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM352
	.byte 2,35,8,6
	.asciz "currencyGroupSizes"

LDIFF_SYM353=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM353
	.byte 2,35,12,6
	.asciz "percentGroupSizes"

LDIFF_SYM354=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM354
	.byte 2,35,16,6
	.asciz "positiveSign"

LDIFF_SYM355=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM355
	.byte 2,35,20,6
	.asciz "negativeSign"

LDIFF_SYM356=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM356
	.byte 2,35,24,6
	.asciz "numberDecimalSeparator"

LDIFF_SYM357=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM357
	.byte 2,35,28,6
	.asciz "numberGroupSeparator"

LDIFF_SYM358=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM358
	.byte 2,35,32,6
	.asciz "currencyGroupSeparator"

LDIFF_SYM359=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM359
	.byte 2,35,36,6
	.asciz "currencyDecimalSeparator"

LDIFF_SYM360=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM360
	.byte 2,35,40,6
	.asciz "currencySymbol"

LDIFF_SYM361=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM361
	.byte 2,35,44,6
	.asciz "ansiCurrencySymbol"

LDIFF_SYM362=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM362
	.byte 2,35,48,6
	.asciz "nanSymbol"

LDIFF_SYM363=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM363
	.byte 2,35,52,6
	.asciz "positiveInfinitySymbol"

LDIFF_SYM364=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM364
	.byte 2,35,56,6
	.asciz "negativeInfinitySymbol"

LDIFF_SYM365=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM365
	.byte 2,35,60,6
	.asciz "percentDecimalSeparator"

LDIFF_SYM366=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM366
	.byte 2,35,64,6
	.asciz "percentGroupSeparator"

LDIFF_SYM367=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM367
	.byte 2,35,68,6
	.asciz "percentSymbol"

LDIFF_SYM368=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM368
	.byte 2,35,72,6
	.asciz "perMilleSymbol"

LDIFF_SYM369=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM369
	.byte 2,35,76,6
	.asciz "nativeDigits"

LDIFF_SYM370=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM370
	.byte 2,35,80,6
	.asciz "m_dataItem"

LDIFF_SYM371=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM371
	.byte 2,35,84,6
	.asciz "numberDecimalDigits"

LDIFF_SYM372=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM372
	.byte 2,35,88,6
	.asciz "currencyDecimalDigits"

LDIFF_SYM373=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM373
	.byte 2,35,92,6
	.asciz "currencyPositivePattern"

LDIFF_SYM374=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM374
	.byte 2,35,96,6
	.asciz "currencyNegativePattern"

LDIFF_SYM375=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM375
	.byte 2,35,100,6
	.asciz "numberNegativePattern"

LDIFF_SYM376=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM376
	.byte 2,35,104,6
	.asciz "percentPositivePattern"

LDIFF_SYM377=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM377
	.byte 2,35,108,6
	.asciz "percentNegativePattern"

LDIFF_SYM378=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM378
	.byte 2,35,112,6
	.asciz "percentDecimalDigits"

LDIFF_SYM379=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM379
	.byte 2,35,116,6
	.asciz "digitSubstitution"

LDIFF_SYM380=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM380
	.byte 2,35,120,6
	.asciz "isReadOnly"

LDIFF_SYM381=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM381
	.byte 2,35,124,6
	.asciz "m_useUserOverride"

LDIFF_SYM382=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM382
	.byte 2,35,125,6
	.asciz "m_isInvariant"

LDIFF_SYM383=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM383
	.byte 2,35,126,6
	.asciz "validForParseAsNumber"

LDIFF_SYM384=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM384
	.byte 2,35,127,6
	.asciz "validForParseAsCurrency"

LDIFF_SYM385=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM385
	.byte 3,35,128,1,0,7
	.asciz "System_Globalization_NumberFormatInfo"

LDIFF_SYM386=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM386
LTDIE_46_POINTER:

	.byte 13
LDIFF_SYM387=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM387
LTDIE_46_REFERENCE:

	.byte 14
LDIFF_SYM388=LTDIE_46 - Ldebug_info_start
	.long LDIFF_SYM388
LTDIE_48:

	.byte 5
	.asciz "System_Globalization_CultureData"

	.byte 88,16
LDIFF_SYM389=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM389
	.byte 2,35,0,6
	.asciz "sAM1159"

LDIFF_SYM390=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM390
	.byte 2,35,8,6
	.asciz "sPM2359"

LDIFF_SYM391=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM391
	.byte 2,35,12,6
	.asciz "sTimeSeparator"

LDIFF_SYM392=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM392
	.byte 2,35,16,6
	.asciz "saLongTimes"

LDIFF_SYM393=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM393
	.byte 2,35,20,6
	.asciz "saShortTimes"

LDIFF_SYM394=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM394
	.byte 2,35,24,6
	.asciz "iFirstDayOfWeek"

LDIFF_SYM395=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM395
	.byte 2,35,28,6
	.asciz "iFirstWeekOfYear"

LDIFF_SYM396=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM396
	.byte 2,35,32,6
	.asciz "waCalendars"

LDIFF_SYM397=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM397
	.byte 2,35,36,6
	.asciz "calendars"

LDIFF_SYM398=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM398
	.byte 2,35,40,6
	.asciz "sISO639Language"

LDIFF_SYM399=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM399
	.byte 2,35,44,6
	.asciz "sRealName"

LDIFF_SYM400=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM400
	.byte 2,35,48,6
	.asciz "bUseOverrides"

LDIFF_SYM401=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM401
	.byte 2,35,52,6
	.asciz "calendarId"

LDIFF_SYM402=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM402
	.byte 2,35,56,6
	.asciz "numberIndex"

LDIFF_SYM403=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM403
	.byte 2,35,60,6
	.asciz "iDefaultAnsiCodePage"

LDIFF_SYM404=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM404
	.byte 2,35,64,6
	.asciz "iDefaultOemCodePage"

LDIFF_SYM405=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM405
	.byte 2,35,68,6
	.asciz "iDefaultMacCodePage"

LDIFF_SYM406=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM406
	.byte 2,35,72,6
	.asciz "iDefaultEbcdicCodePage"

LDIFF_SYM407=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM407
	.byte 2,35,76,6
	.asciz "isRightToLeft"

LDIFF_SYM408=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM408
	.byte 2,35,80,6
	.asciz "sListSeparator"

LDIFF_SYM409=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM409
	.byte 2,35,84,0,7
	.asciz "System_Globalization_CultureData"

LDIFF_SYM410=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM410
LTDIE_48_POINTER:

	.byte 13
LDIFF_SYM411=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM411
LTDIE_48_REFERENCE:

	.byte 14
LDIFF_SYM412=LTDIE_48 - Ldebug_info_start
	.long LDIFF_SYM412
LTDIE_50:

	.byte 5
	.asciz "System_Globalization_SortVersion"

	.byte 28,16
LDIFF_SYM413=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM413
	.byte 2,35,0,6
	.asciz "m_NlsVersion"

LDIFF_SYM414=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM414
	.byte 2,35,8,6
	.asciz "m_SortId"

LDIFF_SYM415=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM415
	.byte 2,35,12,0,7
	.asciz "System_Globalization_SortVersion"

LDIFF_SYM416=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM416
LTDIE_50_POINTER:

	.byte 13
LDIFF_SYM417=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM417
LTDIE_50_REFERENCE:

	.byte 14
LDIFF_SYM418=LTDIE_50 - Ldebug_info_start
	.long LDIFF_SYM418
LTDIE_52:

	.byte 5
	.asciz "System_Globalization_TextInfo"

	.byte 32,16
LDIFF_SYM419=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM419
	.byte 2,35,0,6
	.asciz "m_isReadOnly"

LDIFF_SYM420=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM420
	.byte 2,35,24,6
	.asciz "m_cultureName"

LDIFF_SYM421=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM421
	.byte 2,35,8,6
	.asciz "m_cultureData"

LDIFF_SYM422=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM422
	.byte 2,35,12,6
	.asciz "m_textInfoName"

LDIFF_SYM423=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM423
	.byte 2,35,16,6
	.asciz "m_IsAsciiCasingSameAsInvariant"

LDIFF_SYM424=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM424
	.byte 2,35,25,6
	.asciz "customCultureName"

LDIFF_SYM425=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM425
	.byte 2,35,20,6
	.asciz "m_useUserOverride"

LDIFF_SYM426=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM426
	.byte 2,35,27,6
	.asciz "m_win32LangID"

LDIFF_SYM427=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM427
	.byte 2,35,28,0,7
	.asciz "System_Globalization_TextInfo"

LDIFF_SYM428=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM428
LTDIE_52_POINTER:

	.byte 13
LDIFF_SYM429=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM429
LTDIE_52_REFERENCE:

	.byte 14
LDIFF_SYM430=LTDIE_52 - Ldebug_info_start
	.long LDIFF_SYM430
LTDIE_53:

	.byte 5
	.asciz "Mono_Globalization_Unicode_CodePointIndexer"

	.byte 24,16
LDIFF_SYM431=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM431
	.byte 2,35,0,6
	.asciz "ranges"

LDIFF_SYM432=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM432
	.byte 2,35,8,6
	.asciz "TotalCount"

LDIFF_SYM433=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM433
	.byte 2,35,12,6
	.asciz "defaultIndex"

LDIFF_SYM434=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM434
	.byte 2,35,16,6
	.asciz "defaultCP"

LDIFF_SYM435=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM435
	.byte 2,35,20,0,7
	.asciz "Mono_Globalization_Unicode_CodePointIndexer"

LDIFF_SYM436=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM436
LTDIE_53_POINTER:

	.byte 13
LDIFF_SYM437=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM437
LTDIE_53_REFERENCE:

	.byte 14
LDIFF_SYM438=LTDIE_53 - Ldebug_info_start
	.long LDIFF_SYM438
LTDIE_51:

	.byte 5
	.asciz "Mono_Globalization_Unicode_SimpleCollator"

	.byte 52,16
LDIFF_SYM439=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM439
	.byte 2,35,0,6
	.asciz "textInfo"

LDIFF_SYM440=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM440
	.byte 2,35,8,6
	.asciz "cjkIndexer"

LDIFF_SYM441=LTDIE_53_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM441
	.byte 2,35,12,6
	.asciz "contractions"

LDIFF_SYM442=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM442
	.byte 2,35,16,6
	.asciz "level2Maps"

LDIFF_SYM443=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM443
	.byte 2,35,20,6
	.asciz "unsafeFlags"

LDIFF_SYM444=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM444
	.byte 2,35,24,6
	.asciz "cjkCatTable"

LDIFF_SYM445=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM445
	.byte 2,35,32,6
	.asciz "cjkLv1Table"

LDIFF_SYM446=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM446
	.byte 2,35,36,6
	.asciz "cjkLv2Table"

LDIFF_SYM447=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM447
	.byte 2,35,40,6
	.asciz "cjkLv2Indexer"

LDIFF_SYM448=LTDIE_53_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM448
	.byte 2,35,28,6
	.asciz "lcid"

LDIFF_SYM449=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM449
	.byte 2,35,44,6
	.asciz "frenchSort"

LDIFF_SYM450=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM450
	.byte 2,35,48,0,7
	.asciz "Mono_Globalization_Unicode_SimpleCollator"

LDIFF_SYM451=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM451
LTDIE_51_POINTER:

	.byte 13
LDIFF_SYM452=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM452
LTDIE_51_REFERENCE:

	.byte 14
LDIFF_SYM453=LTDIE_51 - Ldebug_info_start
	.long LDIFF_SYM453
LTDIE_49:

	.byte 5
	.asciz "System_Globalization_CompareInfo"

	.byte 40,16
LDIFF_SYM454=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM454
	.byte 2,35,0,6
	.asciz "m_name"

LDIFF_SYM455=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM455
	.byte 2,35,8,6
	.asciz "m_sortName"

LDIFF_SYM456=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM456
	.byte 2,35,12,6
	.asciz "m_dataHandle"

LDIFF_SYM457=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM457
	.byte 2,35,24,6
	.asciz "m_handleOrigin"

LDIFF_SYM458=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM458
	.byte 2,35,28,6
	.asciz "win32LCID"

LDIFF_SYM459=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM459
	.byte 2,35,32,6
	.asciz "culture"

LDIFF_SYM460=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM460
	.byte 2,35,36,6
	.asciz "m_SortVersion"

LDIFF_SYM461=LTDIE_50_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM461
	.byte 2,35,16,6
	.asciz "collator"

LDIFF_SYM462=LTDIE_51_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM462
	.byte 2,35,20,0,7
	.asciz "System_Globalization_CompareInfo"

LDIFF_SYM463=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM463
LTDIE_49_POINTER:

	.byte 13
LDIFF_SYM464=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM464
LTDIE_49_REFERENCE:

	.byte 14
LDIFF_SYM465=LTDIE_49 - Ldebug_info_start
	.long LDIFF_SYM465
LTDIE_54:

	.byte 5
	.asciz "System_Globalization_Calendar"

	.byte 20,16
LDIFF_SYM466=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM466
	.byte 2,35,0,6
	.asciz "m_currentEraValue"

LDIFF_SYM467=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM467
	.byte 2,35,8,6
	.asciz "m_isReadOnly"

LDIFF_SYM468=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM468
	.byte 2,35,12,6
	.asciz "twoDigitYearMax"

LDIFF_SYM469=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM469
	.byte 2,35,16,0,7
	.asciz "System_Globalization_Calendar"

LDIFF_SYM470=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM470
LTDIE_54_POINTER:

	.byte 13
LDIFF_SYM471=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM471
LTDIE_54_REFERENCE:

	.byte 14
LDIFF_SYM472=LTDIE_54 - Ldebug_info_start
	.long LDIFF_SYM472
LTDIE_55:

	.byte 8
	.asciz "System_Globalization_DateTimeFormatFlags"

	.byte 4
LDIFF_SYM473=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM473
	.byte 9
	.asciz "None"

	.byte 0,9
	.asciz "UseGenitiveMonth"

	.byte 1,9
	.asciz "UseLeapYearMonth"

	.byte 2,9
	.asciz "UseSpacesInMonthNames"

	.byte 4,9
	.asciz "UseHebrewRule"

	.byte 8,9
	.asciz "UseSpacesInDayNames"

	.byte 16,9
	.asciz "UseDigitPrefixInTokens"

	.byte 32,9
	.asciz "NotInitialized"

	.byte 255,255,255,255,15,0,7
	.asciz "System_Globalization_DateTimeFormatFlags"

LDIFF_SYM474=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM474
LTDIE_55_POINTER:

	.byte 13
LDIFF_SYM475=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM475
LTDIE_55_REFERENCE:

	.byte 14
LDIFF_SYM476=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM476
LTDIE_47:

	.byte 5
	.asciz "System_Globalization_DateTimeFormatInfo"

	.byte 204,1,16
LDIFF_SYM477=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM477
	.byte 2,35,0,6
	.asciz "m_cultureData"

LDIFF_SYM478=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM478
	.byte 2,35,8,6
	.asciz "m_name"

LDIFF_SYM479=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM479
	.byte 2,35,12,6
	.asciz "m_langName"

LDIFF_SYM480=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM480
	.byte 2,35,16,6
	.asciz "m_compareInfo"

LDIFF_SYM481=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM481
	.byte 2,35,20,6
	.asciz "m_cultureInfo"

LDIFF_SYM482=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM482
	.byte 2,35,24,6
	.asciz "amDesignator"

LDIFF_SYM483=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM483
	.byte 2,35,28,6
	.asciz "pmDesignator"

LDIFF_SYM484=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM484
	.byte 2,35,32,6
	.asciz "dateSeparator"

LDIFF_SYM485=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM485
	.byte 2,35,36,6
	.asciz "generalShortTimePattern"

LDIFF_SYM486=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM486
	.byte 2,35,40,6
	.asciz "generalLongTimePattern"

LDIFF_SYM487=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM487
	.byte 2,35,44,6
	.asciz "timeSeparator"

LDIFF_SYM488=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM488
	.byte 2,35,48,6
	.asciz "monthDayPattern"

LDIFF_SYM489=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM489
	.byte 2,35,52,6
	.asciz "dateTimeOffsetPattern"

LDIFF_SYM490=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM490
	.byte 2,35,56,6
	.asciz "calendar"

LDIFF_SYM491=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM491
	.byte 2,35,60,6
	.asciz "firstDayOfWeek"

LDIFF_SYM492=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM492
	.byte 3,35,172,1,6
	.asciz "calendarWeekRule"

LDIFF_SYM493=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM493
	.byte 3,35,176,1,6
	.asciz "fullDateTimePattern"

LDIFF_SYM494=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM494
	.byte 2,35,64,6
	.asciz "abbreviatedDayNames"

LDIFF_SYM495=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM495
	.byte 2,35,68,6
	.asciz "m_superShortDayNames"

LDIFF_SYM496=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM496
	.byte 2,35,72,6
	.asciz "dayNames"

LDIFF_SYM497=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM497
	.byte 2,35,76,6
	.asciz "abbreviatedMonthNames"

LDIFF_SYM498=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM498
	.byte 2,35,80,6
	.asciz "monthNames"

LDIFF_SYM499=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM499
	.byte 2,35,84,6
	.asciz "genitiveMonthNames"

LDIFF_SYM500=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM500
	.byte 2,35,88,6
	.asciz "m_genitiveAbbreviatedMonthNames"

LDIFF_SYM501=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM501
	.byte 2,35,92,6
	.asciz "leapYearMonthNames"

LDIFF_SYM502=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM502
	.byte 2,35,96,6
	.asciz "longDatePattern"

LDIFF_SYM503=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM503
	.byte 2,35,100,6
	.asciz "shortDatePattern"

LDIFF_SYM504=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM504
	.byte 2,35,104,6
	.asciz "yearMonthPattern"

LDIFF_SYM505=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM505
	.byte 2,35,108,6
	.asciz "longTimePattern"

LDIFF_SYM506=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM506
	.byte 2,35,112,6
	.asciz "shortTimePattern"

LDIFF_SYM507=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM507
	.byte 2,35,116,6
	.asciz "allYearMonthPatterns"

LDIFF_SYM508=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM508
	.byte 2,35,120,6
	.asciz "allShortDatePatterns"

LDIFF_SYM509=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM509
	.byte 2,35,124,6
	.asciz "allLongDatePatterns"

LDIFF_SYM510=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM510
	.byte 3,35,128,1,6
	.asciz "allShortTimePatterns"

LDIFF_SYM511=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM511
	.byte 3,35,132,1,6
	.asciz "allLongTimePatterns"

LDIFF_SYM512=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM512
	.byte 3,35,136,1,6
	.asciz "m_eraNames"

LDIFF_SYM513=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM513
	.byte 3,35,140,1,6
	.asciz "m_abbrevEraNames"

LDIFF_SYM514=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM514
	.byte 3,35,144,1,6
	.asciz "m_abbrevEnglishEraNames"

LDIFF_SYM515=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM515
	.byte 3,35,148,1,6
	.asciz "optionalCalendars"

LDIFF_SYM516=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM516
	.byte 3,35,152,1,6
	.asciz "m_isReadOnly"

LDIFF_SYM517=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM517
	.byte 3,35,180,1,6
	.asciz "formatFlags"

LDIFF_SYM518=LTDIE_55 - Ldebug_info_start
	.long LDIFF_SYM518
	.byte 3,35,184,1,6
	.asciz "CultureID"

LDIFF_SYM519=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM519
	.byte 3,35,188,1,6
	.asciz "m_useUserOverride"

LDIFF_SYM520=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM520
	.byte 3,35,192,1,6
	.asciz "bUseCalendarInfo"

LDIFF_SYM521=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM521
	.byte 3,35,193,1,6
	.asciz "nDataItem"

LDIFF_SYM522=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM522
	.byte 3,35,196,1,6
	.asciz "m_isDefaultCalendar"

LDIFF_SYM523=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM523
	.byte 3,35,200,1,6
	.asciz "m_dateWords"

LDIFF_SYM524=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM524
	.byte 3,35,156,1,6
	.asciz "m_fullTimeSpanPositivePattern"

LDIFF_SYM525=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM525
	.byte 3,35,160,1,6
	.asciz "m_fullTimeSpanNegativePattern"

LDIFF_SYM526=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM526
	.byte 3,35,164,1,6
	.asciz "m_dtfiTokenHash"

LDIFF_SYM527=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM527
	.byte 3,35,168,1,0,7
	.asciz "System_Globalization_DateTimeFormatInfo"

LDIFF_SYM528=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM528
LTDIE_47_POINTER:

	.byte 13
LDIFF_SYM529=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM529
LTDIE_47_REFERENCE:

	.byte 14
LDIFF_SYM530=LTDIE_47 - Ldebug_info_start
	.long LDIFF_SYM530
LTDIE_45:

	.byte 5
	.asciz "System_Globalization_CultureInfo"

	.byte 116,16
LDIFF_SYM531=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM531
	.byte 2,35,0,6
	.asciz "m_isReadOnly"

LDIFF_SYM532=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM532
	.byte 2,35,8,6
	.asciz "cultureID"

LDIFF_SYM533=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM533
	.byte 2,35,12,6
	.asciz "parent_lcid"

LDIFF_SYM534=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM534
	.byte 2,35,16,6
	.asciz "datetime_index"

LDIFF_SYM535=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM535
	.byte 2,35,20,6
	.asciz "number_index"

LDIFF_SYM536=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM536
	.byte 2,35,24,6
	.asciz "default_calendar_type"

LDIFF_SYM537=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM537
	.byte 2,35,28,6
	.asciz "m_useUserOverride"

LDIFF_SYM538=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM538
	.byte 2,35,32,6
	.asciz "numInfo"

LDIFF_SYM539=LTDIE_46_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM539
	.byte 2,35,36,6
	.asciz "dateTimeInfo"

LDIFF_SYM540=LTDIE_47_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM540
	.byte 2,35,40,6
	.asciz "textInfo"

LDIFF_SYM541=LTDIE_52_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM541
	.byte 2,35,44,6
	.asciz "m_name"

LDIFF_SYM542=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM542
	.byte 2,35,48,6
	.asciz "englishname"

LDIFF_SYM543=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM543
	.byte 2,35,52,6
	.asciz "nativename"

LDIFF_SYM544=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM544
	.byte 2,35,56,6
	.asciz "iso3lang"

LDIFF_SYM545=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM545
	.byte 2,35,60,6
	.asciz "iso2lang"

LDIFF_SYM546=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM546
	.byte 2,35,64,6
	.asciz "win3lang"

LDIFF_SYM547=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM547
	.byte 2,35,68,6
	.asciz "territory"

LDIFF_SYM548=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM548
	.byte 2,35,72,6
	.asciz "native_calendar_names"

LDIFF_SYM549=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM549
	.byte 2,35,76,6
	.asciz "compareInfo"

LDIFF_SYM550=LTDIE_49_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM550
	.byte 2,35,80,6
	.asciz "textinfo_data"

LDIFF_SYM551=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM551
	.byte 2,35,84,6
	.asciz "m_dataItem"

LDIFF_SYM552=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM552
	.byte 2,35,88,6
	.asciz "calendar"

LDIFF_SYM553=LTDIE_54_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM553
	.byte 2,35,92,6
	.asciz "parent_culture"

LDIFF_SYM554=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM554
	.byte 2,35,96,6
	.asciz "constructed"

LDIFF_SYM555=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM555
	.byte 2,35,100,6
	.asciz "cached_serialized_form"

LDIFF_SYM556=LDIE_SZARRAY - Ldebug_info_start
	.long LDIFF_SYM556
	.byte 2,35,104,6
	.asciz "m_cultureData"

LDIFF_SYM557=LTDIE_48_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM557
	.byte 2,35,108,6
	.asciz "m_isInherited"

LDIFF_SYM558=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM558
	.byte 2,35,112,0,7
	.asciz "System_Globalization_CultureInfo"

LDIFF_SYM559=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM559
LTDIE_45_POINTER:

	.byte 13
LDIFF_SYM560=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM560
LTDIE_45_REFERENCE:

	.byte 14
LDIFF_SYM561=LTDIE_45 - Ldebug_info_start
	.long LDIFF_SYM561
LTDIE_58:

	.byte 17
	.asciz "System_Resources_IResourceReader"

	.byte 8,7
	.asciz "System_Resources_IResourceReader"

LDIFF_SYM562=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM562
LTDIE_58_POINTER:

	.byte 13
LDIFF_SYM563=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM563
LTDIE_58_REFERENCE:

	.byte 14
LDIFF_SYM564=LTDIE_58 - Ldebug_info_start
	.long LDIFF_SYM564
LTDIE_57:

	.byte 5
	.asciz "System_Resources_ResourceSet"

	.byte 20,16
LDIFF_SYM565=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM565
	.byte 2,35,0,6
	.asciz "Reader"

LDIFF_SYM566=LTDIE_58_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM566
	.byte 2,35,8,6
	.asciz "Table"

LDIFF_SYM567=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM567
	.byte 2,35,12,6
	.asciz "_caseInsensitiveTable"

LDIFF_SYM568=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM568
	.byte 2,35,16,0,7
	.asciz "System_Resources_ResourceSet"

LDIFF_SYM569=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM569
LTDIE_57_POINTER:

	.byte 13
LDIFF_SYM570=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM570
LTDIE_57_REFERENCE:

	.byte 14
LDIFF_SYM571=LTDIE_57 - Ldebug_info_start
	.long LDIFF_SYM571
LTDIE_56:

	.byte 5
	.asciz "_CultureNameResourceSetPair"

	.byte 16,16
LDIFF_SYM572=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM572
	.byte 2,35,0,6
	.asciz "lastCultureName"

LDIFF_SYM573=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM573
	.byte 2,35,8,6
	.asciz "lastResourceSet"

LDIFF_SYM574=LTDIE_57_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM574
	.byte 2,35,12,0,7
	.asciz "_CultureNameResourceSetPair"

LDIFF_SYM575=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM575
LTDIE_56_POINTER:

	.byte 13
LDIFF_SYM576=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM576
LTDIE_56_REFERENCE:

	.byte 14
LDIFF_SYM577=LTDIE_56 - Ldebug_info_start
	.long LDIFF_SYM577
LTDIE_59:

	.byte 8
	.asciz "System_Resources_UltimateResourceFallbackLocation"

	.byte 4
LDIFF_SYM578=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM578
	.byte 9
	.asciz "MainAssembly"

	.byte 0,9
	.asciz "Satellite"

	.byte 1,0,7
	.asciz "System_Resources_UltimateResourceFallbackLocation"

LDIFF_SYM579=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM579
LTDIE_59_POINTER:

	.byte 13
LDIFF_SYM580=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM580
LTDIE_59_REFERENCE:

	.byte 14
LDIFF_SYM581=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM581
LTDIE_60:

	.byte 5
	.asciz "System_Version"

	.byte 24,16
LDIFF_SYM582=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM582
	.byte 2,35,0,6
	.asciz "_Major"

LDIFF_SYM583=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM583
	.byte 2,35,8,6
	.asciz "_Minor"

LDIFF_SYM584=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM584
	.byte 2,35,12,6
	.asciz "_Build"

LDIFF_SYM585=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM585
	.byte 2,35,16,6
	.asciz "_Revision"

LDIFF_SYM586=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM586
	.byte 2,35,20,0,7
	.asciz "System_Version"

LDIFF_SYM587=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM587
LTDIE_60_POINTER:

	.byte 13
LDIFF_SYM588=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM588
LTDIE_60_REFERENCE:

	.byte 14
LDIFF_SYM589=LTDIE_60 - Ldebug_info_start
	.long LDIFF_SYM589
LTDIE_61:

	.byte 5
	.asciz "System_Reflection_RuntimeAssembly"

	.byte 48,16
LDIFF_SYM590=LTDIE_43 - Ldebug_info_start
	.long LDIFF_SYM590
	.byte 2,35,0,0,7
	.asciz "System_Reflection_RuntimeAssembly"

LDIFF_SYM591=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM591
LTDIE_61_POINTER:

	.byte 13
LDIFF_SYM592=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM592
LTDIE_61_REFERENCE:

	.byte 14
LDIFF_SYM593=LTDIE_61 - Ldebug_info_start
	.long LDIFF_SYM593
LTDIE_62:

	.byte 17
	.asciz "System_Resources_IResourceGroveler"

	.byte 8,7
	.asciz "System_Resources_IResourceGroveler"

LDIFF_SYM594=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM594
LTDIE_62_POINTER:

	.byte 13
LDIFF_SYM595=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM595
LTDIE_62_REFERENCE:

	.byte 14
LDIFF_SYM596=LTDIE_62 - Ldebug_info_start
	.long LDIFF_SYM596
LTDIE_35:

	.byte 5
	.asciz "System_Resources_ResourceManager"

	.byte 72,16
LDIFF_SYM597=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM597
	.byte 2,35,0,6
	.asciz "BaseNameField"

LDIFF_SYM598=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM598
	.byte 2,35,8,6
	.asciz "ResourceSets"

LDIFF_SYM599=LTDIE_36_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM599
	.byte 2,35,12,6
	.asciz "_resourceSets"

LDIFF_SYM600=LTDIE_40_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM600
	.byte 2,35,16,6
	.asciz "moduleDir"

LDIFF_SYM601=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM601
	.byte 2,35,20,6
	.asciz "MainAssembly"

LDIFF_SYM602=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM602
	.byte 2,35,24,6
	.asciz "_locationInfo"

LDIFF_SYM603=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM603
	.byte 2,35,28,6
	.asciz "_userResourceSet"

LDIFF_SYM604=LTDIE_14_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM604
	.byte 2,35,32,6
	.asciz "_neutralResourcesCulture"

LDIFF_SYM605=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM605
	.byte 2,35,36,6
	.asciz "_lastUsedResourceCache"

LDIFF_SYM606=LTDIE_56_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM606
	.byte 2,35,40,6
	.asciz "_ignoreCase"

LDIFF_SYM607=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM607
	.byte 2,35,60,6
	.asciz "UseManifest"

LDIFF_SYM608=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM608
	.byte 2,35,61,6
	.asciz "UseSatelliteAssem"

LDIFF_SYM609=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM609
	.byte 2,35,62,6
	.asciz "_fallbackLoc"

LDIFF_SYM610=LTDIE_59 - Ldebug_info_start
	.long LDIFF_SYM610
	.byte 2,35,64,6
	.asciz "_satelliteContractVersion"

LDIFF_SYM611=LTDIE_60_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM611
	.byte 2,35,44,6
	.asciz "_lookedForSatelliteContractVersion"

LDIFF_SYM612=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM612
	.byte 2,35,68,6
	.asciz "_callingAssembly"

LDIFF_SYM613=LTDIE_43_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM613
	.byte 2,35,48,6
	.asciz "m_callingAssembly"

LDIFF_SYM614=LTDIE_61_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM614
	.byte 2,35,52,6
	.asciz "resourceGroveler"

LDIFF_SYM615=LTDIE_62_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM615
	.byte 2,35,56,6
	.asciz "_bUsingModernResourceManagement"

LDIFF_SYM616=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM616
	.byte 2,35,69,0,7
	.asciz "System_Resources_ResourceManager"

LDIFF_SYM617=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM617
LTDIE_35_POINTER:

	.byte 13
LDIFF_SYM618=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM618
LTDIE_35_REFERENCE:

	.byte 14
LDIFF_SYM619=LTDIE_35 - Ldebug_info_start
	.long LDIFF_SYM619
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.Properties.Resources:get_ResourceManager"
	.asciz "Microsoft_Practices_ServiceLocation_Properties_Resources_get_ResourceManager"

	.byte 4,41
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_ResourceManager
	.long Lme_1d

	.byte 2,118,16,11
	.asciz "temp"

LDIFF_SYM620=LTDIE_35_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM620
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM621=Lfde17_end - Lfde17_start
	.long LDIFF_SYM621
Lfde17_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_ResourceManager

LDIFF_SYM622=Lme_1d - Microsoft_Practices_ServiceLocation_Properties_Resources_get_ResourceManager
	.long LDIFF_SYM622
	.byte 68,14,8,135,2,72,14,16,136,4,138,3,142,1,68,14,40,3,180,1,10,68,14,16,68,8,8,8,10,14,8,68
	.byte 11
	.align 2
Lfde17_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.Properties.Resources:get_Culture"
	.asciz "Microsoft_Practices_ServiceLocation_Properties_Resources_get_Culture"

	.byte 4,56
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_Culture
	.long Lme_1e

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM623=Lfde18_end - Lfde18_start
	.long LDIFF_SYM623
Lfde18_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_Culture

LDIFF_SYM624=Lme_1e - Microsoft_Practices_ServiceLocation_Properties_Resources_get_Culture
	.long LDIFF_SYM624
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,24,2,120,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde18_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.Properties.Resources:set_Culture"
	.asciz "Microsoft_Practices_ServiceLocation_Properties_Resources_set_Culture_System_Globalization_CultureInfo"

	.byte 4,59
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_set_Culture_System_Globalization_CultureInfo
	.long Lme_1f

	.byte 2,118,16,3
	.asciz "value"

LDIFF_SYM625=LTDIE_45_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM625
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM626=Lfde19_end - Lfde19_start
	.long LDIFF_SYM626
Lfde19_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_set_Culture_System_Globalization_CultureInfo

LDIFF_SYM627=Lme_1f - Microsoft_Practices_ServiceLocation_Properties_Resources_set_Culture_System_Globalization_CultureInfo
	.long LDIFF_SYM627
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,148,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde19_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.Properties.Resources:get_ActivateAllExceptionMessage"
	.asciz "Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivateAllExceptionMessage"

	.byte 4,68
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivateAllExceptionMessage
	.long Lme_20

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM628=Lfde20_end - Lfde20_start
	.long LDIFF_SYM628
Lfde20_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivateAllExceptionMessage

LDIFF_SYM629=Lme_20 - Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivateAllExceptionMessage
	.long LDIFF_SYM629
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,212,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde20_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.Properties.Resources:get_ActivationExceptionMessage"
	.asciz "Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivationExceptionMessage"

	.byte 4,77
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivationExceptionMessage
	.long Lme_21

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM630=Lfde21_end - Lfde21_start
	.long LDIFF_SYM630
Lfde21_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivationExceptionMessage

LDIFF_SYM631=Lme_21 - Microsoft_Practices_ServiceLocation_Properties_Resources_get_ActivationExceptionMessage
	.long LDIFF_SYM631
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,212,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde21_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.Properties.Resources:get_ServiceLocationProviderNotSetMessage"
	.asciz "Microsoft_Practices_ServiceLocation_Properties_Resources_get_ServiceLocationProviderNotSetMessage"

	.byte 4,86
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_ServiceLocationProviderNotSetMessage
	.long Lme_22

	.byte 2,118,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM632=Lfde22_end - Lfde22_start
	.long LDIFF_SYM632
Lfde22_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_Properties_Resources_get_ServiceLocationProviderNotSetMessage

LDIFF_SYM633=Lme_22 - Microsoft_Practices_ServiceLocation_Properties_Resources_get_ServiceLocationProviderNotSetMessage
	.long LDIFF_SYM633
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,212,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde22_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_63:

	.byte 5
	.asciz "_<GetAllInstances>d__0`1"

	.byte 32,16
LDIFF_SYM634=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM634
	.byte 2,35,0,6
	.asciz "<>2__current"

LDIFF_SYM635=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM635
	.byte 2,35,8,6
	.asciz "<>1__state"

LDIFF_SYM636=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM636
	.byte 2,35,24,6
	.asciz "<>l__initialThreadId"

LDIFF_SYM637=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM637
	.byte 2,35,28,6
	.asciz "<>4__this"

LDIFF_SYM638=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM638
	.byte 2,35,12,6
	.asciz "<item>5__1"

LDIFF_SYM639=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM639
	.byte 2,35,16,6
	.asciz "<>7__wrap2"

LDIFF_SYM640=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM640
	.byte 2,35,20,0,7
	.asciz "_<GetAllInstances>d__0`1"

LDIFF_SYM641=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM641
LTDIE_63_POINTER:

	.byte 13
LDIFF_SYM642=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM642
LTDIE_63_REFERENCE:

	.byte 14
LDIFF_SYM643=LTDIE_63 - Ldebug_info_start
	.long LDIFF_SYM643
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_REF>:System.Collections.Generic.IEnumerable<TService>.GetEnumerator"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerable_TService_GetEnumerator"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerable_TService_GetEnumerator
	.long Lme_23

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM644=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM644
	.byte 2,125,8,11
	.asciz "V_0"

LDIFF_SYM645=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM645
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM646=Lfde23_end - Lfde23_start
	.long LDIFF_SYM646
Lfde23_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerable_TService_GetEnumerator

LDIFF_SYM647=Lme_23 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerable_TService_GetEnumerator
	.long LDIFF_SYM647
	.byte 68,14,8,135,2,72,14,16,136,4,138,3,142,1,68,14,40,3,68,1,10,68,14,16,68,8,8,8,10,14,8,68
	.byte 11
	.align 2
Lfde23_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_REF>:System.Collections.IEnumerable.GetEnumerator"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerable_GetEnumerator
	.long Lme_24

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM648=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM648
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM649=Lfde24_end - Lfde24_start
	.long LDIFF_SYM649
Lfde24_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM650=Lme_24 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM650
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,40,2,112,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde24_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_REF>:MoveNext"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_MoveNext"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_MoveNext
	.long Lme_25

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM651=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM651
	.byte 2,123,28,11
	.asciz "CS$1$0000"

LDIFF_SYM652=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM652
	.byte 2,123,8,11
	.asciz "CS$0$0001"

LDIFF_SYM653=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM653
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM654=Lfde25_end - Lfde25_start
	.long LDIFF_SYM654
Lfde25_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_MoveNext

LDIFF_SYM655=Lme_25 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_MoveNext
	.long LDIFF_SYM655
	.byte 68,14,8,135,2,72,14,24,134,6,136,5,138,4,139,3,142,1,68,14,80,68,13,11,3,96,3,10,68,13,13,14
	.byte 24,68,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde25_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_REF>:System.Collections.Generic.IEnumerator<TService>.get_Current"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerator_TService_get_Current"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerator_TService_get_Current
	.long Lme_26

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM656=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM656
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM657=Lfde26_end - Lfde26_start
	.long LDIFF_SYM657
Lfde26_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerator_TService_get_Current

LDIFF_SYM658=Lme_26 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_Generic_IEnumerator_TService_get_Current
	.long LDIFF_SYM658
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,84,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde26_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_REF>:System.Collections.IEnumerator.Reset"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_Reset"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_Reset
	.long Lme_27

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM659=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM659
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM660=Lfde27_end - Lfde27_start
	.long LDIFF_SYM660
Lfde27_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_Reset

LDIFF_SYM661=Lme_27 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_Reset
	.long LDIFF_SYM661
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,100,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde27_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_REF>:System.IDisposable.Dispose"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_IDisposable_Dispose"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_IDisposable_Dispose
	.long Lme_28

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM662=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM662
	.byte 2,123,20,11
	.asciz "CS$0$0000"

LDIFF_SYM663=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM663
	.byte 1,90,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM664=Lfde28_end - Lfde28_start
	.long LDIFF_SYM664
Lfde28_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_IDisposable_Dispose

LDIFF_SYM665=Lme_28 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_IDisposable_Dispose
	.long LDIFF_SYM665
	.byte 68,14,8,135,2,72,14,24,134,6,136,5,138,4,139,3,142,1,68,14,48,68,13,11,2,184,10,68,13,13,14,24
	.byte 68,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde28_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_REF>:System.Collections.IEnumerator.get_Current"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_get_Current
	.long Lme_29

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM666=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM666
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM667=Lfde29_end - Lfde29_start
	.long LDIFF_SYM667
Lfde29_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_get_Current

LDIFF_SYM668=Lme_29 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM668
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,84,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde29_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_REF>:.ctor"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int
	.long Lme_2a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM669=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM669
	.byte 2,125,8,3
	.asciz "<>1__state"

LDIFF_SYM670=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM670
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM671=Lfde30_end - Lfde30_start
	.long LDIFF_SYM671
Lfde30_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int

LDIFF_SYM672=Lme_2a - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__ctor_int
	.long LDIFF_SYM672
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,204,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde30_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_REF>:<>m__Finally3"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__m__Finally3"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__m__Finally3
	.long Lme_2b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM673=LTDIE_63_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM673
	.byte 2,125,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM674=Lfde31_end - Lfde31_start
	.long LDIFF_SYM674
Lfde31_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__m__Finally3

LDIFF_SYM675=Lme_2b - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_REF__m__Finally3
	.long LDIFF_SYM675
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,32,2,168,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde31_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetInstance<TService_GSHAREDVT>"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT"

	.byte 3,90
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT
	.long Lme_30

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM676=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM676
	.byte 2,123,24,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM677=Lfde32_end - Lfde32_start
	.long LDIFF_SYM677
Lfde32_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT

LDIFF_SYM678=Lme_30 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT
	.long LDIFF_SYM678
	.byte 68,14,8,135,2,72,14,28,132,7,133,6,136,5,138,4,139,3,142,1,68,14,72,68,13,11,3,164,1,10,68,13
	.byte 13,14,28,68,8,4,8,5,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde32_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetInstance<TService_GSHAREDVT>"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT_string"

	.byte 3,103
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT_string
	.long Lme_31

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM679=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM679
	.byte 2,123,28,3
	.asciz "key"

LDIFF_SYM680=LDIE_STRING - Ldebug_info_start
	.long LDIFF_SYM680
	.byte 2,123,32,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM681=Lfde33_end - Lfde33_start
	.long LDIFF_SYM681
Lfde33_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT_string

LDIFF_SYM682=Lme_31 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetInstance_TService_GSHAREDVT_string
	.long LDIFF_SYM682
	.byte 68,14,8,135,2,72,14,24,132,6,136,5,138,4,139,3,142,1,68,14,72,68,13,11,3,172,1,10,68,13,13,14
	.byte 24,68,8,4,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde33_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_64:

	.byte 5
	.asciz "_<GetAllInstances>d__0`1"

	.byte 32,16
LDIFF_SYM683=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM683
	.byte 2,35,0,6
	.asciz "<>2__current"

LDIFF_SYM684=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM684
	.byte 2,35,20,6
	.asciz "<>1__state"

LDIFF_SYM685=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM685
	.byte 2,35,24,6
	.asciz "<>l__initialThreadId"

LDIFF_SYM686=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM686
	.byte 2,35,28,6
	.asciz "<>4__this"

LDIFF_SYM687=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM687
	.byte 2,35,8,6
	.asciz "<item>5__1"

LDIFF_SYM688=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM688
	.byte 2,35,12,6
	.asciz "<>7__wrap2"

LDIFF_SYM689=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM689
	.byte 2,35,16,0,7
	.asciz "_<GetAllInstances>d__0`1"

LDIFF_SYM690=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM690
LTDIE_64_POINTER:

	.byte 13
LDIFF_SYM691=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM691
LTDIE_64_REFERENCE:

	.byte 14
LDIFF_SYM692=LTDIE_64 - Ldebug_info_start
	.long LDIFF_SYM692
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase:GetAllInstances<TService_GSHAREDVT>"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_GSHAREDVT"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_GSHAREDVT
	.long Lme_32

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM693=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM693
	.byte 2,123,16,11
	.asciz "V_0"

LDIFF_SYM694=LTDIE_64_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM694
	.byte 1,85,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM695=Lfde34_end - Lfde34_start
	.long LDIFF_SYM695
Lfde34_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_GSHAREDVT

LDIFF_SYM696=Lme_32 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase_GetAllInstances_TService_GSHAREDVT
	.long LDIFF_SYM696
	.byte 68,14,8,135,2,72,14,24,133,6,134,5,136,4,139,3,142,1,68,14,64,68,13,11,2,224,10,68,13,13,14,24
	.byte 68,8,5,8,6,8,8,8,11,14,8,68,11
	.align 2
Lfde34_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_65:

	.byte 5
	.asciz "_<GetAllInstances>d__0`1"

	.byte 32,16
LDIFF_SYM697=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM697
	.byte 2,35,0,6
	.asciz "<>2__current"

LDIFF_SYM698=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM698
	.byte 2,35,20,6
	.asciz "<>1__state"

LDIFF_SYM699=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM699
	.byte 2,35,24,6
	.asciz "<>l__initialThreadId"

LDIFF_SYM700=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM700
	.byte 2,35,28,6
	.asciz "<>4__this"

LDIFF_SYM701=LTDIE_30_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM701
	.byte 2,35,8,6
	.asciz "<item>5__1"

LDIFF_SYM702=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM702
	.byte 2,35,12,6
	.asciz "<>7__wrap2"

LDIFF_SYM703=LTDIE_33_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM703
	.byte 2,35,16,0,7
	.asciz "_<GetAllInstances>d__0`1"

LDIFF_SYM704=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM704
LTDIE_65_POINTER:

	.byte 13
LDIFF_SYM705=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM705
LTDIE_65_REFERENCE:

	.byte 14
LDIFF_SYM706=LTDIE_65 - Ldebug_info_start
	.long LDIFF_SYM706
	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_GSHAREDVT>:System.Collections.Generic.IEnumerable<TService>.GetEnumerator"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerable_TService_GetEnumerator"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerable_TService_GetEnumerator
	.long Lme_33

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM707=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM707
	.byte 2,123,12,11
	.asciz "V_0"

LDIFF_SYM708=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM708
	.byte 1,86,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM709=Lfde35_end - Lfde35_start
	.long LDIFF_SYM709
Lfde35_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerable_TService_GetEnumerator

LDIFF_SYM710=Lme_33 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerable_TService_GetEnumerator
	.long LDIFF_SYM710
	.byte 68,14,8,135,2,72,14,24,134,6,136,5,138,4,139,3,142,1,68,14,56,68,13,11,3,172,1,10,68,13,13,14
	.byte 24,68,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde35_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_GSHAREDVT>:System.Collections.IEnumerable.GetEnumerator"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerable_GetEnumerator"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerable_GetEnumerator
	.long Lme_34

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM711=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM711
	.byte 2,123,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM712=Lfde36_end - Lfde36_start
	.long LDIFF_SYM712
Lfde36_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerable_GetEnumerator

LDIFF_SYM713=Lme_34 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerable_GetEnumerator
	.long LDIFF_SYM713
	.byte 68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,48,68,13,11,2,168,10,68,13,13,14,16,68,8,8,8
	.byte 11,14,8,68,11
	.align 2
Lfde36_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_GSHAREDVT>:MoveNext"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_MoveNext"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_MoveNext
	.long Lme_35

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM714=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM714
	.byte 2,123,40,11
	.asciz "CS$1$0000"

LDIFF_SYM715=LDIE_BOOLEAN - Ldebug_info_start
	.long LDIFF_SYM715
	.byte 2,123,8,11
	.asciz "CS$0$0001"

LDIFF_SYM716=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM716
	.byte 1,85,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM717=Lfde37_end - Lfde37_start
	.long LDIFF_SYM717
Lfde37_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_MoveNext

LDIFF_SYM718=Lme_35 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_MoveNext
	.long LDIFF_SYM718
	.byte 68,14,8,135,2,72,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,104,68,13,11,3,0,5,10
	.byte 68,13,13,14,32,68,8,4,8,5,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde37_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_GSHAREDVT>:System.Collections.Generic.IEnumerator<TService>.get_Current"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerator_TService_get_Current"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerator_TService_get_Current
	.long Lme_36

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM719=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM719
	.byte 2,123,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM720=Lfde38_end - Lfde38_start
	.long LDIFF_SYM720
Lfde38_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerator_TService_get_Current

LDIFF_SYM721=Lme_36 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_Generic_IEnumerator_TService_get_Current
	.long LDIFF_SYM721
	.byte 68,14,8,135,2,72,14,24,133,6,134,5,136,4,139,3,142,1,68,14,48,68,13,11,2,216,10,68,13,13,14,24
	.byte 68,8,5,8,6,8,8,8,11,14,8,68,11
	.align 2
Lfde38_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_GSHAREDVT>:System.Collections.IEnumerator.Reset"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_Reset"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_Reset
	.long Lme_37

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM722=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM722
	.byte 2,123,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM723=Lfde39_end - Lfde39_start
	.long LDIFF_SYM723
Lfde39_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_Reset

LDIFF_SYM724=Lme_37 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_Reset
	.long LDIFF_SYM724
	.byte 68,14,8,135,2,72,14,16,136,4,139,3,142,1,68,14,40,68,13,11,2,132,10,68,13,13,14,16,68,8,8,8
	.byte 11,14,8,68,11
	.align 2
Lfde39_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_GSHAREDVT>:System.IDisposable.Dispose"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_IDisposable_Dispose"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_IDisposable_Dispose
	.long Lme_38

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM725=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM725
	.byte 2,123,24,11
	.asciz "CS$0$0000"

LDIFF_SYM726=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM726
	.byte 1,86,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM727=Lfde40_end - Lfde40_start
	.long LDIFF_SYM727
Lfde40_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_IDisposable_Dispose

LDIFF_SYM728=Lme_38 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_IDisposable_Dispose
	.long LDIFF_SYM728
	.byte 68,14,8,135,2,72,14,28,133,7,134,6,136,5,138,4,139,3,142,1,68,14,72,68,13,11,2,252,10,68,13,13
	.byte 14,28,68,8,5,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde40_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_GSHAREDVT>:System.Collections.IEnumerator.get_Current"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_get_Current"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_get_Current
	.long Lme_39

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM729=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM729
	.byte 2,123,8,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM730=Lfde41_end - Lfde41_start
	.long LDIFF_SYM730
Lfde41_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_get_Current

LDIFF_SYM731=Lme_39 - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT_System_Collections_IEnumerator_get_Current
	.long LDIFF_SYM731
	.byte 68,14,8,135,2,72,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,64,68,13,11,3,56,1,10
	.byte 68,13,13,14,32,68,8,4,8,5,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde41_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_GSHAREDVT>:.ctor"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__ctor_int"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__ctor_int
	.long Lme_3a

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM732=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM732
	.byte 2,123,12,3
	.asciz "<>1__state"

LDIFF_SYM733=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM733
	.byte 2,123,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM734=Lfde42_end - Lfde42_start
	.long LDIFF_SYM734
Lfde42_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__ctor_int

LDIFF_SYM735=Lme_3a - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__ctor_int
	.long LDIFF_SYM735
	.byte 68,14,8,135,2,72,14,20,134,5,136,4,139,3,142,1,68,14,64,68,13,11,3,4,1,10,68,13,13,14,20,68
	.byte 8,6,8,8,8,11,14,8,68,11
	.align 2
Lfde42_end:

.section __DWARF, __debug_info,regular,debug

	.byte 2
	.asciz "Microsoft.Practices.ServiceLocation.ServiceLocatorImplBase/<GetAllInstances>d__0`1<TService_GSHAREDVT>:<>m__Finally3"
	.asciz "Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__m__Finally3"

	.byte 0,0
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__m__Finally3
	.long Lme_3b

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM736=LTDIE_65_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM736
	.byte 2,123,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM737=Lfde43_end - Lfde43_start
	.long LDIFF_SYM737
Lfde43_start:

	.long 0
	.align 2
	.long Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__m__Finally3

LDIFF_SYM738=Lme_3b - Microsoft_Practices_ServiceLocation_ServiceLocatorImplBase__GetAllInstancesd__0_1_TService_GSHAREDVT__m__Finally3
	.long LDIFF_SYM738
	.byte 68,14,8,135,2,72,14,20,136,5,138,4,139,3,142,1,68,14,40,68,13,11,2,236,10,68,13,13,14,20,68,8
	.byte 8,8,10,8,11,14,8,68,11
	.align 2
Lfde43_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_66:

	.byte 5
	.asciz "System_Array"

	.byte 8,16
LDIFF_SYM739=LTDIE_2 - Ldebug_info_start
	.long LDIFF_SYM739
	.byte 2,35,0,0,7
	.asciz "System_Array"

LDIFF_SYM740=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM740
LTDIE_66_POINTER:

	.byte 13
LDIFF_SYM741=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM741
LTDIE_66_REFERENCE:

	.byte 14
LDIFF_SYM742=LTDIE_66 - Ldebug_info_start
	.long LDIFF_SYM742
	.byte 2
	.asciz "System.Array:InternalArray__IEnumerable_GetEnumerator<T_REF>"
	.asciz "System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF"

	.byte 5,78
	.long System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.long Lme_3c

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM743=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM743
	.byte 2,125,28,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM744=Lfde44_end - Lfde44_start
	.long LDIFF_SYM744
Lfde44_start:

	.long 0
	.align 2
	.long System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF

LDIFF_SYM745=Lme_3c - System_Array_InternalArray__IEnumerable_GetEnumerator_T_REF
	.long LDIFF_SYM745
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,72,3,44,1,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde44_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_67:

	.byte 17
	.asciz "_<Module>"

	.byte 8,7
	.asciz "_<Module>"

LDIFF_SYM746=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM746
LTDIE_67_POINTER:

	.byte 13
LDIFF_SYM747=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM747
LTDIE_67_REFERENCE:

	.byte 14
LDIFF_SYM748=LTDIE_67 - Ldebug_info_start
	.long LDIFF_SYM748
LTDIE_68:

	.byte 17
	.asciz "Microsoft_Practices_ServiceLocation_IServiceLocator"

	.byte 8,7
	.asciz "Microsoft_Practices_ServiceLocation_IServiceLocator"

LDIFF_SYM749=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM749
LTDIE_68_POINTER:

	.byte 13
LDIFF_SYM750=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM750
LTDIE_68_REFERENCE:

	.byte 14
LDIFF_SYM751=LTDIE_68 - Ldebug_info_start
	.long LDIFF_SYM751
	.byte 2
	.asciz "(wrapper_delegate-invoke)_<Module>:invoke_IServiceLocator"
	.asciz "wrapper_delegate_invoke__Module_invoke_IServiceLocator"

	.byte 0,0
	.long wrapper_delegate_invoke__Module_invoke_IServiceLocator
	.long Lme_3d

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM752=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM752
	.byte 1,90,11
	.asciz "V_0"

LDIFF_SYM753=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM753
	.byte 1,86,11
	.asciz "V_1"

LDIFF_SYM754=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM754
	.byte 1,85,11
	.asciz "V_2"

LDIFF_SYM755=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM755
	.byte 1,84,11
	.asciz "V_3"

LDIFF_SYM756=LTDIE_25_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM756
	.byte 1,91,11
	.asciz "V_4"

LDIFF_SYM757=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM757
	.byte 2,125,8,11
	.asciz "V_5"

LDIFF_SYM758=LTDIE_68_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM758
	.byte 2,125,12,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM759=Lfde45_end - Lfde45_start
	.long LDIFF_SYM759
Lfde45_start:

	.long 0
	.align 2
	.long wrapper_delegate_invoke__Module_invoke_IServiceLocator

LDIFF_SYM760=Lme_3d - wrapper_delegate_invoke__Module_invoke_IServiceLocator
	.long LDIFF_SYM760
	.byte 68,14,8,135,2,72,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,64,3,156,3,10,68,14,32
	.byte 68,8,4,8,5,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde45_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_69:

	.byte 5
	.asciz "System_AsyncCallback"

	.byte 56,16
LDIFF_SYM761=LTDIE_25 - Ldebug_info_start
	.long LDIFF_SYM761
	.byte 2,35,0,0,7
	.asciz "System_AsyncCallback"

LDIFF_SYM762=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM762
LTDIE_69_POINTER:

	.byte 13
LDIFF_SYM763=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM763
LTDIE_69_REFERENCE:

	.byte 14
LDIFF_SYM764=LTDIE_69 - Ldebug_info_start
	.long LDIFF_SYM764
	.byte 2
	.asciz "(wrapper_delegate-begin-invoke)_<Module>:begin_invoke_IAsyncResult__this___AsyncCallback_object"
	.asciz "wrapper_delegate_begin_invoke__Module_begin_invoke_IAsyncResult__this___AsyncCallback_object_System_AsyncCallback_object"

	.byte 0,0
	.long wrapper_delegate_begin_invoke__Module_begin_invoke_IAsyncResult__this___AsyncCallback_object_System_AsyncCallback_object
	.long Lme_3e

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM765=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM765
	.byte 2,123,8,3
	.asciz "param0"

LDIFF_SYM766=LTDIE_69_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM766
	.byte 2,123,12,3
	.asciz "param1"

LDIFF_SYM767=LDIE_OBJECT - Ldebug_info_start
	.long LDIFF_SYM767
	.byte 2,123,16,11
	.asciz "V_0"

LDIFF_SYM768=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM768
	.byte 1,86,11
	.asciz "V_1"

LDIFF_SYM769=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM769
	.byte 1,85,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM770=Lfde46_end - Lfde46_start
	.long LDIFF_SYM770
Lfde46_start:

	.long 0
	.align 2
	.long wrapper_delegate_begin_invoke__Module_begin_invoke_IAsyncResult__this___AsyncCallback_object_System_AsyncCallback_object

LDIFF_SYM771=Lme_3e - wrapper_delegate_begin_invoke__Module_begin_invoke_IAsyncResult__this___AsyncCallback_object_System_AsyncCallback_object
	.long LDIFF_SYM771
	.byte 68,14,8,135,2,72,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,64,68,13,11,3,124,1,10
	.byte 68,13,13,14,32,68,8,4,8,5,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde46_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_70:

	.byte 17
	.asciz "System_IAsyncResult"

	.byte 8,7
	.asciz "System_IAsyncResult"

LDIFF_SYM772=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM772
LTDIE_70_POINTER:

	.byte 13
LDIFF_SYM773=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM773
LTDIE_70_REFERENCE:

	.byte 14
LDIFF_SYM774=LTDIE_70 - Ldebug_info_start
	.long LDIFF_SYM774
	.byte 2
	.asciz "(wrapper_delegate-end-invoke)_<Module>:end_invoke_IServiceLocator__this___IAsyncResult"
	.asciz "wrapper_delegate_end_invoke__Module_end_invoke_IServiceLocator__this___IAsyncResult_System_IAsyncResult"

	.byte 0,0
	.long wrapper_delegate_end_invoke__Module_end_invoke_IServiceLocator__this___IAsyncResult_System_IAsyncResult
	.long Lme_3f

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM775=LTDIE_67_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM775
	.byte 2,123,8,3
	.asciz "param0"

LDIFF_SYM776=LTDIE_70_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM776
	.byte 2,123,12,11
	.asciz "V_0"

LDIFF_SYM777=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM777
	.byte 1,86,11
	.asciz "V_1"

LDIFF_SYM778=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM778
	.byte 1,85,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM779=Lfde47_end - Lfde47_start
	.long LDIFF_SYM779
Lfde47_start:

	.long 0
	.align 2
	.long wrapper_delegate_end_invoke__Module_end_invoke_IServiceLocator__this___IAsyncResult_System_IAsyncResult

LDIFF_SYM780=Lme_3f - wrapper_delegate_end_invoke__Module_end_invoke_IServiceLocator__this___IAsyncResult_System_IAsyncResult
	.long LDIFF_SYM780
	.byte 68,14,8,135,2,72,14,32,132,8,133,7,134,6,136,5,138,4,139,3,142,1,68,14,56,68,13,11,3,56,1,10
	.byte 68,13,13,14,32,68,8,4,8,5,8,6,8,8,8,10,8,11,14,8,68,11
	.align 2
Lfde47_end:

.section __DWARF, __debug_info,regular,debug
LTDIE_71:

	.byte 5
	.asciz "_InternalEnumerator`1"

	.byte 16,16
LDIFF_SYM781=LTDIE_5 - Ldebug_info_start
	.long LDIFF_SYM781
	.byte 2,35,0,6
	.asciz "array"

LDIFF_SYM782=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM782
	.byte 2,35,8,6
	.asciz "idx"

LDIFF_SYM783=LDIE_I4 - Ldebug_info_start
	.long LDIFF_SYM783
	.byte 2,35,12,0,7
	.asciz "_InternalEnumerator`1"

LDIFF_SYM784=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM784
LTDIE_71_POINTER:

	.byte 13
LDIFF_SYM785=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM785
LTDIE_71_REFERENCE:

	.byte 14
LDIFF_SYM786=LTDIE_71 - Ldebug_info_start
	.long LDIFF_SYM786
	.byte 2
	.asciz "System.Array/InternalEnumerator`1<T_REF>:.ctor"
	.asciz "System_Array_InternalEnumerator_1_T_REF__ctor_System_Array"

	.byte 5,239,1
	.long System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.long Lme_40

	.byte 2,118,16,3
	.asciz "this"

LDIFF_SYM787=LDIE_I - Ldebug_info_start
	.long LDIFF_SYM787
	.byte 2,125,12,3
	.asciz "array"

LDIFF_SYM788=LTDIE_66_REFERENCE - Ldebug_info_start
	.long LDIFF_SYM788
	.byte 2,125,16,0

.section __DWARF, __debug_frame,regular,debug

LDIFF_SYM789=Lfde48_end - Lfde48_start
	.long LDIFF_SYM789
Lfde48_start:

	.long 0
	.align 2
	.long System_Array_InternalEnumerator_1_T_REF__ctor_System_Array

LDIFF_SYM790=Lme_40 - System_Array_InternalEnumerator_1_T_REF__ctor_System_Array
	.long LDIFF_SYM790
	.byte 68,14,8,135,2,72,14,12,136,3,142,1,68,14,48,2,176,10,68,14,12,68,8,8,14,8,68,11
	.align 2
Lfde48_end:

.section __DWARF, __debug_info,regular,debug

	.byte 0
Ldebug_info_end:
.text
	.align 3
mem_end:
