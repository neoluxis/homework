
.\scienCalcu.abandoned.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 55 59 00 00 	mov    0x5955(%rip),%rax        # 140006970 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 56 59 00 00 	mov    0x5956(%rip),%rax        # 140006980 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 59 59 00 00 	mov    0x5959(%rip),%rax        # 140006990 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 cc 58 00 00 	mov    0x58cc(%rip),%rax        # 140006910 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 ff 58 00 00 	mov    0x58ff(%rip),%rax        # 140006960 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 8f 00 00    	mov    %ecx,0x8fb9(%rip)        # 14000a020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 e1 35 00 00       	call   140004658 <__set_app_type>
   140001077:	e8 54 35 00 00       	call   1400045d0 <__p__fmode>
   14000107c:	48 8b 15 ad 59 00 00 	mov    0x59ad(%rip),%rdx        # 140006a30 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 54 35 00 00       	call   1400045e0 <__p__commode>
   14000108c:	48 8b 15 7d 59 00 00 	mov    0x597d(%rip),%rdx        # 140006a10 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 64 18 00 00       	call   140002900 <_setargv>
   14000109c:	48 8b 05 ed 57 00 00 	mov    0x57ed(%rip),%rax        # 140006890 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 9e 35 00 00       	call   140004658 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 51 59 00 00 	mov    0x5951(%rip),%rcx        # 140006a50 <.refptr._matherr>
   1400010ff:	e8 6c 1f 00 00       	call   140003070 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret    
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 25 59 00 00 	mov    0x5925(%rip),%rax        # 140006a60 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 8e 00 00 	lea    0x8ee6(%rip),%r8        # 14000a028 <envp>
   140001142:	48 8d 15 e7 8e 00 00 	lea    0x8ee7(%rip),%rdx        # 14000a030 <argv>
   140001149:	48 8d 0d e8 8e 00 00 	lea    0x8ee8(%rip),%rcx        # 14000a038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 8e 00 00    	mov    %eax,0x8ec0(%rip)        # 14000a018 <startinfo>
   140001158:	48 8b 05 c1 58 00 00 	mov    0x58c1(%rip),%rax        # 140006a20 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 af 8e 00 00 	lea    0x8eaf(%rip),%rax        # 14000a018 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 d5 34 00 00       	call   140004648 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret    
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
   14000118d:	b9 0d 00 00 00       	mov    $0xd,%ecx
   140001192:	31 c0                	xor    %eax,%eax
   140001194:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001199:	48 89 d7             	mov    %rdx,%rdi
   14000119c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   14000119f:	48 8b 3d ba 57 00 00 	mov    0x57ba(%rip),%rdi        # 140006960 <.refptr.__mingw_app_type>
   1400011a6:	44 8b 0f             	mov    (%rdi),%r9d
   1400011a9:	45 85 c9             	test   %r9d,%r9d
   1400011ac:	0f 85 9e 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b2:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011b9:	00 00 
   1400011bb:	48 8b 1d ee 57 00 00 	mov    0x57ee(%rip),%rbx        # 1400069b0 <.refptr.__native_startup_lock>
   1400011c2:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c6:	31 ed                	xor    %ebp,%ebp
   1400011c8:	4c 8b 25 79 a0 00 00 	mov    0xa079(%rip),%r12        # 14000b248 <__imp_Sleep>
   1400011cf:	eb 18                	jmp    1400011e9 <__tmainCRTStartup+0x69>
   1400011d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011d8:	48 39 c6             	cmp    %rax,%rsi
   1400011db:	0f 84 0f 02 00 00    	je     1400013f0 <__tmainCRTStartup+0x270>
   1400011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011e6:	41 ff d4             	call   *%r12
   1400011e9:	48 89 e8             	mov    %rbp,%rax
   1400011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011f1:	48 85 c0             	test   %rax,%rax
   1400011f4:	75 e2                	jne    1400011d8 <__tmainCRTStartup+0x58>
   1400011f6:	48 8b 35 c3 57 00 00 	mov    0x57c3(%rip),%rsi        # 1400069c0 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 fd 01 00 00    	je     140001407 <__tmainCRTStartup+0x287>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 8d 00 00 01 	movl   $0x1,0x8dfe(%rip)        # 14000a01c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 f3 01 00 00    	je     14000141c <__tmainCRTStartup+0x29c>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 0c 02 00 00    	je     14000143d <__tmainCRTStartup+0x2bd>
   140001231:	48 8b 05 c8 56 00 00 	mov    0x56c8(%rip),%rax        # 140006900 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 7f 1a 00 00       	call   140002cd0 <_pei386_runtime_relocator>
   140001251:	48 8b 0d e8 57 00 00 	mov    0x57e8(%rip),%rcx        # 140006a40 <.refptr._gnu_exception_handler>
   140001258:	ff 15 e2 9f 00 00    	call   *0x9fe2(%rip)        # 14000b240 <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 3b 57 00 00 	mov    0x573b(%rip),%rdx        # 1400069a0 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 9c 33 00 00       	call   140004610 <_set_invalid_parameter_handler>
   140001274:	e8 67 18 00 00       	call   140002ae0 <_fpreset>
   140001279:	48 8b 05 90 56 00 00 	mov    0x5690(%rip),%rax        # 140006910 <.refptr.__image_base__>
   140001280:	48 89 05 89 8d 00 00 	mov    %rax,0x8d89(%rip)        # 14000a010 <__mingw_winmain_hInstance>
   140001287:	e8 64 33 00 00       	call   1400045f0 <__p__acmdln>
   14000128c:	31 c9                	xor    %ecx,%ecx
   14000128e:	48 8b 00             	mov    (%rax),%rax
   140001291:	48 85 c0             	test   %rax,%rax
   140001294:	75 1c                	jne    1400012b2 <__tmainCRTStartup+0x132>
   140001296:	eb 58                	jmp    1400012f0 <__tmainCRTStartup+0x170>
   140001298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000129f:	00 
   1400012a0:	84 d2                	test   %dl,%dl
   1400012a2:	74 45                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012a4:	83 e1 01             	and    $0x1,%ecx
   1400012a7:	74 27                	je     1400012d0 <__tmainCRTStartup+0x150>
   1400012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012ae:	48 83 c0 01          	add    $0x1,%rax
   1400012b2:	0f b6 10             	movzbl (%rax),%edx
   1400012b5:	80 fa 20             	cmp    $0x20,%dl
   1400012b8:	7e e6                	jle    1400012a0 <__tmainCRTStartup+0x120>
   1400012ba:	41 89 c8             	mov    %ecx,%r8d
   1400012bd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012c1:	80 fa 22             	cmp    $0x22,%dl
   1400012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012c8:	eb e4                	jmp    1400012ae <__tmainCRTStartup+0x12e>
   1400012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012d0:	84 d2                	test   %dl,%dl
   1400012d2:	74 15                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012dc:	48 83 c0 01          	add    $0x1,%rax
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 05                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012e4:	80 fa 20             	cmp    $0x20,%dl
   1400012e7:	7e ef                	jle    1400012d8 <__tmainCRTStartup+0x158>
   1400012e9:	48 89 05 18 8d 00 00 	mov    %rax,0x8d18(%rip)        # 14000a008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 d8 00 00 00    	jne    1400013e0 <__tmainCRTStartup+0x260>
   140001308:	89 05 f2 3c 00 00    	mov    %eax,0x3cf2(%rip)        # 140005000 <__data_start__>
   14000130e:	8b 1d 24 8d 00 00    	mov    0x8d24(%rip),%ebx        # 14000a038 <argc>
   140001314:	44 8d 63 01          	lea    0x1(%rbx),%r12d
   140001318:	4d 63 e4             	movslq %r12d,%r12
   14000131b:	49 c1 e4 03          	shl    $0x3,%r12
   14000131f:	4c 89 e1             	mov    %r12,%rcx
   140001322:	e8 a1 33 00 00       	call   1400046c8 <malloc>
   140001327:	48 8b 3d 02 8d 00 00 	mov    0x8d02(%rip),%rdi        # 14000a030 <argv>
   14000132e:	48 89 c5             	mov    %rax,%rbp
   140001331:	85 db                	test   %ebx,%ebx
   140001333:	0f 8e 65 01 00 00    	jle    14000149e <__tmainCRTStartup+0x31e>
   140001339:	49 83 ec 08          	sub    $0x8,%r12
   14000133d:	31 db                	xor    %ebx,%ebx
   14000133f:	90                   	nop
   140001340:	48 8b 0c 1f          	mov    (%rdi,%rbx,1),%rcx
   140001344:	e8 97 33 00 00       	call   1400046e0 <strlen>
   140001349:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134d:	48 89 f1             	mov    %rsi,%rcx
   140001350:	e8 73 33 00 00       	call   1400046c8 <malloc>
   140001355:	49 89 f0             	mov    %rsi,%r8
   140001358:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000135d:	48 8b 14 1f          	mov    (%rdi,%rbx,1),%rdx
   140001361:	48 89 c1             	mov    %rax,%rcx
   140001364:	48 83 c3 08          	add    $0x8,%rbx
   140001368:	e8 63 33 00 00       	call   1400046d0 <memcpy>
   14000136d:	4c 39 e3             	cmp    %r12,%rbx
   140001370:	75 ce                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001372:	48 01 eb             	add    %rbp,%rbx
   140001375:	48 c7 03 00 00 00 00 	movq   $0x0,(%rbx)
   14000137c:	48 89 2d ad 8c 00 00 	mov    %rbp,0x8cad(%rip)        # 14000a030 <argv>
   140001383:	e8 58 15 00 00       	call   1400028e0 <__main>
   140001388:	48 8b 05 91 55 00 00 	mov    0x5591(%rip),%rax        # 140006920 <.refptr.__imp___initenv>
   14000138f:	4c 8b 05 92 8c 00 00 	mov    0x8c92(%rip),%r8        # 14000a028 <envp>
   140001396:	8b 0d 9c 8c 00 00    	mov    0x8c9c(%rip),%ecx        # 14000a038 <argc>
   14000139c:	48 8b 00             	mov    (%rax),%rax
   14000139f:	4c 89 00             	mov    %r8,(%rax)
   1400013a2:	48 8b 15 87 8c 00 00 	mov    0x8c87(%rip),%rdx        # 14000a030 <argv>
   1400013a9:	e8 82 01 00 00       	call   140001530 <main>
   1400013ae:	8b 0d 6c 8c 00 00    	mov    0x8c6c(%rip),%ecx        # 14000a020 <managedapp>
   1400013b4:	89 05 6a 8c 00 00    	mov    %eax,0x8c6a(%rip)        # 14000a024 <mainret>
   1400013ba:	85 c9                	test   %ecx,%ecx
   1400013bc:	0f 84 e4 00 00 00    	je     1400014a6 <__tmainCRTStartup+0x326>
   1400013c2:	8b 15 54 8c 00 00    	mov    0x8c54(%rip),%edx        # 14000a01c <has_cctor>
   1400013c8:	85 d2                	test   %edx,%edx
   1400013ca:	0f 84 90 00 00 00    	je     140001460 <__tmainCRTStartup+0x2e0>
   1400013d0:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
   1400013d7:	5b                   	pop    %rbx
   1400013d8:	5e                   	pop    %rsi
   1400013d9:	5f                   	pop    %rdi
   1400013da:	5d                   	pop    %rbp
   1400013db:	41 5c                	pop    %r12
   1400013dd:	c3                   	ret    
   1400013de:	66 90                	xchg   %ax,%ax
   1400013e0:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013e5:	e9 1e ff ff ff       	jmp    140001308 <__tmainCRTStartup+0x188>
   1400013ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400013f0:	48 8b 35 c9 55 00 00 	mov    0x55c9(%rip),%rsi        # 1400069c0 <.refptr.__native_startup_state>
   1400013f7:	bd 01 00 00 00       	mov    $0x1,%ebp
   1400013fc:	8b 06                	mov    (%rsi),%eax
   1400013fe:	83 f8 01             	cmp    $0x1,%eax
   140001401:	0f 85 03 fe ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   140001407:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000140c:	e8 57 32 00 00       	call   140004668 <_amsg_exit>
   140001411:	8b 06                	mov    (%rsi),%eax
   140001413:	83 f8 01             	cmp    $0x1,%eax
   140001416:	0f 85 0d fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   14000141c:	48 8b 15 bd 55 00 00 	mov    0x55bd(%rip),%rdx        # 1400069e0 <.refptr.__xc_z>
   140001423:	48 8b 0d a6 55 00 00 	mov    0x55a6(%rip),%rcx        # 1400069d0 <.refptr.__xc_a>
   14000142a:	e8 51 32 00 00       	call   140004680 <_initterm>
   14000142f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001435:	85 ed                	test   %ebp,%ebp
   140001437:	0f 85 f4 fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   14000143d:	31 c0                	xor    %eax,%eax
   14000143f:	48 87 03             	xchg   %rax,(%rbx)
   140001442:	e9 ea fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   140001447:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000144e:	00 00 
   140001450:	48 89 d1             	mov    %rdx,%rcx
   140001453:	ff 15 cf 9d 00 00    	call   *0x9dcf(%rip)        # 14000b228 <__imp_GetStartupInfoA>
   140001459:	e9 54 fd ff ff       	jmp    1400011b2 <__tmainCRTStartup+0x32>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 0b 32 00 00       	call   140004670 <_cexit>
   140001465:	8b 05 b9 8b 00 00    	mov    0x8bb9(%rip),%eax        # 14000a024 <mainret>
   14000146b:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	c3                   	ret    
   140001479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001480:	48 8b 15 79 55 00 00 	mov    0x5579(%rip),%rdx        # 140006a00 <.refptr.__xi_z>
   140001487:	48 8b 0d 62 55 00 00 	mov    0x5562(%rip),%rcx        # 1400069f0 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 e7 31 00 00       	call   140004680 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	48 89 c3             	mov    %rax,%rbx
   1400014a1:	e9 cf fe ff ff       	jmp    140001375 <__tmainCRTStartup+0x1f5>
   1400014a6:	89 c1                	mov    %eax,%ecx
   1400014a8:	e8 f3 31 00 00       	call   1400046a0 <exit>
   1400014ad:	90                   	nop
   1400014ae:	66 90                	xchg   %ax,%ax

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 a5 54 00 00 	mov    0x54a5(%rip),%rax        # 140006960 <.refptr.__mingw_app_type>
   1400014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014c1:	e8 ba fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014c6:	90                   	nop

00000001400014c7 <.l_endw>:
   1400014c7:	90                   	nop
   1400014c8:	48 83 c4 28          	add    $0x28,%rsp
   1400014cc:	c3                   	ret    
   1400014cd:	0f 1f 00             	nopl   (%rax)

00000001400014d0 <mainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_start>:
   1400014d4:	48 8b 05 85 54 00 00 	mov    0x5485(%rip),%rax        # 140006960 <.refptr.__mingw_app_type>
   1400014db:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014e1:	e8 9a fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_end>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)

00000001400014f0 <atexit>:
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f4:	e8 8f 31 00 00       	call   140004688 <_onexit>
   1400014f9:	48 83 f8 01          	cmp    $0x1,%rax
   1400014fd:	19 c0                	sbb    %eax,%eax
   1400014ff:	48 83 c4 28          	add    $0x28,%rsp
   140001503:	c3                   	ret    
   140001504:	90                   	nop
   140001505:	90                   	nop
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	90                   	nop
   140001509:	90                   	nop
   14000150a:	90                   	nop
   14000150b:	90                   	nop
   14000150c:	90                   	nop
   14000150d:	90                   	nop
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <__gcc_register_frame>:
   140001510:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001520 <__gcc_deregister_frame>
   140001517:	e9 d4 ff ff ff       	jmp    1400014f0 <atexit>
   14000151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001520 <__gcc_deregister_frame>:
   140001520:	c3                   	ret    
   140001521:	90                   	nop
   140001522:	90                   	nop
   140001523:	90                   	nop
   140001524:	90                   	nop
   140001525:	90                   	nop
   140001526:	90                   	nop
   140001527:	90                   	nop
   140001528:	90                   	nop
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
   14000152f:	90                   	nop

0000000140001530 <main>:
   140001530:	55                   	push   %rbp
   140001531:	48 89 e5             	mov    %rsp,%rbp
   140001534:	48 83 ec 20          	sub    $0x20,%rsp
   140001538:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000153b:	48 89 55 18          	mov    %rdx,0x18(%rbp)
   14000153f:	e8 9c 13 00 00       	call   1400028e0 <__main>
   140001544:	e8 1a 00 00 00       	call   140001563 <_Z5startv>
   140001549:	48 8d 05 b0 4a 00 00 	lea    0x4ab0(%rip),%rax        # 140006000 <.rdata>
   140001550:	48 89 c1             	mov    %rax,%rcx
   140001553:	e8 98 31 00 00       	call   1400046f0 <system>
   140001558:	b8 00 00 00 00       	mov    $0x0,%eax
   14000155d:	48 83 c4 20          	add    $0x20,%rsp
   140001561:	5d                   	pop    %rbp
   140001562:	c3                   	ret    

0000000140001563 <_Z5startv>:
   140001563:	55                   	push   %rbp
   140001564:	48 89 e5             	mov    %rsp,%rbp
   140001567:	48 83 ec 30          	sub    $0x30,%rsp
   14000156b:	e8 51 00 00 00       	call   1400015c1 <_Z8selectorv>
   140001570:	88 45 ff             	mov    %al,-0x1(%rbp)
   140001573:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
   140001577:	83 f8 71             	cmp    $0x71,%eax
   14000157a:	74 3d                	je     1400015b9 <_Z5startv+0x56>
   14000157c:	83 f8 71             	cmp    $0x71,%eax
   14000157f:	7f 2b                	jg     1400015ac <_Z5startv+0x49>
   140001581:	83 f8 33             	cmp    $0x33,%eax
   140001584:	74 1f                	je     1400015a5 <_Z5startv+0x42>
   140001586:	83 f8 33             	cmp    $0x33,%eax
   140001589:	7f 21                	jg     1400015ac <_Z5startv+0x49>
   14000158b:	83 f8 31             	cmp    $0x31,%eax
   14000158e:	74 07                	je     140001597 <_Z5startv+0x34>
   140001590:	83 f8 32             	cmp    $0x32,%eax
   140001593:	74 09                	je     14000159e <_Z5startv+0x3b>
   140001595:	eb 15                	jmp    1400015ac <_Z5startv+0x49>
   140001597:	e8 23 01 00 00       	call   1400016bf <_Z6normalv>
   14000159c:	eb 1c                	jmp    1400015ba <_Z5startv+0x57>
   14000159e:	e8 36 02 00 00       	call   1400017d9 <_Z10scientificv>
   1400015a3:	eb 15                	jmp    1400015ba <_Z5startv+0x57>
   1400015a5:	e8 62 03 00 00       	call   14000190c <_Z10programmerv>
   1400015aa:	eb 0e                	jmp    1400015ba <_Z5startv+0x57>
   1400015ac:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
   1400015b0:	89 c1                	mov    %eax,%ecx
   1400015b2:	e8 6f 00 00 00       	call   140001626 <_Z13unknownOptionc>
   1400015b7:	eb 01                	jmp    1400015ba <_Z5startv+0x57>
   1400015b9:	90                   	nop
   1400015ba:	90                   	nop
   1400015bb:	48 83 c4 30          	add    $0x30,%rsp
   1400015bf:	5d                   	pop    %rbp
   1400015c0:	c3                   	ret    

00000001400015c1 <_Z8selectorv>:
   1400015c1:	55                   	push   %rbp
   1400015c2:	48 89 e5             	mov    %rsp,%rbp
   1400015c5:	48 83 ec 30          	sub    $0x30,%rsp
   1400015c9:	48 8d 05 36 4a 00 00 	lea    0x4a36(%rip),%rax        # 140006006 <.rdata+0x6>
   1400015d0:	48 89 c2             	mov    %rax,%rdx
   1400015d3:	48 8b 05 d6 52 00 00 	mov    0x52d6(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   1400015da:	48 89 c1             	mov    %rax,%rcx
   1400015dd:	e8 fe 11 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400015e2:	48 89 c1             	mov    %rax,%rcx
   1400015e5:	48 8d 05 34 4a 00 00 	lea    0x4a34(%rip),%rax        # 140006020 <.rdata+0x20>
   1400015ec:	48 89 c2             	mov    %rax,%rdx
   1400015ef:	e8 ec 11 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400015f4:	48 89 c1             	mov    %rax,%rcx
   1400015f7:	48 8b 05 c2 52 00 00 	mov    0x52c2(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400015fe:	48 89 c2             	mov    %rax,%rdx
   140001601:	e8 0a 12 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001606:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
   14000160a:	48 89 c2             	mov    %rax,%rdx
   14000160d:	48 8b 05 8c 52 00 00 	mov    0x528c(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001614:	48 89 c1             	mov    %rax,%rcx
   140001617:	e8 b4 11 00 00       	call   1400027d0 <_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_>
   14000161c:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   140001620:	48 83 c4 30          	add    $0x30,%rsp
   140001624:	5d                   	pop    %rbp
   140001625:	c3                   	ret    

0000000140001626 <_Z13unknownOptionc>:
   140001626:	55                   	push   %rbp
   140001627:	48 89 e5             	mov    %rsp,%rbp
   14000162a:	48 83 ec 20          	sub    $0x20,%rsp
   14000162e:	89 c8                	mov    %ecx,%eax
   140001630:	88 45 10             	mov    %al,0x10(%rbp)
   140001633:	48 8d 05 17 4a 00 00 	lea    0x4a17(%rip),%rax        # 140006051 <.rdata+0x51>
   14000163a:	48 89 c2             	mov    %rax,%rdx
   14000163d:	48 8b 05 6c 52 00 00 	mov    0x526c(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001644:	48 89 c1             	mov    %rax,%rcx
   140001647:	e8 94 11 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000164c:	48 89 c1             	mov    %rax,%rcx
   14000164f:	0f be 45 10          	movsbl 0x10(%rbp),%eax
   140001653:	89 c2                	mov    %eax,%edx
   140001655:	e8 7e 11 00 00       	call   1400027d8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
   14000165a:	48 89 c1             	mov    %rax,%rcx
   14000165d:	48 8b 05 5c 52 00 00 	mov    0x525c(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001664:	48 89 c2             	mov    %rax,%rdx
   140001667:	e8 a4 11 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   14000166c:	90                   	nop
   14000166d:	48 83 c4 20          	add    $0x20,%rsp
   140001671:	5d                   	pop    %rbp
   140001672:	c3                   	ret    

0000000140001673 <_Z9normalSelv>:
   140001673:	55                   	push   %rbp
   140001674:	48 89 e5             	mov    %rsp,%rbp
   140001677:	48 83 ec 20          	sub    $0x20,%rsp
   14000167b:	48 8d 05 e6 49 00 00 	lea    0x49e6(%rip),%rax        # 140006068 <.rdata+0x68>
   140001682:	48 89 c2             	mov    %rax,%rdx
   140001685:	48 8b 05 24 52 00 00 	mov    0x5224(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   14000168c:	48 89 c1             	mov    %rax,%rcx
   14000168f:	e8 4c 11 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001694:	48 89 c1             	mov    %rax,%rcx
   140001697:	48 8d 05 fa 49 00 00 	lea    0x49fa(%rip),%rax        # 140006098 <.rdata+0x98>
   14000169e:	48 89 c2             	mov    %rax,%rdx
   1400016a1:	e8 3a 11 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400016a6:	48 89 c1             	mov    %rax,%rcx
   1400016a9:	48 8b 05 10 52 00 00 	mov    0x5210(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400016b0:	48 89 c2             	mov    %rax,%rdx
   1400016b3:	e8 58 11 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   1400016b8:	90                   	nop
   1400016b9:	48 83 c4 20          	add    $0x20,%rsp
   1400016bd:	5d                   	pop    %rbp
   1400016be:	c3                   	ret    

00000001400016bf <_Z6normalv>:
   1400016bf:	55                   	push   %rbp
   1400016c0:	48 89 e5             	mov    %rsp,%rbp
   1400016c3:	48 83 ec 30          	sub    $0x30,%rsp
   1400016c7:	e8 a7 ff ff ff       	call   140001673 <_Z9normalSelv>
   1400016cc:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
   1400016d0:	48 89 c2             	mov    %rax,%rdx
   1400016d3:	48 8b 05 c6 51 00 00 	mov    0x51c6(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   1400016da:	48 89 c1             	mov    %rax,%rcx
   1400016dd:	e8 ee 10 00 00       	call   1400027d0 <_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_>
   1400016e2:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   1400016e6:	0f be c0             	movsbl %al,%eax
   1400016e9:	83 f8 62             	cmp    $0x62,%eax
   1400016ec:	74 41                	je     14000172f <_Z6normalv+0x70>
   1400016ee:	83 f8 62             	cmp    $0x62,%eax
   1400016f1:	7f 43                	jg     140001736 <_Z6normalv+0x77>
   1400016f3:	83 f8 34             	cmp    $0x34,%eax
   1400016f6:	74 30                	je     140001728 <_Z6normalv+0x69>
   1400016f8:	83 f8 34             	cmp    $0x34,%eax
   1400016fb:	7f 39                	jg     140001736 <_Z6normalv+0x77>
   1400016fd:	83 f8 33             	cmp    $0x33,%eax
   140001700:	74 1f                	je     140001721 <_Z6normalv+0x62>
   140001702:	83 f8 33             	cmp    $0x33,%eax
   140001705:	7f 2f                	jg     140001736 <_Z6normalv+0x77>
   140001707:	83 f8 31             	cmp    $0x31,%eax
   14000170a:	74 07                	je     140001713 <_Z6normalv+0x54>
   14000170c:	83 f8 32             	cmp    $0x32,%eax
   14000170f:	74 09                	je     14000171a <_Z6normalv+0x5b>
   140001711:	eb 23                	jmp    140001736 <_Z6normalv+0x77>
   140001713:	e8 e6 02 00 00       	call   1400019fe <_Z5n_addv>
   140001718:	eb 2a                	jmp    140001744 <_Z6normalv+0x85>
   14000171a:	e8 43 04 00 00       	call   140001b62 <_Z10n_subtractv>
   14000171f:	eb 23                	jmp    140001744 <_Z6normalv+0x85>
   140001721:	e8 8a 03 00 00       	call   140001ab0 <_Z16n_multiplicationv>
   140001726:	eb 1c                	jmp    140001744 <_Z6normalv+0x85>
   140001728:	e8 e7 04 00 00       	call   140001c14 <_Z10n_divisionv>
   14000172d:	eb 15                	jmp    140001744 <_Z6normalv+0x85>
   14000172f:	e8 2f fe ff ff       	call   140001563 <_Z5startv>
   140001734:	eb 0e                	jmp    140001744 <_Z6normalv+0x85>
   140001736:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   14000173a:	0f be c0             	movsbl %al,%eax
   14000173d:	89 c1                	mov    %eax,%ecx
   14000173f:	e8 e2 fe ff ff       	call   140001626 <_Z13unknownOptionc>
   140001744:	48 8b 05 75 51 00 00 	mov    0x5175(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000174b:	48 89 c2             	mov    %rax,%rdx
   14000174e:	48 8b 05 5b 51 00 00 	mov    0x515b(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001755:	48 89 c1             	mov    %rax,%rcx
   140001758:	e8 b3 10 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   14000175d:	e8 01 fe ff ff       	call   140001563 <_Z5startv>
   140001762:	90                   	nop
   140001763:	48 83 c4 30          	add    $0x30,%rsp
   140001767:	5d                   	pop    %rbp
   140001768:	c3                   	ret    

0000000140001769 <_Z13scientificSelv>:
   140001769:	55                   	push   %rbp
   14000176a:	48 89 e5             	mov    %rsp,%rbp
   14000176d:	48 83 ec 20          	sub    $0x20,%rsp
   140001771:	48 8d 05 8e 48 00 00 	lea    0x488e(%rip),%rax        # 140006006 <.rdata+0x6>
   140001778:	48 89 c2             	mov    %rax,%rdx
   14000177b:	48 8b 05 2e 51 00 00 	mov    0x512e(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001782:	48 89 c1             	mov    %rax,%rcx
   140001785:	e8 56 10 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000178a:	48 89 c1             	mov    %rax,%rcx
   14000178d:	48 8d 05 3c 49 00 00 	lea    0x493c(%rip),%rax        # 1400060d0 <.rdata+0xd0>
   140001794:	48 89 c2             	mov    %rax,%rdx
   140001797:	e8 44 10 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000179c:	48 89 c1             	mov    %rax,%rcx
   14000179f:	48 8d 05 62 49 00 00 	lea    0x4962(%rip),%rax        # 140006108 <.rdata+0x108>
   1400017a6:	48 89 c2             	mov    %rax,%rdx
   1400017a9:	e8 32 10 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400017ae:	48 89 c1             	mov    %rax,%rcx
   1400017b1:	48 8d 05 80 49 00 00 	lea    0x4980(%rip),%rax        # 140006138 <.rdata+0x138>
   1400017b8:	48 89 c2             	mov    %rax,%rdx
   1400017bb:	e8 20 10 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400017c0:	48 89 c1             	mov    %rax,%rcx
   1400017c3:	48 8b 05 f6 50 00 00 	mov    0x50f6(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400017ca:	48 89 c2             	mov    %rax,%rdx
   1400017cd:	e8 3e 10 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   1400017d2:	90                   	nop
   1400017d3:	48 83 c4 20          	add    $0x20,%rsp
   1400017d7:	5d                   	pop    %rbp
   1400017d8:	c3                   	ret    

00000001400017d9 <_Z10scientificv>:
   1400017d9:	55                   	push   %rbp
   1400017da:	48 89 e5             	mov    %rsp,%rbp
   1400017dd:	48 83 ec 30          	sub    $0x30,%rsp
   1400017e1:	e8 83 ff ff ff       	call   140001769 <_Z13scientificSelv>
   1400017e6:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
   1400017ea:	48 89 c2             	mov    %rax,%rdx
   1400017ed:	48 8b 05 ac 50 00 00 	mov    0x50ac(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   1400017f4:	48 89 c1             	mov    %rax,%rcx
   1400017f7:	e8 d4 0f 00 00       	call   1400027d0 <_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_>
   1400017fc:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   140001800:	0f be c0             	movsbl %al,%eax
   140001803:	83 e8 31             	sub    $0x31,%eax
   140001806:	83 f8 47             	cmp    $0x47,%eax
   140001809:	77 6f                	ja     14000187a <_Z10scientificv+0xa1>
   14000180b:	89 c0                	mov    %eax,%eax
   14000180d:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140001814:	00 
   140001815:	48 8d 05 30 49 00 00 	lea    0x4930(%rip),%rax        # 14000614c <.rdata+0x14c>
   14000181c:	8b 04 02             	mov    (%rdx,%rax,1),%eax
   14000181f:	48 98                	cltq   
   140001821:	48 8d 15 24 49 00 00 	lea    0x4924(%rip),%rdx        # 14000614c <.rdata+0x14c>
   140001828:	48 01 d0             	add    %rdx,%rax
   14000182b:	ff e0                	jmp    *%rax
   14000182d:	e8 94 04 00 00       	call   140001cc6 <_Z5s_sinv>
   140001832:	eb 55                	jmp    140001889 <_Z10scientificv+0xb0>
   140001834:	e8 26 05 00 00       	call   140001d5f <_Z5s_cosv>
   140001839:	eb 4e                	jmp    140001889 <_Z10scientificv+0xb0>
   14000183b:	e8 b8 05 00 00       	call   140001df8 <_Z5s_tanv>
   140001840:	eb 47                	jmp    140001889 <_Z10scientificv+0xb0>
   140001842:	e8 4a 06 00 00       	call   140001e91 <_Z5s_powv>
   140001847:	eb 40                	jmp    140001889 <_Z10scientificv+0xb0>
   140001849:	e8 03 07 00 00       	call   140001f51 <_Z4s_lgv>
   14000184e:	eb 39                	jmp    140001889 <_Z10scientificv+0xb0>
   140001850:	e8 85 07 00 00       	call   140001fda <_Z11s_factorialv>
   140001855:	eb 32                	jmp    140001889 <_Z10scientificv+0xb0>
   140001857:	e8 1d 08 00 00       	call   140002079 <_Z9s_inversev>
   14000185c:	eb 2b                	jmp    140001889 <_Z10scientificv+0xb0>
   14000185e:	e8 9c 08 00 00       	call   1400020ff <_Z8s_squarev>
   140001863:	eb 24                	jmp    140001889 <_Z10scientificv+0xb0>
   140001865:	e8 06 09 00 00       	call   140002170 <_Z7s_cubicv>
   14000186a:	eb 1d                	jmp    140001889 <_Z10scientificv+0xb0>
   14000186c:	e8 79 09 00 00       	call   1400021ea <_Z10s_variancev>
   140001871:	eb 16                	jmp    140001889 <_Z10scientificv+0xb0>
   140001873:	e8 eb fc ff ff       	call   140001563 <_Z5startv>
   140001878:	eb 0f                	jmp    140001889 <_Z10scientificv+0xb0>
   14000187a:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   14000187e:	0f be c0             	movsbl %al,%eax
   140001881:	89 c1                	mov    %eax,%ecx
   140001883:	e8 9e fd ff ff       	call   140001626 <_Z13unknownOptionc>
   140001888:	90                   	nop
   140001889:	48 8b 05 30 50 00 00 	mov    0x5030(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001890:	48 89 c2             	mov    %rax,%rdx
   140001893:	48 8b 05 16 50 00 00 	mov    0x5016(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   14000189a:	48 89 c1             	mov    %rax,%rcx
   14000189d:	e8 6e 0f 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   1400018a2:	e8 bc fc ff ff       	call   140001563 <_Z5startv>
   1400018a7:	90                   	nop
   1400018a8:	48 83 c4 30          	add    $0x30,%rsp
   1400018ac:	5d                   	pop    %rbp
   1400018ad:	c3                   	ret    

00000001400018ae <_Z13programmerSelv>:
   1400018ae:	55                   	push   %rbp
   1400018af:	48 89 e5             	mov    %rsp,%rbp
   1400018b2:	48 83 ec 20          	sub    $0x20,%rsp
   1400018b6:	48 8d 05 49 47 00 00 	lea    0x4749(%rip),%rax        # 140006006 <.rdata+0x6>
   1400018bd:	48 89 c2             	mov    %rax,%rdx
   1400018c0:	48 8b 05 e9 4f 00 00 	mov    0x4fe9(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   1400018c7:	48 89 c1             	mov    %rax,%rcx
   1400018ca:	e8 11 0f 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400018cf:	48 89 c1             	mov    %rax,%rcx
   1400018d2:	48 8d 05 97 49 00 00 	lea    0x4997(%rip),%rax        # 140006270 <.rdata+0x270>
   1400018d9:	48 89 c2             	mov    %rax,%rdx
   1400018dc:	e8 ff 0e 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400018e1:	48 89 c1             	mov    %rax,%rcx
   1400018e4:	48 8d 05 4d 48 00 00 	lea    0x484d(%rip),%rax        # 140006138 <.rdata+0x138>
   1400018eb:	48 89 c2             	mov    %rax,%rdx
   1400018ee:	e8 ed 0e 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400018f3:	48 89 c1             	mov    %rax,%rcx
   1400018f6:	48 8b 05 c3 4f 00 00 	mov    0x4fc3(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400018fd:	48 89 c2             	mov    %rax,%rdx
   140001900:	e8 0b 0f 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001905:	90                   	nop
   140001906:	48 83 c4 20          	add    $0x20,%rsp
   14000190a:	5d                   	pop    %rbp
   14000190b:	c3                   	ret    

000000014000190c <_Z10programmerv>:
   14000190c:	55                   	push   %rbp
   14000190d:	48 89 e5             	mov    %rsp,%rbp
   140001910:	48 83 ec 30          	sub    $0x30,%rsp
   140001914:	e8 95 ff ff ff       	call   1400018ae <_Z13programmerSelv>
   140001919:	48 8d 45 ff          	lea    -0x1(%rbp),%rax
   14000191d:	48 89 c2             	mov    %rax,%rdx
   140001920:	48 8b 05 79 4f 00 00 	mov    0x4f79(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001927:	48 89 c1             	mov    %rax,%rcx
   14000192a:	e8 a1 0e 00 00       	call   1400027d0 <_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_>
   14000192f:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   140001933:	0f be c0             	movsbl %al,%eax
   140001936:	83 f8 62             	cmp    $0x62,%eax
   140001939:	74 30                	je     14000196b <_Z10programmerv+0x5f>
   14000193b:	83 f8 62             	cmp    $0x62,%eax
   14000193e:	7f 32                	jg     140001972 <_Z10programmerv+0x66>
   140001940:	83 f8 33             	cmp    $0x33,%eax
   140001943:	74 1f                	je     140001964 <_Z10programmerv+0x58>
   140001945:	83 f8 33             	cmp    $0x33,%eax
   140001948:	7f 28                	jg     140001972 <_Z10programmerv+0x66>
   14000194a:	83 f8 31             	cmp    $0x31,%eax
   14000194d:	74 07                	je     140001956 <_Z10programmerv+0x4a>
   14000194f:	83 f8 32             	cmp    $0x32,%eax
   140001952:	74 09                	je     14000195d <_Z10programmerv+0x51>
   140001954:	eb 1c                	jmp    140001972 <_Z10programmerv+0x66>
   140001956:	e8 87 0b 00 00       	call   1400024e2 <_Z5p_decv>
   14000195b:	eb 23                	jmp    140001980 <_Z10programmerv+0x74>
   14000195d:	e8 f6 0b 00 00       	call   140002558 <_Z5p_binv>
   140001962:	eb 1c                	jmp    140001980 <_Z10programmerv+0x74>
   140001964:	e8 02 0d 00 00       	call   14000266b <_Z5p_octv>
   140001969:	eb 15                	jmp    140001980 <_Z10programmerv+0x74>
   14000196b:	e8 f3 fb ff ff       	call   140001563 <_Z5startv>
   140001970:	eb 0e                	jmp    140001980 <_Z10programmerv+0x74>
   140001972:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   140001976:	0f be c0             	movsbl %al,%eax
   140001979:	89 c1                	mov    %eax,%ecx
   14000197b:	e8 a6 fc ff ff       	call   140001626 <_Z13unknownOptionc>
   140001980:	48 8b 05 39 4f 00 00 	mov    0x4f39(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001987:	48 89 c2             	mov    %rax,%rdx
   14000198a:	48 8b 05 1f 4f 00 00 	mov    0x4f1f(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001991:	48 89 c1             	mov    %rax,%rcx
   140001994:	e8 77 0e 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001999:	e8 c5 fb ff ff       	call   140001563 <_Z5startv>
   14000199e:	90                   	nop
   14000199f:	48 83 c4 30          	add    $0x30,%rsp
   1400019a3:	5d                   	pop    %rbp
   1400019a4:	c3                   	ret    

00000001400019a5 <_Z3clsv>:
   1400019a5:	55                   	push   %rbp
   1400019a6:	48 89 e5             	mov    %rsp,%rbp
   1400019a9:	48 83 ec 20          	sub    $0x20,%rsp
   1400019ad:	48 8d 05 de 48 00 00 	lea    0x48de(%rip),%rax        # 140006292 <.rdata+0x292>
   1400019b4:	48 89 c1             	mov    %rax,%rcx
   1400019b7:	e8 34 2d 00 00       	call   1400046f0 <system>
   1400019bc:	90                   	nop
   1400019bd:	48 83 c4 20          	add    $0x20,%rsp
   1400019c1:	5d                   	pop    %rbp
   1400019c2:	c3                   	ret    

00000001400019c3 <_Z5sleepi>:
   1400019c3:	55                   	push   %rbp
   1400019c4:	48 89 e5             	mov    %rsp,%rbp
   1400019c7:	48 83 ec 10          	sub    $0x10,%rsp
   1400019cb:	89 4d 10             	mov    %ecx,0x10(%rbp)
   1400019ce:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   1400019d5:	eb 17                	jmp    1400019ee <_Z5sleepi+0x2b>
   1400019d7:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   1400019de:	eb 04                	jmp    1400019e4 <_Z5sleepi+0x21>
   1400019e0:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   1400019e4:	83 7d f8 72          	cmpl   $0x72,-0x8(%rbp)
   1400019e8:	7e f6                	jle    1400019e0 <_Z5sleepi+0x1d>
   1400019ea:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400019ee:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400019f1:	3b 45 10             	cmp    0x10(%rbp),%eax
   1400019f4:	7c e1                	jl     1400019d7 <_Z5sleepi+0x14>
   1400019f6:	90                   	nop
   1400019f7:	90                   	nop
   1400019f8:	48 83 c4 10          	add    $0x10,%rsp
   1400019fc:	5d                   	pop    %rbp
   1400019fd:	c3                   	ret    

00000001400019fe <_Z5n_addv>:
   1400019fe:	55                   	push   %rbp
   1400019ff:	48 89 e5             	mov    %rsp,%rbp
   140001a02:	48 83 ec 30          	sub    $0x30,%rsp
   140001a06:	48 8d 05 8b 48 00 00 	lea    0x488b(%rip),%rax        # 140006298 <.rdata+0x298>
   140001a0d:	48 89 c2             	mov    %rax,%rdx
   140001a10:	48 8b 05 99 4e 00 00 	mov    0x4e99(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001a17:	48 89 c1             	mov    %rax,%rcx
   140001a1a:	e8 c1 0d 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001a1f:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001a23:	48 89 c2             	mov    %rax,%rdx
   140001a26:	48 8b 05 73 4e 00 00 	mov    0x4e73(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001a2d:	48 89 c1             	mov    %rax,%rcx
   140001a30:	e8 eb 0d 00 00       	call   140002820 <_ZNSirsERd>
   140001a35:	48 8d 05 74 48 00 00 	lea    0x4874(%rip),%rax        # 1400062b0 <.rdata+0x2b0>
   140001a3c:	48 89 c2             	mov    %rax,%rdx
   140001a3f:	48 8b 05 6a 4e 00 00 	mov    0x4e6a(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001a46:	48 89 c1             	mov    %rax,%rcx
   140001a49:	e8 92 0d 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001a4e:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001a52:	48 89 c2             	mov    %rax,%rdx
   140001a55:	48 8b 05 44 4e 00 00 	mov    0x4e44(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001a5c:	48 89 c1             	mov    %rax,%rcx
   140001a5f:	e8 bc 0d 00 00       	call   140002820 <_ZNSirsERd>
   140001a64:	48 8d 05 5d 48 00 00 	lea    0x485d(%rip),%rax        # 1400062c8 <.rdata+0x2c8>
   140001a6b:	48 89 c2             	mov    %rax,%rdx
   140001a6e:	48 8b 05 3b 4e 00 00 	mov    0x4e3b(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001a75:	48 89 c1             	mov    %rax,%rcx
   140001a78:	e8 63 0d 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001a7d:	f2 0f 10 4d f8       	movsd  -0x8(%rbp),%xmm1
   140001a82:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
   140001a87:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   140001a8b:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140001a8f:	48 89 c1             	mov    %rax,%rcx
   140001a92:	e8 71 0d 00 00       	call   140002808 <_ZNSolsEd>
   140001a97:	48 89 c1             	mov    %rax,%rcx
   140001a9a:	48 8b 05 1f 4e 00 00 	mov    0x4e1f(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001aa1:	48 89 c2             	mov    %rax,%rdx
   140001aa4:	e8 67 0d 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001aa9:	90                   	nop
   140001aaa:	48 83 c4 30          	add    $0x30,%rsp
   140001aae:	5d                   	pop    %rbp
   140001aaf:	c3                   	ret    

0000000140001ab0 <_Z16n_multiplicationv>:
   140001ab0:	55                   	push   %rbp
   140001ab1:	48 89 e5             	mov    %rsp,%rbp
   140001ab4:	48 83 ec 30          	sub    $0x30,%rsp
   140001ab8:	48 8d 05 d9 47 00 00 	lea    0x47d9(%rip),%rax        # 140006298 <.rdata+0x298>
   140001abf:	48 89 c2             	mov    %rax,%rdx
   140001ac2:	48 8b 05 e7 4d 00 00 	mov    0x4de7(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001ac9:	48 89 c1             	mov    %rax,%rcx
   140001acc:	e8 0f 0d 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001ad1:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001ad5:	48 89 c2             	mov    %rax,%rdx
   140001ad8:	48 8b 05 c1 4d 00 00 	mov    0x4dc1(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001adf:	48 89 c1             	mov    %rax,%rcx
   140001ae2:	e8 39 0d 00 00       	call   140002820 <_ZNSirsERd>
   140001ae7:	48 8d 05 c2 47 00 00 	lea    0x47c2(%rip),%rax        # 1400062b0 <.rdata+0x2b0>
   140001aee:	48 89 c2             	mov    %rax,%rdx
   140001af1:	48 8b 05 b8 4d 00 00 	mov    0x4db8(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001af8:	48 89 c1             	mov    %rax,%rcx
   140001afb:	e8 e0 0c 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001b00:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001b04:	48 89 c2             	mov    %rax,%rdx
   140001b07:	48 8b 05 92 4d 00 00 	mov    0x4d92(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001b0e:	48 89 c1             	mov    %rax,%rcx
   140001b11:	e8 0a 0d 00 00       	call   140002820 <_ZNSirsERd>
   140001b16:	48 8d 05 ab 47 00 00 	lea    0x47ab(%rip),%rax        # 1400062c8 <.rdata+0x2c8>
   140001b1d:	48 89 c2             	mov    %rax,%rdx
   140001b20:	48 8b 05 89 4d 00 00 	mov    0x4d89(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001b27:	48 89 c1             	mov    %rax,%rcx
   140001b2a:	e8 b1 0c 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001b2f:	f2 0f 10 4d f8       	movsd  -0x8(%rbp),%xmm1
   140001b34:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
   140001b39:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140001b3d:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140001b41:	48 89 c1             	mov    %rax,%rcx
   140001b44:	e8 bf 0c 00 00       	call   140002808 <_ZNSolsEd>
   140001b49:	48 89 c1             	mov    %rax,%rcx
   140001b4c:	48 8b 05 6d 4d 00 00 	mov    0x4d6d(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001b53:	48 89 c2             	mov    %rax,%rdx
   140001b56:	e8 b5 0c 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001b5b:	90                   	nop
   140001b5c:	48 83 c4 30          	add    $0x30,%rsp
   140001b60:	5d                   	pop    %rbp
   140001b61:	c3                   	ret    

0000000140001b62 <_Z10n_subtractv>:
   140001b62:	55                   	push   %rbp
   140001b63:	48 89 e5             	mov    %rsp,%rbp
   140001b66:	48 83 ec 30          	sub    $0x30,%rsp
   140001b6a:	48 8d 05 27 47 00 00 	lea    0x4727(%rip),%rax        # 140006298 <.rdata+0x298>
   140001b71:	48 89 c2             	mov    %rax,%rdx
   140001b74:	48 8b 05 35 4d 00 00 	mov    0x4d35(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001b7b:	48 89 c1             	mov    %rax,%rcx
   140001b7e:	e8 5d 0c 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001b83:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001b87:	48 89 c2             	mov    %rax,%rdx
   140001b8a:	48 8b 05 0f 4d 00 00 	mov    0x4d0f(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001b91:	48 89 c1             	mov    %rax,%rcx
   140001b94:	e8 87 0c 00 00       	call   140002820 <_ZNSirsERd>
   140001b99:	48 8d 05 10 47 00 00 	lea    0x4710(%rip),%rax        # 1400062b0 <.rdata+0x2b0>
   140001ba0:	48 89 c2             	mov    %rax,%rdx
   140001ba3:	48 8b 05 06 4d 00 00 	mov    0x4d06(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001baa:	48 89 c1             	mov    %rax,%rcx
   140001bad:	e8 2e 0c 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001bb2:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001bb6:	48 89 c2             	mov    %rax,%rdx
   140001bb9:	48 8b 05 e0 4c 00 00 	mov    0x4ce0(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001bc0:	48 89 c1             	mov    %rax,%rcx
   140001bc3:	e8 58 0c 00 00       	call   140002820 <_ZNSirsERd>
   140001bc8:	48 8d 05 f9 46 00 00 	lea    0x46f9(%rip),%rax        # 1400062c8 <.rdata+0x2c8>
   140001bcf:	48 89 c2             	mov    %rax,%rdx
   140001bd2:	48 8b 05 d7 4c 00 00 	mov    0x4cd7(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001bd9:	48 89 c1             	mov    %rax,%rcx
   140001bdc:	e8 ff 0b 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001be1:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140001be6:	f2 0f 10 4d f0       	movsd  -0x10(%rbp),%xmm1
   140001beb:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   140001bef:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140001bf3:	48 89 c1             	mov    %rax,%rcx
   140001bf6:	e8 0d 0c 00 00       	call   140002808 <_ZNSolsEd>
   140001bfb:	48 89 c1             	mov    %rax,%rcx
   140001bfe:	48 8b 05 bb 4c 00 00 	mov    0x4cbb(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001c05:	48 89 c2             	mov    %rax,%rdx
   140001c08:	e8 03 0c 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001c0d:	90                   	nop
   140001c0e:	48 83 c4 30          	add    $0x30,%rsp
   140001c12:	5d                   	pop    %rbp
   140001c13:	c3                   	ret    

0000000140001c14 <_Z10n_divisionv>:
   140001c14:	55                   	push   %rbp
   140001c15:	48 89 e5             	mov    %rsp,%rbp
   140001c18:	48 83 ec 30          	sub    $0x30,%rsp
   140001c1c:	48 8d 05 ae 46 00 00 	lea    0x46ae(%rip),%rax        # 1400062d1 <.rdata+0x2d1>
   140001c23:	48 89 c2             	mov    %rax,%rdx
   140001c26:	48 8b 05 83 4c 00 00 	mov    0x4c83(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001c2d:	48 89 c1             	mov    %rax,%rcx
   140001c30:	e8 ab 0b 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001c35:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001c39:	48 89 c2             	mov    %rax,%rdx
   140001c3c:	48 8b 05 5d 4c 00 00 	mov    0x4c5d(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001c43:	48 89 c1             	mov    %rax,%rcx
   140001c46:	e8 d5 0b 00 00       	call   140002820 <_ZNSirsERd>
   140001c4b:	48 8d 05 93 46 00 00 	lea    0x4693(%rip),%rax        # 1400062e5 <.rdata+0x2e5>
   140001c52:	48 89 c2             	mov    %rax,%rdx
   140001c55:	48 8b 05 54 4c 00 00 	mov    0x4c54(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001c5c:	48 89 c1             	mov    %rax,%rcx
   140001c5f:	e8 7c 0b 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001c64:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001c68:	48 89 c2             	mov    %rax,%rdx
   140001c6b:	48 8b 05 2e 4c 00 00 	mov    0x4c2e(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001c72:	48 89 c1             	mov    %rax,%rcx
   140001c75:	e8 a6 0b 00 00       	call   140002820 <_ZNSirsERd>
   140001c7a:	48 8d 05 47 46 00 00 	lea    0x4647(%rip),%rax        # 1400062c8 <.rdata+0x2c8>
   140001c81:	48 89 c2             	mov    %rax,%rdx
   140001c84:	48 8b 05 25 4c 00 00 	mov    0x4c25(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001c8b:	48 89 c1             	mov    %rax,%rcx
   140001c8e:	e8 4d 0b 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001c93:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140001c98:	f2 0f 10 4d f0       	movsd  -0x10(%rbp),%xmm1
   140001c9d:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
   140001ca1:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140001ca5:	48 89 c1             	mov    %rax,%rcx
   140001ca8:	e8 5b 0b 00 00       	call   140002808 <_ZNSolsEd>
   140001cad:	48 89 c1             	mov    %rax,%rcx
   140001cb0:	48 8b 05 09 4c 00 00 	mov    0x4c09(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001cb7:	48 89 c2             	mov    %rax,%rdx
   140001cba:	e8 51 0b 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001cbf:	90                   	nop
   140001cc0:	48 83 c4 30          	add    $0x30,%rsp
   140001cc4:	5d                   	pop    %rbp
   140001cc5:	c3                   	ret    

0000000140001cc6 <_Z5s_sinv>:
   140001cc6:	55                   	push   %rbp
   140001cc7:	48 89 e5             	mov    %rsp,%rbp
   140001cca:	48 83 ec 30          	sub    $0x30,%rsp
   140001cce:	48 8d 05 24 46 00 00 	lea    0x4624(%rip),%rax        # 1400062f9 <.rdata+0x2f9>
   140001cd5:	48 89 c2             	mov    %rax,%rdx
   140001cd8:	48 8b 05 d1 4b 00 00 	mov    0x4bd1(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001cdf:	48 89 c1             	mov    %rax,%rcx
   140001ce2:	e8 f9 0a 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001ce7:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001ceb:	48 89 c2             	mov    %rax,%rdx
   140001cee:	48 8b 05 ab 4b 00 00 	mov    0x4bab(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001cf5:	48 89 c1             	mov    %rax,%rcx
   140001cf8:	e8 23 0b 00 00       	call   140002820 <_ZNSirsERd>
   140001cfd:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140001d02:	f2 0f 10 15 26 47 00 	movsd  0x4726(%rip),%xmm2        # 140006430 <.rdata+0x430>
   140001d09:	00 
   140001d0a:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140001d0e:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   140001d12:	f2 0f 10 05 1e 47 00 	movsd  0x471e(%rip),%xmm0        # 140006438 <.rdata+0x438>
   140001d19:	00 
   140001d1a:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   140001d1e:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140001d23:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140001d28:	e8 13 23 00 00       	call   140004040 <sin>
   140001d2d:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140001d32:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140001d37:	48 8b 05 72 4b 00 00 	mov    0x4b72(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001d3e:	48 89 c1             	mov    %rax,%rcx
   140001d41:	e8 c2 0a 00 00       	call   140002808 <_ZNSolsEd>
   140001d46:	48 89 c1             	mov    %rax,%rcx
   140001d49:	48 8b 05 70 4b 00 00 	mov    0x4b70(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001d50:	48 89 c2             	mov    %rax,%rdx
   140001d53:	e8 b8 0a 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001d58:	90                   	nop
   140001d59:	48 83 c4 30          	add    $0x30,%rsp
   140001d5d:	5d                   	pop    %rbp
   140001d5e:	c3                   	ret    

0000000140001d5f <_Z5s_cosv>:
   140001d5f:	55                   	push   %rbp
   140001d60:	48 89 e5             	mov    %rsp,%rbp
   140001d63:	48 83 ec 30          	sub    $0x30,%rsp
   140001d67:	48 8d 05 a4 45 00 00 	lea    0x45a4(%rip),%rax        # 140006312 <.rdata+0x312>
   140001d6e:	48 89 c2             	mov    %rax,%rdx
   140001d71:	48 8b 05 38 4b 00 00 	mov    0x4b38(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001d78:	48 89 c1             	mov    %rax,%rcx
   140001d7b:	e8 60 0a 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001d80:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001d84:	48 89 c2             	mov    %rax,%rdx
   140001d87:	48 8b 05 12 4b 00 00 	mov    0x4b12(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001d8e:	48 89 c1             	mov    %rax,%rcx
   140001d91:	e8 8a 0a 00 00       	call   140002820 <_ZNSirsERd>
   140001d96:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140001d9b:	f2 0f 10 15 8d 46 00 	movsd  0x468d(%rip),%xmm2        # 140006430 <.rdata+0x430>
   140001da2:	00 
   140001da3:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140001da7:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   140001dab:	f2 0f 10 05 85 46 00 	movsd  0x4685(%rip),%xmm0        # 140006438 <.rdata+0x438>
   140001db2:	00 
   140001db3:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   140001db7:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140001dbc:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140001dc1:	e8 0a 1b 00 00       	call   1400038d0 <cos>
   140001dc6:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140001dcb:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140001dd0:	48 8b 05 d9 4a 00 00 	mov    0x4ad9(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001dd7:	48 89 c1             	mov    %rax,%rcx
   140001dda:	e8 29 0a 00 00       	call   140002808 <_ZNSolsEd>
   140001ddf:	48 89 c1             	mov    %rax,%rcx
   140001de2:	48 8b 05 d7 4a 00 00 	mov    0x4ad7(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001de9:	48 89 c2             	mov    %rax,%rdx
   140001dec:	e8 1f 0a 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001df1:	90                   	nop
   140001df2:	48 83 c4 30          	add    $0x30,%rsp
   140001df6:	5d                   	pop    %rbp
   140001df7:	c3                   	ret    

0000000140001df8 <_Z5s_tanv>:
   140001df8:	55                   	push   %rbp
   140001df9:	48 89 e5             	mov    %rsp,%rbp
   140001dfc:	48 83 ec 30          	sub    $0x30,%rsp
   140001e00:	48 8d 05 24 45 00 00 	lea    0x4524(%rip),%rax        # 14000632b <.rdata+0x32b>
   140001e07:	48 89 c2             	mov    %rax,%rdx
   140001e0a:	48 8b 05 9f 4a 00 00 	mov    0x4a9f(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001e11:	48 89 c1             	mov    %rax,%rcx
   140001e14:	e8 c7 09 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001e19:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001e1d:	48 89 c2             	mov    %rax,%rdx
   140001e20:	48 8b 05 79 4a 00 00 	mov    0x4a79(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001e27:	48 89 c1             	mov    %rax,%rcx
   140001e2a:	e8 f1 09 00 00       	call   140002820 <_ZNSirsERd>
   140001e2f:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140001e34:	f2 0f 10 15 f4 45 00 	movsd  0x45f4(%rip),%xmm2        # 140006430 <.rdata+0x430>
   140001e3b:	00 
   140001e3c:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140001e40:	f2 0f 5e ca          	divsd  %xmm2,%xmm1
   140001e44:	f2 0f 10 05 ec 45 00 	movsd  0x45ec(%rip),%xmm0        # 140006438 <.rdata+0x438>
   140001e4b:	00 
   140001e4c:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   140001e50:	66 48 0f 7e c8       	movq   %xmm1,%rax
   140001e55:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140001e5a:	e8 99 28 00 00       	call   1400046f8 <tan>
   140001e5f:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140001e64:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140001e69:	48 8b 05 40 4a 00 00 	mov    0x4a40(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001e70:	48 89 c1             	mov    %rax,%rcx
   140001e73:	e8 90 09 00 00       	call   140002808 <_ZNSolsEd>
   140001e78:	48 89 c1             	mov    %rax,%rcx
   140001e7b:	48 8b 05 3e 4a 00 00 	mov    0x4a3e(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001e82:	48 89 c2             	mov    %rax,%rdx
   140001e85:	e8 86 09 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001e8a:	90                   	nop
   140001e8b:	48 83 c4 30          	add    $0x30,%rsp
   140001e8f:	5d                   	pop    %rbp
   140001e90:	c3                   	ret    

0000000140001e91 <_Z5s_powv>:
   140001e91:	55                   	push   %rbp
   140001e92:	48 89 e5             	mov    %rsp,%rbp
   140001e95:	48 83 ec 30          	sub    $0x30,%rsp
   140001e99:	48 8d 05 a4 44 00 00 	lea    0x44a4(%rip),%rax        # 140006344 <.rdata+0x344>
   140001ea0:	48 89 c2             	mov    %rax,%rdx
   140001ea3:	48 8b 05 06 4a 00 00 	mov    0x4a06(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001eaa:	48 89 c1             	mov    %rax,%rcx
   140001ead:	e8 2e 09 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001eb2:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001eb6:	48 89 c2             	mov    %rax,%rdx
   140001eb9:	48 8b 05 e0 49 00 00 	mov    0x49e0(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001ec0:	48 89 c1             	mov    %rax,%rcx
   140001ec3:	e8 58 09 00 00       	call   140002820 <_ZNSirsERd>
   140001ec8:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140001ecd:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140001ed1:	48 8b 05 d8 49 00 00 	mov    0x49d8(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001ed8:	48 89 c1             	mov    %rax,%rcx
   140001edb:	e8 28 09 00 00       	call   140002808 <_ZNSolsEd>
   140001ee0:	48 89 c1             	mov    %rax,%rcx
   140001ee3:	48 8d 05 68 44 00 00 	lea    0x4468(%rip),%rax        # 140006352 <.rdata+0x352>
   140001eea:	48 89 c2             	mov    %rax,%rdx
   140001eed:	e8 ee 08 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001ef2:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001ef6:	48 89 c2             	mov    %rax,%rdx
   140001ef9:	48 8b 05 a0 49 00 00 	mov    0x49a0(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001f00:	48 89 c1             	mov    %rax,%rcx
   140001f03:	e8 18 09 00 00       	call   140002820 <_ZNSirsERd>
   140001f08:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
   140001f0d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001f11:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140001f15:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140001f1a:	e8 91 1b 00 00       	call   140003ab0 <pow>
   140001f1f:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140001f24:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140001f29:	48 8b 05 80 49 00 00 	mov    0x4980(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001f30:	48 89 c1             	mov    %rax,%rcx
   140001f33:	e8 d0 08 00 00       	call   140002808 <_ZNSolsEd>
   140001f38:	48 89 c1             	mov    %rax,%rcx
   140001f3b:	48 8b 05 7e 49 00 00 	mov    0x497e(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001f42:	48 89 c2             	mov    %rax,%rdx
   140001f45:	e8 c6 08 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001f4a:	90                   	nop
   140001f4b:	48 83 c4 30          	add    $0x30,%rsp
   140001f4f:	5d                   	pop    %rbp
   140001f50:	c3                   	ret    

0000000140001f51 <_Z4s_lgv>:
   140001f51:	55                   	push   %rbp
   140001f52:	48 89 e5             	mov    %rsp,%rbp
   140001f55:	48 83 ec 30          	sub    $0x30,%rsp
   140001f59:	48 8d 05 f8 43 00 00 	lea    0x43f8(%rip),%rax        # 140006358 <.rdata+0x358>
   140001f60:	48 89 c2             	mov    %rax,%rdx
   140001f63:	48 8b 05 46 49 00 00 	mov    0x4946(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001f6a:	48 89 c1             	mov    %rax,%rcx
   140001f6d:	e8 6e 08 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001f72:	48 89 c1             	mov    %rax,%rcx
   140001f75:	48 8b 05 44 49 00 00 	mov    0x4944(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001f7c:	48 89 c2             	mov    %rax,%rdx
   140001f7f:	e8 8c 08 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001f84:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140001f88:	48 89 c2             	mov    %rax,%rdx
   140001f8b:	48 8b 05 0e 49 00 00 	mov    0x490e(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140001f92:	48 89 c1             	mov    %rax,%rcx
   140001f95:	e8 86 08 00 00       	call   140002820 <_ZNSirsERd>
   140001f9a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   140001f9e:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140001fa3:	e8 18 27 00 00       	call   1400046c0 <log10>
   140001fa8:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140001fad:	66 48 0f 6e c8       	movq   %rax,%xmm1
   140001fb2:	48 8b 05 f7 48 00 00 	mov    0x48f7(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001fb9:	48 89 c1             	mov    %rax,%rcx
   140001fbc:	e8 47 08 00 00       	call   140002808 <_ZNSolsEd>
   140001fc1:	48 89 c1             	mov    %rax,%rcx
   140001fc4:	48 8b 05 f5 48 00 00 	mov    0x48f5(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001fcb:	48 89 c2             	mov    %rax,%rdx
   140001fce:	e8 3d 08 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140001fd3:	90                   	nop
   140001fd4:	48 83 c4 30          	add    $0x30,%rsp
   140001fd8:	5d                   	pop    %rbp
   140001fd9:	c3                   	ret    

0000000140001fda <_Z11s_factorialv>:
   140001fda:	55                   	push   %rbp
   140001fdb:	48 89 e5             	mov    %rsp,%rbp
   140001fde:	48 83 ec 30          	sub    $0x30,%rsp
   140001fe2:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
   140001fe9:	48 8d 05 6f 43 00 00 	lea    0x436f(%rip),%rax        # 14000635f <.rdata+0x35f>
   140001ff0:	48 89 c2             	mov    %rax,%rdx
   140001ff3:	48 8b 05 b6 48 00 00 	mov    0x48b6(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140001ffa:	48 89 c1             	mov    %rax,%rcx
   140001ffd:	e8 de 07 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002002:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140002006:	48 89 c2             	mov    %rax,%rdx
   140002009:	48 8b 05 90 48 00 00 	mov    0x4890(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140002010:	48 89 c1             	mov    %rax,%rcx
   140002013:	e8 00 08 00 00       	call   140002818 <_ZNSirsERi>
   140002018:	8b 45 f8             	mov    -0x8(%rbp),%eax
   14000201b:	83 f8 01             	cmp    $0x1,%eax
   14000201e:	74 07                	je     140002027 <_Z11s_factorialv+0x4d>
   140002020:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140002023:	85 c0                	test   %eax,%eax
   140002025:	75 1e                	jne    140002045 <_Z11s_factorialv+0x6b>
   140002027:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
   14000202e:	eb 15                	jmp    140002045 <_Z11s_factorialv+0x6b>
   140002030:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140002033:	8b 55 fc             	mov    -0x4(%rbp),%edx
   140002036:	0f af c2             	imul   %edx,%eax
   140002039:	89 45 fc             	mov    %eax,-0x4(%rbp)
   14000203c:	8b 45 f8             	mov    -0x8(%rbp),%eax
   14000203f:	83 e8 01             	sub    $0x1,%eax
   140002042:	89 45 f8             	mov    %eax,-0x8(%rbp)
   140002045:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140002048:	85 c0                	test   %eax,%eax
   14000204a:	7f e4                	jg     140002030 <_Z11s_factorialv+0x56>
   14000204c:	8b 45 fc             	mov    -0x4(%rbp),%eax
   14000204f:	89 c2                	mov    %eax,%edx
   140002051:	48 8b 05 58 48 00 00 	mov    0x4858(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002058:	48 89 c1             	mov    %rax,%rcx
   14000205b:	e8 a0 07 00 00       	call   140002800 <_ZNSolsEi>
   140002060:	48 89 c1             	mov    %rax,%rcx
   140002063:	48 8b 05 56 48 00 00 	mov    0x4856(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000206a:	48 89 c2             	mov    %rax,%rdx
   14000206d:	e8 9e 07 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140002072:	90                   	nop
   140002073:	48 83 c4 30          	add    $0x30,%rsp
   140002077:	5d                   	pop    %rbp
   140002078:	c3                   	ret    

0000000140002079 <_Z9s_inversev>:
   140002079:	55                   	push   %rbp
   14000207a:	48 89 e5             	mov    %rsp,%rbp
   14000207d:	48 83 ec 30          	sub    $0x30,%rsp
   140002081:	48 8d 05 dd 42 00 00 	lea    0x42dd(%rip),%rax        # 140006365 <.rdata+0x365>
   140002088:	48 89 c2             	mov    %rax,%rdx
   14000208b:	48 8b 05 1e 48 00 00 	mov    0x481e(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002092:	48 89 c1             	mov    %rax,%rcx
   140002095:	e8 46 07 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000209a:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   14000209e:	48 89 c2             	mov    %rax,%rdx
   1400020a1:	48 8b 05 f8 47 00 00 	mov    0x47f8(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   1400020a8:	48 89 c1             	mov    %rax,%rcx
   1400020ab:	e8 70 07 00 00       	call   140002820 <_ZNSirsERd>
   1400020b0:	48 8d 05 b3 42 00 00 	lea    0x42b3(%rip),%rax        # 14000636a <.rdata+0x36a>
   1400020b7:	48 89 c2             	mov    %rax,%rdx
   1400020ba:	48 8b 05 ef 47 00 00 	mov    0x47ef(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   1400020c1:	48 89 c1             	mov    %rax,%rcx
   1400020c4:	e8 17 07 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400020c9:	f2 0f 10 4d f8       	movsd  -0x8(%rbp),%xmm1
   1400020ce:	f2 0f 10 05 6a 43 00 	movsd  0x436a(%rip),%xmm0        # 140006440 <.rdata+0x440>
   1400020d5:	00 
   1400020d6:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
   1400020da:	66 0f 28 c8          	movapd %xmm0,%xmm1
   1400020de:	48 89 c1             	mov    %rax,%rcx
   1400020e1:	e8 22 07 00 00       	call   140002808 <_ZNSolsEd>
   1400020e6:	48 89 c1             	mov    %rax,%rcx
   1400020e9:	48 8b 05 d0 47 00 00 	mov    0x47d0(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400020f0:	48 89 c2             	mov    %rax,%rdx
   1400020f3:	e8 18 07 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   1400020f8:	90                   	nop
   1400020f9:	48 83 c4 30          	add    $0x30,%rsp
   1400020fd:	5d                   	pop    %rbp
   1400020fe:	c3                   	ret    

00000001400020ff <_Z8s_squarev>:
   1400020ff:	55                   	push   %rbp
   140002100:	48 89 e5             	mov    %rsp,%rbp
   140002103:	48 83 ec 30          	sub    $0x30,%rsp
   140002107:	48 8d 05 62 42 00 00 	lea    0x4262(%rip),%rax        # 140006370 <.rdata+0x370>
   14000210e:	48 89 c2             	mov    %rax,%rdx
   140002111:	48 8b 05 98 47 00 00 	mov    0x4798(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002118:	48 89 c1             	mov    %rax,%rcx
   14000211b:	e8 c0 06 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002120:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140002124:	48 89 c2             	mov    %rax,%rdx
   140002127:	48 8b 05 72 47 00 00 	mov    0x4772(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   14000212e:	48 89 c1             	mov    %rax,%rcx
   140002131:	e8 ea 06 00 00       	call   140002820 <_ZNSirsERd>
   140002136:	f2 0f 10 4d f8       	movsd  -0x8(%rbp),%xmm1
   14000213b:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140002140:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   140002144:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140002148:	48 8b 05 61 47 00 00 	mov    0x4761(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   14000214f:	48 89 c1             	mov    %rax,%rcx
   140002152:	e8 b1 06 00 00       	call   140002808 <_ZNSolsEd>
   140002157:	48 89 c1             	mov    %rax,%rcx
   14000215a:	48 8b 05 5f 47 00 00 	mov    0x475f(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140002161:	48 89 c2             	mov    %rax,%rdx
   140002164:	e8 a7 06 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140002169:	90                   	nop
   14000216a:	48 83 c4 30          	add    $0x30,%rsp
   14000216e:	5d                   	pop    %rbp
   14000216f:	c3                   	ret    

0000000140002170 <_Z7s_cubicv>:
   140002170:	55                   	push   %rbp
   140002171:	48 89 e5             	mov    %rsp,%rbp
   140002174:	48 83 ec 30          	sub    $0x30,%rsp
   140002178:	48 8d 05 f8 41 00 00 	lea    0x41f8(%rip),%rax        # 140006377 <.rdata+0x377>
   14000217f:	48 89 c2             	mov    %rax,%rdx
   140002182:	48 8b 05 27 47 00 00 	mov    0x4727(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002189:	48 89 c1             	mov    %rax,%rcx
   14000218c:	e8 4f 06 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002191:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
   140002195:	48 89 c2             	mov    %rax,%rdx
   140002198:	48 8b 05 01 47 00 00 	mov    0x4701(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   14000219f:	48 89 c1             	mov    %rax,%rcx
   1400021a2:	e8 79 06 00 00       	call   140002820 <_ZNSirsERd>
   1400021a7:	f2 0f 10 4d f8       	movsd  -0x8(%rbp),%xmm1
   1400021ac:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   1400021b1:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
   1400021b5:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   1400021ba:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
   1400021be:	66 0f 28 c8          	movapd %xmm0,%xmm1
   1400021c2:	48 8b 05 e7 46 00 00 	mov    0x46e7(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   1400021c9:	48 89 c1             	mov    %rax,%rcx
   1400021cc:	e8 37 06 00 00       	call   140002808 <_ZNSolsEd>
   1400021d1:	48 89 c1             	mov    %rax,%rcx
   1400021d4:	48 8b 05 e5 46 00 00 	mov    0x46e5(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400021db:	48 89 c2             	mov    %rax,%rdx
   1400021de:	e8 2d 06 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   1400021e3:	90                   	nop
   1400021e4:	48 83 c4 30          	add    $0x30,%rsp
   1400021e8:	5d                   	pop    %rbp
   1400021e9:	c3                   	ret    

00000001400021ea <_Z10s_variancev>:
   1400021ea:	55                   	push   %rbp
   1400021eb:	48 83 ec 70          	sub    $0x70,%rsp
   1400021ef:	48 8d 6c 24 60       	lea    0x60(%rsp),%rbp
   1400021f4:	0f 11 75 00          	movups %xmm6,0x0(%rbp)
   1400021f8:	48 8d 05 7f 41 00 00 	lea    0x417f(%rip),%rax        # 14000637e <.rdata+0x37e>
   1400021ff:	48 89 c2             	mov    %rax,%rdx
   140002202:	48 8b 05 a7 46 00 00 	mov    0x46a7(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002209:	48 89 c1             	mov    %rax,%rcx
   14000220c:	e8 cf 05 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002211:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
   140002215:	48 89 c2             	mov    %rax,%rdx
   140002218:	48 8b 05 81 46 00 00 	mov    0x4681(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   14000221f:	48 89 c1             	mov    %rax,%rcx
   140002222:	e8 f9 05 00 00       	call   140002820 <_ZNSirsERd>
   140002227:	48 8d 05 54 41 00 00 	lea    0x4154(%rip),%rax        # 140006382 <.rdata+0x382>
   14000222e:	48 89 c2             	mov    %rax,%rdx
   140002231:	48 8b 05 78 46 00 00 	mov    0x4678(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002238:	48 89 c1             	mov    %rax,%rcx
   14000223b:	e8 a0 05 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002240:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
   140002244:	48 89 c2             	mov    %rax,%rdx
   140002247:	48 8b 05 52 46 00 00 	mov    0x4652(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   14000224e:	48 89 c1             	mov    %rax,%rcx
   140002251:	e8 ca 05 00 00       	call   140002820 <_ZNSirsERd>
   140002256:	48 8d 05 29 41 00 00 	lea    0x4129(%rip),%rax        # 140006386 <.rdata+0x386>
   14000225d:	48 89 c2             	mov    %rax,%rdx
   140002260:	48 8b 05 49 46 00 00 	mov    0x4649(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002267:	48 89 c1             	mov    %rax,%rcx
   14000226a:	e8 71 05 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000226f:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
   140002273:	48 89 c2             	mov    %rax,%rdx
   140002276:	48 8b 05 23 46 00 00 	mov    0x4623(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   14000227d:	48 89 c1             	mov    %rax,%rcx
   140002280:	e8 9b 05 00 00       	call   140002820 <_ZNSirsERd>
   140002285:	48 8d 05 fe 40 00 00 	lea    0x40fe(%rip),%rax        # 14000638a <.rdata+0x38a>
   14000228c:	48 89 c2             	mov    %rax,%rdx
   14000228f:	48 8b 05 1a 46 00 00 	mov    0x461a(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002296:	48 89 c1             	mov    %rax,%rcx
   140002299:	e8 42 05 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000229e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   1400022a2:	48 89 c2             	mov    %rax,%rdx
   1400022a5:	48 8b 05 f4 45 00 00 	mov    0x45f4(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   1400022ac:	48 89 c1             	mov    %rax,%rcx
   1400022af:	e8 6c 05 00 00       	call   140002820 <_ZNSirsERd>
   1400022b4:	48 8d 05 d3 40 00 00 	lea    0x40d3(%rip),%rax        # 14000638e <.rdata+0x38e>
   1400022bb:	48 89 c2             	mov    %rax,%rdx
   1400022be:	48 8b 05 eb 45 00 00 	mov    0x45eb(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   1400022c5:	48 89 c1             	mov    %rax,%rcx
   1400022c8:	e8 13 05 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400022cd:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
   1400022d1:	48 89 c2             	mov    %rax,%rdx
   1400022d4:	48 8b 05 c5 45 00 00 	mov    0x45c5(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   1400022db:	48 89 c1             	mov    %rax,%rcx
   1400022de:	e8 3d 05 00 00       	call   140002820 <_ZNSirsERd>
   1400022e3:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
   1400022e8:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
   1400022ed:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   1400022f1:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
   1400022f6:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   1400022fa:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
   1400022ff:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
   140002303:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
   140002308:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
   14000230c:	f2 0f 10 0d 34 41 00 	movsd  0x4134(%rip),%xmm1        # 140006448 <.rdata+0x448>
   140002313:	00 
   140002314:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
   140002318:	f2 0f 11 45 f8       	movsd  %xmm0,-0x8(%rbp)
   14000231d:	f2 0f 10 4d e8       	movsd  -0x18(%rbp),%xmm1
   140002322:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140002327:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   14000232b:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140002330:	ba 02 00 00 00       	mov    $0x2,%edx
   140002335:	66 48 0f 6e c0       	movq   %rax,%xmm0
   14000233a:	e8 31 24 00 00       	call   140004770 <_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_>
   14000233f:	66 0f 28 f0          	movapd %xmm0,%xmm6
   140002343:	f2 0f 10 4d e0       	movsd  -0x20(%rbp),%xmm1
   140002348:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   14000234d:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   140002351:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140002356:	ba 02 00 00 00       	mov    $0x2,%edx
   14000235b:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140002360:	e8 0b 24 00 00       	call   140004770 <_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_>
   140002365:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
   140002369:	f2 0f 10 4d d8       	movsd  -0x28(%rbp),%xmm1
   14000236e:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140002373:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   140002377:	66 48 0f 7e c0       	movq   %xmm0,%rax
   14000237c:	ba 02 00 00 00       	mov    $0x2,%edx
   140002381:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140002386:	e8 e5 23 00 00       	call   140004770 <_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_>
   14000238b:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
   14000238f:	f2 0f 10 4d d0       	movsd  -0x30(%rbp),%xmm1
   140002394:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   140002399:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   14000239d:	66 48 0f 7e c0       	movq   %xmm0,%rax
   1400023a2:	ba 02 00 00 00       	mov    $0x2,%edx
   1400023a7:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400023ac:	e8 bf 23 00 00       	call   140004770 <_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_>
   1400023b1:	f2 0f 58 f0          	addsd  %xmm0,%xmm6
   1400023b5:	f2 0f 10 4d c8       	movsd  -0x38(%rbp),%xmm1
   1400023ba:	f2 0f 10 45 f8       	movsd  -0x8(%rbp),%xmm0
   1400023bf:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
   1400023c3:	66 48 0f 7e c0       	movq   %xmm0,%rax
   1400023c8:	ba 02 00 00 00       	mov    $0x2,%edx
   1400023cd:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400023d2:	e8 99 23 00 00       	call   140004770 <_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_>
   1400023d7:	f2 0f 58 c6          	addsd  %xmm6,%xmm0
   1400023db:	f2 0f 10 0d 65 40 00 	movsd  0x4065(%rip),%xmm1        # 140006448 <.rdata+0x448>
   1400023e2:	00 
   1400023e3:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
   1400023e7:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
   1400023ec:	48 8d 05 9f 3f 00 00 	lea    0x3f9f(%rip),%rax        # 140006392 <.rdata+0x392>
   1400023f3:	48 89 c2             	mov    %rax,%rdx
   1400023f6:	48 8b 05 b3 44 00 00 	mov    0x44b3(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   1400023fd:	48 89 c1             	mov    %rax,%rcx
   140002400:	e8 db 03 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002405:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
   14000240a:	66 0f 28 c8          	movapd %xmm0,%xmm1
   14000240e:	48 89 c1             	mov    %rax,%rcx
   140002411:	e8 f2 03 00 00       	call   140002808 <_ZNSolsEd>
   140002416:	48 89 c1             	mov    %rax,%rcx
   140002419:	48 8d 05 83 3f 00 00 	lea    0x3f83(%rip),%rax        # 1400063a3 <.rdata+0x3a3>
   140002420:	48 89 c2             	mov    %rax,%rdx
   140002423:	e8 b8 03 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002428:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
   14000242d:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140002431:	48 89 c1             	mov    %rax,%rcx
   140002434:	e8 cf 03 00 00       	call   140002808 <_ZNSolsEd>
   140002439:	48 89 c1             	mov    %rax,%rcx
   14000243c:	48 8d 05 60 3f 00 00 	lea    0x3f60(%rip),%rax        # 1400063a3 <.rdata+0x3a3>
   140002443:	48 89 c2             	mov    %rax,%rdx
   140002446:	e8 95 03 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000244b:	f2 0f 10 45 d8       	movsd  -0x28(%rbp),%xmm0
   140002450:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140002454:	48 89 c1             	mov    %rax,%rcx
   140002457:	e8 ac 03 00 00       	call   140002808 <_ZNSolsEd>
   14000245c:	48 89 c1             	mov    %rax,%rcx
   14000245f:	48 8d 05 3d 3f 00 00 	lea    0x3f3d(%rip),%rax        # 1400063a3 <.rdata+0x3a3>
   140002466:	48 89 c2             	mov    %rax,%rdx
   140002469:	e8 72 03 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000246e:	f2 0f 10 45 d0       	movsd  -0x30(%rbp),%xmm0
   140002473:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140002477:	48 89 c1             	mov    %rax,%rcx
   14000247a:	e8 89 03 00 00       	call   140002808 <_ZNSolsEd>
   14000247f:	48 89 c1             	mov    %rax,%rcx
   140002482:	48 8d 05 1c 3f 00 00 	lea    0x3f1c(%rip),%rax        # 1400063a5 <.rdata+0x3a5>
   140002489:	48 89 c2             	mov    %rax,%rdx
   14000248c:	e8 4f 03 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002491:	f2 0f 10 45 c8       	movsd  -0x38(%rbp),%xmm0
   140002496:	66 0f 28 c8          	movapd %xmm0,%xmm1
   14000249a:	48 89 c1             	mov    %rax,%rcx
   14000249d:	e8 66 03 00 00       	call   140002808 <_ZNSolsEd>
   1400024a2:	48 89 c1             	mov    %rax,%rcx
   1400024a5:	48 8d 05 ff 3e 00 00 	lea    0x3eff(%rip),%rax        # 1400063ab <.rdata+0x3ab>
   1400024ac:	48 89 c2             	mov    %rax,%rdx
   1400024af:	e8 2c 03 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400024b4:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
   1400024b9:	66 0f 28 c8          	movapd %xmm0,%xmm1
   1400024bd:	48 89 c1             	mov    %rax,%rcx
   1400024c0:	e8 43 03 00 00       	call   140002808 <_ZNSolsEd>
   1400024c5:	48 89 c1             	mov    %rax,%rcx
   1400024c8:	48 8b 05 f1 43 00 00 	mov    0x43f1(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400024cf:	48 89 c2             	mov    %rax,%rdx
   1400024d2:	e8 39 03 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   1400024d7:	90                   	nop
   1400024d8:	0f 10 75 00          	movups 0x0(%rbp),%xmm6
   1400024dc:	48 83 c4 70          	add    $0x70,%rsp
   1400024e0:	5d                   	pop    %rbp
   1400024e1:	c3                   	ret    

00000001400024e2 <_Z5p_decv>:
   1400024e2:	55                   	push   %rbp
   1400024e3:	48 89 e5             	mov    %rsp,%rbp
   1400024e6:	48 83 ec 30          	sub    $0x30,%rsp
   1400024ea:	48 8d 05 bf 3e 00 00 	lea    0x3ebf(%rip),%rax        # 1400063b0 <.rdata+0x3b0>
   1400024f1:	48 89 c2             	mov    %rax,%rdx
   1400024f4:	48 8b 05 b5 43 00 00 	mov    0x43b5(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   1400024fb:	48 89 c1             	mov    %rax,%rcx
   1400024fe:	e8 dd 02 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002503:	48 8d 45 fc          	lea    -0x4(%rbp),%rax
   140002507:	48 89 c2             	mov    %rax,%rdx
   14000250a:	48 8b 05 8f 43 00 00 	mov    0x438f(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   140002511:	48 89 c1             	mov    %rax,%rcx
   140002514:	e8 ff 02 00 00       	call   140002818 <_ZNSirsERi>
   140002519:	48 8d 05 ae 3e 00 00 	lea    0x3eae(%rip),%rax        # 1400063ce <.rdata+0x3ce>
   140002520:	48 89 c2             	mov    %rax,%rdx
   140002523:	48 8b 05 86 43 00 00 	mov    0x4386(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   14000252a:	48 89 c1             	mov    %rax,%rcx
   14000252d:	e8 ae 02 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002532:	48 89 c1             	mov    %rax,%rcx
   140002535:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140002538:	89 c2                	mov    %eax,%edx
   14000253a:	e8 c1 02 00 00       	call   140002800 <_ZNSolsEi>
   14000253f:	48 89 c1             	mov    %rax,%rcx
   140002542:	48 8b 05 77 43 00 00 	mov    0x4377(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140002549:	48 89 c2             	mov    %rax,%rdx
   14000254c:	e8 bf 02 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140002551:	90                   	nop
   140002552:	48 83 c4 30          	add    $0x30,%rsp
   140002556:	5d                   	pop    %rbp
   140002557:	c3                   	ret    

0000000140002558 <_Z5p_binv>:
   140002558:	55                   	push   %rbp
   140002559:	48 81 ec 30 01 00 00 	sub    $0x130,%rsp
   140002560:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140002567:	00 
   140002568:	c7 85 ac 00 00 00 00 	movl   $0x0,0xac(%rbp)
   14000256f:	00 00 00 
   140002572:	48 8d 05 67 3e 00 00 	lea    0x3e67(%rip),%rax        # 1400063e0 <.rdata+0x3e0>
   140002579:	48 89 c2             	mov    %rax,%rdx
   14000257c:	48 8b 05 2d 43 00 00 	mov    0x432d(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002583:	48 89 c1             	mov    %rax,%rcx
   140002586:	e8 55 02 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000258b:	48 8d 85 a0 00 00 00 	lea    0xa0(%rbp),%rax
   140002592:	48 89 c2             	mov    %rax,%rdx
   140002595:	48 8b 05 04 43 00 00 	mov    0x4304(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   14000259c:	48 89 c1             	mov    %rax,%rcx
   14000259f:	e8 74 02 00 00       	call   140002818 <_ZNSirsERi>
   1400025a4:	c7 85 a8 00 00 00 00 	movl   $0x0,0xa8(%rbp)
   1400025ab:	00 00 00 
   1400025ae:	eb 4e                	jmp    1400025fe <_Z5p_binv+0xa6>
   1400025b0:	8b 85 a0 00 00 00    	mov    0xa0(%rbp),%eax
   1400025b6:	85 c0                	test   %eax,%eax
   1400025b8:	74 4f                	je     140002609 <_Z5p_binv+0xb1>
   1400025ba:	8b 95 a0 00 00 00    	mov    0xa0(%rbp),%edx
   1400025c0:	89 d0                	mov    %edx,%eax
   1400025c2:	c1 f8 1f             	sar    $0x1f,%eax
   1400025c5:	c1 e8 1f             	shr    $0x1f,%eax
   1400025c8:	01 c2                	add    %eax,%edx
   1400025ca:	83 e2 01             	and    $0x1,%edx
   1400025cd:	29 c2                	sub    %eax,%edx
   1400025cf:	8b 85 a8 00 00 00    	mov    0xa8(%rbp),%eax
   1400025d5:	48 98                	cltq   
   1400025d7:	89 54 85 a0          	mov    %edx,-0x60(%rbp,%rax,4)
   1400025db:	8b 85 a0 00 00 00    	mov    0xa0(%rbp),%eax
   1400025e1:	89 c2                	mov    %eax,%edx
   1400025e3:	c1 ea 1f             	shr    $0x1f,%edx
   1400025e6:	01 d0                	add    %edx,%eax
   1400025e8:	d1 f8                	sar    %eax
   1400025ea:	89 85 a0 00 00 00    	mov    %eax,0xa0(%rbp)
   1400025f0:	83 85 ac 00 00 00 01 	addl   $0x1,0xac(%rbp)
   1400025f7:	83 85 a8 00 00 00 01 	addl   $0x1,0xa8(%rbp)
   1400025fe:	83 bd a8 00 00 00 3f 	cmpl   $0x3f,0xa8(%rbp)
   140002605:	7e a9                	jle    1400025b0 <_Z5p_binv+0x58>
   140002607:	eb 01                	jmp    14000260a <_Z5p_binv+0xb2>
   140002609:	90                   	nop
   14000260a:	8b 85 ac 00 00 00    	mov    0xac(%rbp),%eax
   140002610:	83 e8 01             	sub    $0x1,%eax
   140002613:	89 85 a4 00 00 00    	mov    %eax,0xa4(%rbp)
   140002619:	eb 24                	jmp    14000263f <_Z5p_binv+0xe7>
   14000261b:	8b 85 a4 00 00 00    	mov    0xa4(%rbp),%eax
   140002621:	48 98                	cltq   
   140002623:	8b 44 85 a0          	mov    -0x60(%rbp,%rax,4),%eax
   140002627:	89 c2                	mov    %eax,%edx
   140002629:	48 8b 05 80 42 00 00 	mov    0x4280(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002630:	48 89 c1             	mov    %rax,%rcx
   140002633:	e8 c8 01 00 00       	call   140002800 <_ZNSolsEi>
   140002638:	83 ad a4 00 00 00 01 	subl   $0x1,0xa4(%rbp)
   14000263f:	83 bd a4 00 00 00 00 	cmpl   $0x0,0xa4(%rbp)
   140002646:	79 d3                	jns    14000261b <_Z5p_binv+0xc3>
   140002648:	48 8b 05 71 42 00 00 	mov    0x4271(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000264f:	48 89 c2             	mov    %rax,%rdx
   140002652:	48 8b 05 57 42 00 00 	mov    0x4257(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   140002659:	48 89 c1             	mov    %rax,%rcx
   14000265c:	e8 af 01 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140002661:	90                   	nop
   140002662:	48 81 c4 30 01 00 00 	add    $0x130,%rsp
   140002669:	5d                   	pop    %rbp
   14000266a:	c3                   	ret    

000000014000266b <_Z5p_octv>:
   14000266b:	55                   	push   %rbp
   14000266c:	48 89 e5             	mov    %rsp,%rbp
   14000266f:	48 81 ec b0 00 00 00 	sub    $0xb0,%rsp
   140002676:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   14000267d:	48 8d 05 84 3d 00 00 	lea    0x3d84(%rip),%rax        # 140006408 <.rdata+0x408>
   140002684:	48 89 c2             	mov    %rax,%rdx
   140002687:	48 8b 05 22 42 00 00 	mov    0x4222(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   14000268e:	48 89 c1             	mov    %rax,%rcx
   140002691:	e8 4a 01 00 00       	call   1400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140002696:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   14000269a:	48 89 c2             	mov    %rax,%rdx
   14000269d:	48 8b 05 fc 41 00 00 	mov    0x41fc(%rip),%rax        # 1400068a0 <__fu0__ZSt3cin>
   1400026a4:	48 89 c1             	mov    %rax,%rcx
   1400026a7:	e8 6c 01 00 00       	call   140002818 <_ZNSirsERi>
   1400026ac:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   1400026b3:	eb 3e                	jmp    1400026f3 <_Z5p_octv+0x88>
   1400026b5:	8b 45 f0             	mov    -0x10(%rbp),%eax
   1400026b8:	85 c0                	test   %eax,%eax
   1400026ba:	74 3f                	je     1400026fb <_Z5p_octv+0x90>
   1400026bc:	8b 55 f0             	mov    -0x10(%rbp),%edx
   1400026bf:	89 d0                	mov    %edx,%eax
   1400026c1:	c1 f8 1f             	sar    $0x1f,%eax
   1400026c4:	c1 e8 1d             	shr    $0x1d,%eax
   1400026c7:	01 c2                	add    %eax,%edx
   1400026c9:	83 e2 07             	and    $0x7,%edx
   1400026cc:	29 c2                	sub    %eax,%edx
   1400026ce:	8b 45 f8             	mov    -0x8(%rbp),%eax
   1400026d1:	48 98                	cltq   
   1400026d3:	89 94 85 70 ff ff ff 	mov    %edx,-0x90(%rbp,%rax,4)
   1400026da:	8b 45 f0             	mov    -0x10(%rbp),%eax
   1400026dd:	8d 50 07             	lea    0x7(%rax),%edx
   1400026e0:	85 c0                	test   %eax,%eax
   1400026e2:	0f 48 c2             	cmovs  %edx,%eax
   1400026e5:	c1 f8 03             	sar    $0x3,%eax
   1400026e8:	89 45 f0             	mov    %eax,-0x10(%rbp)
   1400026eb:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
   1400026ef:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   1400026f3:	83 7d f8 1f          	cmpl   $0x1f,-0x8(%rbp)
   1400026f7:	7e bc                	jle    1400026b5 <_Z5p_octv+0x4a>
   1400026f9:	eb 01                	jmp    1400026fc <_Z5p_octv+0x91>
   1400026fb:	90                   	nop
   1400026fc:	8b 45 fc             	mov    -0x4(%rbp),%eax
   1400026ff:	83 e8 01             	sub    $0x1,%eax
   140002702:	89 45 f4             	mov    %eax,-0xc(%rbp)
   140002705:	eb 21                	jmp    140002728 <_Z5p_octv+0xbd>
   140002707:	8b 45 f4             	mov    -0xc(%rbp),%eax
   14000270a:	48 98                	cltq   
   14000270c:	8b 84 85 70 ff ff ff 	mov    -0x90(%rbp,%rax,4),%eax
   140002713:	89 c2                	mov    %eax,%edx
   140002715:	48 8b 05 94 41 00 00 	mov    0x4194(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   14000271c:	48 89 c1             	mov    %rax,%rcx
   14000271f:	e8 dc 00 00 00       	call   140002800 <_ZNSolsEi>
   140002724:	83 6d f4 01          	subl   $0x1,-0xc(%rbp)
   140002728:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
   14000272c:	79 d9                	jns    140002707 <_Z5p_octv+0x9c>
   14000272e:	48 8b 05 8b 41 00 00 	mov    0x418b(%rip),%rax        # 1400068c0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140002735:	48 89 c2             	mov    %rax,%rdx
   140002738:	48 8b 05 71 41 00 00 	mov    0x4171(%rip),%rax        # 1400068b0 <__fu1__ZSt4cout>
   14000273f:	48 89 c1             	mov    %rax,%rcx
   140002742:	e8 c9 00 00 00       	call   140002810 <_ZNSolsEPFRSoS_E>
   140002747:	90                   	nop
   140002748:	48 81 c4 b0 00 00 00 	add    $0xb0,%rsp
   14000274f:	5d                   	pop    %rbp
   140002750:	c3                   	ret    

0000000140002751 <__tcf_0>:
   140002751:	55                   	push   %rbp
   140002752:	48 89 e5             	mov    %rsp,%rbp
   140002755:	48 83 ec 20          	sub    $0x20,%rsp
   140002759:	48 8d 05 e0 78 00 00 	lea    0x78e0(%rip),%rax        # 14000a040 <_ZStL8__ioinit>
   140002760:	48 89 c1             	mov    %rax,%rcx
   140002763:	e8 88 00 00 00       	call   1400027f0 <_ZNSt8ios_base4InitD1Ev>
   140002768:	90                   	nop
   140002769:	48 83 c4 20          	add    $0x20,%rsp
   14000276d:	5d                   	pop    %rbp
   14000276e:	c3                   	ret    

000000014000276f <_Z41__static_initialization_and_destruction_0ii>:
   14000276f:	55                   	push   %rbp
   140002770:	48 89 e5             	mov    %rsp,%rbp
   140002773:	48 83 ec 20          	sub    $0x20,%rsp
   140002777:	89 4d 10             	mov    %ecx,0x10(%rbp)
   14000277a:	89 55 18             	mov    %edx,0x18(%rbp)
   14000277d:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   140002781:	75 27                	jne    1400027aa <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140002783:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   14000278a:	75 1e                	jne    1400027aa <_Z41__static_initialization_and_destruction_0ii+0x3b>
   14000278c:	48 8d 05 ad 78 00 00 	lea    0x78ad(%rip),%rax        # 14000a040 <_ZStL8__ioinit>
   140002793:	48 89 c1             	mov    %rax,%rcx
   140002796:	e8 5d 00 00 00       	call   1400027f8 <_ZNSt8ios_base4InitC1Ev>
   14000279b:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 140002751 <__tcf_0>
   1400027a2:	48 89 c1             	mov    %rax,%rcx
   1400027a5:	e8 46 ed ff ff       	call   1400014f0 <atexit>
   1400027aa:	90                   	nop
   1400027ab:	48 83 c4 20          	add    $0x20,%rsp
   1400027af:	5d                   	pop    %rbp
   1400027b0:	c3                   	ret    

00000001400027b1 <_GLOBAL__sub_I_main>:
   1400027b1:	55                   	push   %rbp
   1400027b2:	48 89 e5             	mov    %rsp,%rbp
   1400027b5:	48 83 ec 20          	sub    $0x20,%rsp
   1400027b9:	ba ff ff 00 00       	mov    $0xffff,%edx
   1400027be:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400027c3:	e8 a7 ff ff ff       	call   14000276f <_Z41__static_initialization_and_destruction_0ii>
   1400027c8:	90                   	nop
   1400027c9:	48 83 c4 20          	add    $0x20,%rsp
   1400027cd:	5d                   	pop    %rbp
   1400027ce:	c3                   	ret    
   1400027cf:	90                   	nop

00000001400027d0 <_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_>:
   1400027d0:	ff 25 ea 8b 00 00    	jmp    *0x8bea(%rip)        # 14000b3c0 <__imp__ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_>
   1400027d6:	90                   	nop
   1400027d7:	90                   	nop

00000001400027d8 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>:
   1400027d8:	ff 25 da 8b 00 00    	jmp    *0x8bda(%rip)        # 14000b3b8 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c>
   1400027de:	90                   	nop
   1400027df:	90                   	nop

00000001400027e0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   1400027e0:	ff 25 ca 8b 00 00    	jmp    *0x8bca(%rip)        # 14000b3b0 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400027e6:	90                   	nop
   1400027e7:	90                   	nop

00000001400027e8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   1400027e8:	ff 25 ba 8b 00 00    	jmp    *0x8bba(%rip)        # 14000b3a8 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400027ee:	90                   	nop
   1400027ef:	90                   	nop

00000001400027f0 <_ZNSt8ios_base4InitD1Ev>:
   1400027f0:	ff 25 9a 8b 00 00    	jmp    *0x8b9a(%rip)        # 14000b390 <__imp__ZNSt8ios_base4InitD1Ev>
   1400027f6:	90                   	nop
   1400027f7:	90                   	nop

00000001400027f8 <_ZNSt8ios_base4InitC1Ev>:
   1400027f8:	ff 25 8a 8b 00 00    	jmp    *0x8b8a(%rip)        # 14000b388 <__imp__ZNSt8ios_base4InitC1Ev>
   1400027fe:	90                   	nop
   1400027ff:	90                   	nop

0000000140002800 <_ZNSolsEi>:
   140002800:	ff 25 7a 8b 00 00    	jmp    *0x8b7a(%rip)        # 14000b380 <__imp__ZNSolsEi>
   140002806:	90                   	nop
   140002807:	90                   	nop

0000000140002808 <_ZNSolsEd>:
   140002808:	ff 25 6a 8b 00 00    	jmp    *0x8b6a(%rip)        # 14000b378 <__imp__ZNSolsEd>
   14000280e:	90                   	nop
   14000280f:	90                   	nop

0000000140002810 <_ZNSolsEPFRSoS_E>:
   140002810:	ff 25 5a 8b 00 00    	jmp    *0x8b5a(%rip)        # 14000b370 <__imp__ZNSolsEPFRSoS_E>
   140002816:	90                   	nop
   140002817:	90                   	nop

0000000140002818 <_ZNSirsERi>:
   140002818:	ff 25 4a 8b 00 00    	jmp    *0x8b4a(%rip)        # 14000b368 <__imp__ZNSirsERi>
   14000281e:	90                   	nop
   14000281f:	90                   	nop

0000000140002820 <_ZNSirsERd>:
   140002820:	ff 25 3a 8b 00 00    	jmp    *0x8b3a(%rip)        # 14000b360 <__imp__ZNSirsERd>
   140002826:	90                   	nop
   140002827:	90                   	nop
   140002828:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000282f:	00 

0000000140002830 <__do_global_dtors>:
   140002830:	48 83 ec 28          	sub    $0x28,%rsp
   140002834:	48 8b 05 d5 27 00 00 	mov    0x27d5(%rip),%rax        # 140005010 <p.0>
   14000283b:	48 8b 00             	mov    (%rax),%rax
   14000283e:	48 85 c0             	test   %rax,%rax
   140002841:	74 22                	je     140002865 <__do_global_dtors+0x35>
   140002843:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002848:	ff d0                	call   *%rax
   14000284a:	48 8b 05 bf 27 00 00 	mov    0x27bf(%rip),%rax        # 140005010 <p.0>
   140002851:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140002855:	48 8b 40 08          	mov    0x8(%rax),%rax
   140002859:	48 89 15 b0 27 00 00 	mov    %rdx,0x27b0(%rip)        # 140005010 <p.0>
   140002860:	48 85 c0             	test   %rax,%rax
   140002863:	75 e3                	jne    140002848 <__do_global_dtors+0x18>
   140002865:	48 83 c4 28          	add    $0x28,%rsp
   140002869:	c3                   	ret    
   14000286a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140002870 <__do_global_ctors>:
   140002870:	56                   	push   %rsi
   140002871:	53                   	push   %rbx
   140002872:	48 83 ec 28          	sub    $0x28,%rsp
   140002876:	48 8b 15 53 40 00 00 	mov    0x4053(%rip),%rdx        # 1400068d0 <.refptr.__CTOR_LIST__>
   14000287d:	48 8b 02             	mov    (%rdx),%rax
   140002880:	89 c1                	mov    %eax,%ecx
   140002882:	83 f8 ff             	cmp    $0xffffffff,%eax
   140002885:	74 39                	je     1400028c0 <__do_global_ctors+0x50>
   140002887:	85 c9                	test   %ecx,%ecx
   140002889:	74 20                	je     1400028ab <__do_global_ctors+0x3b>
   14000288b:	89 c8                	mov    %ecx,%eax
   14000288d:	83 e9 01             	sub    $0x1,%ecx
   140002890:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140002894:	48 29 c8             	sub    %rcx,%rax
   140002897:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000289c:	0f 1f 40 00          	nopl   0x0(%rax)
   1400028a0:	ff 13                	call   *(%rbx)
   1400028a2:	48 83 eb 08          	sub    $0x8,%rbx
   1400028a6:	48 39 f3             	cmp    %rsi,%rbx
   1400028a9:	75 f5                	jne    1400028a0 <__do_global_ctors+0x30>
   1400028ab:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140002830 <__do_global_dtors>
   1400028b2:	48 83 c4 28          	add    $0x28,%rsp
   1400028b6:	5b                   	pop    %rbx
   1400028b7:	5e                   	pop    %rsi
   1400028b8:	e9 33 ec ff ff       	jmp    1400014f0 <atexit>
   1400028bd:	0f 1f 00             	nopl   (%rax)
   1400028c0:	31 c0                	xor    %eax,%eax
   1400028c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400028c8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   1400028cc:	89 c1                	mov    %eax,%ecx
   1400028ce:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   1400028d3:	4c 89 c0             	mov    %r8,%rax
   1400028d6:	75 f0                	jne    1400028c8 <__do_global_ctors+0x58>
   1400028d8:	eb ad                	jmp    140002887 <__do_global_ctors+0x17>
   1400028da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400028e0 <__main>:
   1400028e0:	8b 05 6a 77 00 00    	mov    0x776a(%rip),%eax        # 14000a050 <initialized>
   1400028e6:	85 c0                	test   %eax,%eax
   1400028e8:	74 06                	je     1400028f0 <__main+0x10>
   1400028ea:	c3                   	ret    
   1400028eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400028f0:	c7 05 56 77 00 00 01 	movl   $0x1,0x7756(%rip)        # 14000a050 <initialized>
   1400028f7:	00 00 00 
   1400028fa:	e9 71 ff ff ff       	jmp    140002870 <__do_global_ctors>
   1400028ff:	90                   	nop

0000000140002900 <_setargv>:
   140002900:	31 c0                	xor    %eax,%eax
   140002902:	c3                   	ret    
   140002903:	90                   	nop
   140002904:	90                   	nop
   140002905:	90                   	nop
   140002906:	90                   	nop
   140002907:	90                   	nop
   140002908:	90                   	nop
   140002909:	90                   	nop
   14000290a:	90                   	nop
   14000290b:	90                   	nop
   14000290c:	90                   	nop
   14000290d:	90                   	nop
   14000290e:	90                   	nop
   14000290f:	90                   	nop

0000000140002910 <__dyn_tls_dtor>:
   140002910:	48 83 ec 28          	sub    $0x28,%rsp
   140002914:	83 fa 03             	cmp    $0x3,%edx
   140002917:	74 17                	je     140002930 <__dyn_tls_dtor+0x20>
   140002919:	85 d2                	test   %edx,%edx
   14000291b:	74 13                	je     140002930 <__dyn_tls_dtor+0x20>
   14000291d:	b8 01 00 00 00       	mov    $0x1,%eax
   140002922:	48 83 c4 28          	add    $0x28,%rsp
   140002926:	c3                   	ret    
   140002927:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000292e:	00 00 
   140002930:	e8 5b 0a 00 00       	call   140003390 <__mingw_TLScallback>
   140002935:	b8 01 00 00 00       	mov    $0x1,%eax
   14000293a:	48 83 c4 28          	add    $0x28,%rsp
   14000293e:	c3                   	ret    
   14000293f:	90                   	nop

0000000140002940 <__dyn_tls_init>:
   140002940:	56                   	push   %rsi
   140002941:	53                   	push   %rbx
   140002942:	48 83 ec 28          	sub    $0x28,%rsp
   140002946:	48 8b 05 33 3f 00 00 	mov    0x3f33(%rip),%rax        # 140006880 <.refptr._CRT_MT>
   14000294d:	83 38 02             	cmpl   $0x2,(%rax)
   140002950:	74 06                	je     140002958 <__dyn_tls_init+0x18>
   140002952:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140002958:	83 fa 02             	cmp    $0x2,%edx
   14000295b:	74 13                	je     140002970 <__dyn_tls_init+0x30>
   14000295d:	83 fa 01             	cmp    $0x1,%edx
   140002960:	74 4e                	je     1400029b0 <__dyn_tls_init+0x70>
   140002962:	b8 01 00 00 00       	mov    $0x1,%eax
   140002967:	48 83 c4 28          	add    $0x28,%rsp
   14000296b:	5b                   	pop    %rbx
   14000296c:	5e                   	pop    %rsi
   14000296d:	c3                   	ret    
   14000296e:	66 90                	xchg   %ax,%ax
   140002970:	48 8d 1d e1 96 00 00 	lea    0x96e1(%rip),%rbx        # 14000c058 <__xd_z>
   140002977:	48 8d 35 da 96 00 00 	lea    0x96da(%rip),%rsi        # 14000c058 <__xd_z>
   14000297e:	48 39 de             	cmp    %rbx,%rsi
   140002981:	74 df                	je     140002962 <__dyn_tls_init+0x22>
   140002983:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002988:	48 8b 03             	mov    (%rbx),%rax
   14000298b:	48 85 c0             	test   %rax,%rax
   14000298e:	74 02                	je     140002992 <__dyn_tls_init+0x52>
   140002990:	ff d0                	call   *%rax
   140002992:	48 83 c3 08          	add    $0x8,%rbx
   140002996:	48 39 de             	cmp    %rbx,%rsi
   140002999:	75 ed                	jne    140002988 <__dyn_tls_init+0x48>
   14000299b:	b8 01 00 00 00       	mov    $0x1,%eax
   1400029a0:	48 83 c4 28          	add    $0x28,%rsp
   1400029a4:	5b                   	pop    %rbx
   1400029a5:	5e                   	pop    %rsi
   1400029a6:	c3                   	ret    
   1400029a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400029ae:	00 00 
   1400029b0:	e8 db 09 00 00       	call   140003390 <__mingw_TLScallback>
   1400029b5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400029ba:	48 83 c4 28          	add    $0x28,%rsp
   1400029be:	5b                   	pop    %rbx
   1400029bf:	5e                   	pop    %rsi
   1400029c0:	c3                   	ret    
   1400029c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400029c8:	00 00 00 00 
   1400029cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400029d0 <__tlregdtor>:
   1400029d0:	31 c0                	xor    %eax,%eax
   1400029d2:	c3                   	ret    
   1400029d3:	90                   	nop
   1400029d4:	90                   	nop
   1400029d5:	90                   	nop
   1400029d6:	90                   	nop
   1400029d7:	90                   	nop
   1400029d8:	90                   	nop
   1400029d9:	90                   	nop
   1400029da:	90                   	nop
   1400029db:	90                   	nop
   1400029dc:	90                   	nop
   1400029dd:	90                   	nop
   1400029de:	90                   	nop
   1400029df:	90                   	nop

00000001400029e0 <_matherr>:
   1400029e0:	56                   	push   %rsi
   1400029e1:	53                   	push   %rbx
   1400029e2:	48 83 ec 78          	sub    $0x78,%rsp
   1400029e6:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   1400029eb:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   1400029f0:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   1400029f6:	83 39 06             	cmpl   $0x6,(%rcx)
   1400029f9:	0f 87 cd 00 00 00    	ja     140002acc <_matherr+0xec>
   1400029ff:	8b 01                	mov    (%rcx),%eax
   140002a01:	48 8d 15 dc 3b 00 00 	lea    0x3bdc(%rip),%rdx        # 1400065e4 <.rdata+0x124>
   140002a08:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140002a0c:	48 01 d0             	add    %rdx,%rax
   140002a0f:	ff e0                	jmp    *%rax
   140002a11:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002a18:	48 8d 1d c0 3a 00 00 	lea    0x3ac0(%rip),%rbx        # 1400064df <.rdata+0x1f>
   140002a1f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140002a25:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   140002a2a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   140002a2f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140002a33:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002a38:	e8 e3 1b 00 00       	call   140004620 <__acrt_iob_func>
   140002a3d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140002a44:	49 89 d8             	mov    %rbx,%r8
   140002a47:	48 8d 15 6a 3b 00 00 	lea    0x3b6a(%rip),%rdx        # 1400065b8 <.rdata+0xf8>
   140002a4e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140002a54:	48 89 c1             	mov    %rax,%rcx
   140002a57:	49 89 f1             	mov    %rsi,%r9
   140002a5a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140002a60:	e8 43 1c 00 00       	call   1400046a8 <fprintf>
   140002a65:	90                   	nop
   140002a66:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   140002a6b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   140002a70:	31 c0                	xor    %eax,%eax
   140002a72:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   140002a78:	48 83 c4 78          	add    $0x78,%rsp
   140002a7c:	5b                   	pop    %rbx
   140002a7d:	5e                   	pop    %rsi
   140002a7e:	c3                   	ret    
   140002a7f:	90                   	nop
   140002a80:	48 8d 1d 39 3a 00 00 	lea    0x3a39(%rip),%rbx        # 1400064c0 <.rdata>
   140002a87:	eb 96                	jmp    140002a1f <_matherr+0x3f>
   140002a89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002a90:	48 8d 1d 89 3a 00 00 	lea    0x3a89(%rip),%rbx        # 140006520 <.rdata+0x60>
   140002a97:	eb 86                	jmp    140002a1f <_matherr+0x3f>
   140002a99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002aa0:	48 8d 1d 59 3a 00 00 	lea    0x3a59(%rip),%rbx        # 140006500 <.rdata+0x40>
   140002aa7:	e9 73 ff ff ff       	jmp    140002a1f <_matherr+0x3f>
   140002aac:	0f 1f 40 00          	nopl   0x0(%rax)
   140002ab0:	48 8d 1d b9 3a 00 00 	lea    0x3ab9(%rip),%rbx        # 140006570 <.rdata+0xb0>
   140002ab7:	e9 63 ff ff ff       	jmp    140002a1f <_matherr+0x3f>
   140002abc:	0f 1f 40 00          	nopl   0x0(%rax)
   140002ac0:	48 8d 1d 81 3a 00 00 	lea    0x3a81(%rip),%rbx        # 140006548 <.rdata+0x88>
   140002ac7:	e9 53 ff ff ff       	jmp    140002a1f <_matherr+0x3f>
   140002acc:	48 8d 1d d3 3a 00 00 	lea    0x3ad3(%rip),%rbx        # 1400065a6 <.rdata+0xe6>
   140002ad3:	e9 47 ff ff ff       	jmp    140002a1f <_matherr+0x3f>
   140002ad8:	90                   	nop
   140002ad9:	90                   	nop
   140002ada:	90                   	nop
   140002adb:	90                   	nop
   140002adc:	90                   	nop
   140002add:	90                   	nop
   140002ade:	90                   	nop
   140002adf:	90                   	nop

0000000140002ae0 <_fpreset>:
   140002ae0:	db e3                	fninit 
   140002ae2:	c3                   	ret    
   140002ae3:	90                   	nop
   140002ae4:	90                   	nop
   140002ae5:	90                   	nop
   140002ae6:	90                   	nop
   140002ae7:	90                   	nop
   140002ae8:	90                   	nop
   140002ae9:	90                   	nop
   140002aea:	90                   	nop
   140002aeb:	90                   	nop
   140002aec:	90                   	nop
   140002aed:	90                   	nop
   140002aee:	90                   	nop
   140002aef:	90                   	nop

0000000140002af0 <__report_error>:
   140002af0:	56                   	push   %rsi
   140002af1:	53                   	push   %rbx
   140002af2:	48 83 ec 38          	sub    $0x38,%rsp
   140002af6:	48 89 cb             	mov    %rcx,%rbx
   140002af9:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   140002afe:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002b03:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140002b08:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   140002b0d:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002b12:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140002b17:	e8 04 1b 00 00       	call   140004620 <__acrt_iob_func>
   140002b1c:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140002b22:	ba 01 00 00 00       	mov    $0x1,%edx
   140002b27:	48 8d 0d d2 3a 00 00 	lea    0x3ad2(%rip),%rcx        # 140006600 <.rdata>
   140002b2e:	49 89 c1             	mov    %rax,%r9
   140002b31:	e8 82 1b 00 00       	call   1400046b8 <fwrite>
   140002b36:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   140002b3b:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002b40:	e8 db 1a 00 00       	call   140004620 <__acrt_iob_func>
   140002b45:	48 89 da             	mov    %rbx,%rdx
   140002b48:	48 89 c1             	mov    %rax,%rcx
   140002b4b:	49 89 f0             	mov    %rsi,%r8
   140002b4e:	e8 ad 1b 00 00       	call   140004700 <vfprintf>
   140002b53:	e8 38 1b 00 00       	call   140004690 <abort>
   140002b58:	90                   	nop
   140002b59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002b60 <mark_section_writable>:
   140002b60:	57                   	push   %rdi
   140002b61:	56                   	push   %rsi
   140002b62:	53                   	push   %rbx
   140002b63:	48 83 ec 50          	sub    $0x50,%rsp
   140002b67:	48 63 35 46 75 00 00 	movslq 0x7546(%rip),%rsi        # 14000a0b4 <maxSections>
   140002b6e:	48 89 cb             	mov    %rcx,%rbx
   140002b71:	85 f6                	test   %esi,%esi
   140002b73:	0f 8e 17 01 00 00    	jle    140002c90 <mark_section_writable+0x130>
   140002b79:	48 8b 05 38 75 00 00 	mov    0x7538(%rip),%rax        # 14000a0b8 <the_secs>
   140002b80:	45 31 c9             	xor    %r9d,%r9d
   140002b83:	48 83 c0 18          	add    $0x18,%rax
   140002b87:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002b8e:	00 00 
   140002b90:	4c 8b 00             	mov    (%rax),%r8
   140002b93:	4c 39 c3             	cmp    %r8,%rbx
   140002b96:	72 13                	jb     140002bab <mark_section_writable+0x4b>
   140002b98:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140002b9c:	8b 52 08             	mov    0x8(%rdx),%edx
   140002b9f:	49 01 d0             	add    %rdx,%r8
   140002ba2:	4c 39 c3             	cmp    %r8,%rbx
   140002ba5:	0f 82 8a 00 00 00    	jb     140002c35 <mark_section_writable+0xd5>
   140002bab:	41 83 c1 01          	add    $0x1,%r9d
   140002baf:	48 83 c0 28          	add    $0x28,%rax
   140002bb3:	41 39 f1             	cmp    %esi,%r9d
   140002bb6:	75 d8                	jne    140002b90 <mark_section_writable+0x30>
   140002bb8:	48 89 d9             	mov    %rbx,%rcx
   140002bbb:	e8 f0 09 00 00       	call   1400035b0 <__mingw_GetSectionForAddress>
   140002bc0:	48 89 c7             	mov    %rax,%rdi
   140002bc3:	48 85 c0             	test   %rax,%rax
   140002bc6:	0f 84 e6 00 00 00    	je     140002cb2 <mark_section_writable+0x152>
   140002bcc:	48 8b 05 e5 74 00 00 	mov    0x74e5(%rip),%rax        # 14000a0b8 <the_secs>
   140002bd3:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140002bd7:	48 c1 e3 03          	shl    $0x3,%rbx
   140002bdb:	48 01 d8             	add    %rbx,%rax
   140002bde:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140002be2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140002be8:	e8 03 0b 00 00       	call   1400036f0 <_GetPEImageBase>
   140002bed:	8b 57 0c             	mov    0xc(%rdi),%edx
   140002bf0:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140002bf6:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   140002bfa:	48 8b 05 b7 74 00 00 	mov    0x74b7(%rip),%rax        # 14000a0b8 <the_secs>
   140002c01:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140002c06:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   140002c0b:	ff 15 4f 86 00 00    	call   *0x864f(%rip)        # 14000b260 <__imp_VirtualQuery>
   140002c11:	48 85 c0             	test   %rax,%rax
   140002c14:	0f 84 7d 00 00 00    	je     140002c97 <mark_section_writable+0x137>
   140002c1a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   140002c1e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140002c21:	83 e2 bf             	and    $0xffffffbf,%edx
   140002c24:	74 08                	je     140002c2e <mark_section_writable+0xce>
   140002c26:	8d 50 fc             	lea    -0x4(%rax),%edx
   140002c29:	83 e2 fb             	and    $0xfffffffb,%edx
   140002c2c:	75 12                	jne    140002c40 <mark_section_writable+0xe0>
   140002c2e:	83 05 7f 74 00 00 01 	addl   $0x1,0x747f(%rip)        # 14000a0b4 <maxSections>
   140002c35:	48 83 c4 50          	add    $0x50,%rsp
   140002c39:	5b                   	pop    %rbx
   140002c3a:	5e                   	pop    %rsi
   140002c3b:	5f                   	pop    %rdi
   140002c3c:	c3                   	ret    
   140002c3d:	0f 1f 00             	nopl   (%rax)
   140002c40:	83 f8 02             	cmp    $0x2,%eax
   140002c43:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002c48:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   140002c4d:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140002c53:	b8 04 00 00 00       	mov    $0x4,%eax
   140002c58:	44 0f 44 c0          	cmove  %eax,%r8d
   140002c5c:	48 03 1d 55 74 00 00 	add    0x7455(%rip),%rbx        # 14000a0b8 <the_secs>
   140002c63:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140002c67:	49 89 d9             	mov    %rbx,%r9
   140002c6a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   140002c6e:	ff 15 e4 85 00 00    	call   *0x85e4(%rip)        # 14000b258 <__imp_VirtualProtect>
   140002c74:	85 c0                	test   %eax,%eax
   140002c76:	75 b6                	jne    140002c2e <mark_section_writable+0xce>
   140002c78:	ff 15 a2 85 00 00    	call   *0x85a2(%rip)        # 14000b220 <__imp_GetLastError>
   140002c7e:	48 8d 0d f3 39 00 00 	lea    0x39f3(%rip),%rcx        # 140006678 <.rdata+0x78>
   140002c85:	89 c2                	mov    %eax,%edx
   140002c87:	e8 64 fe ff ff       	call   140002af0 <__report_error>
   140002c8c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002c90:	31 f6                	xor    %esi,%esi
   140002c92:	e9 21 ff ff ff       	jmp    140002bb8 <mark_section_writable+0x58>
   140002c97:	48 8b 05 1a 74 00 00 	mov    0x741a(%rip),%rax        # 14000a0b8 <the_secs>
   140002c9e:	8b 57 08             	mov    0x8(%rdi),%edx
   140002ca1:	48 8d 0d 98 39 00 00 	lea    0x3998(%rip),%rcx        # 140006640 <.rdata+0x40>
   140002ca8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   140002cad:	e8 3e fe ff ff       	call   140002af0 <__report_error>
   140002cb2:	48 89 da             	mov    %rbx,%rdx
   140002cb5:	48 8d 0d 64 39 00 00 	lea    0x3964(%rip),%rcx        # 140006620 <.rdata+0x20>
   140002cbc:	e8 2f fe ff ff       	call   140002af0 <__report_error>
   140002cc1:	90                   	nop
   140002cc2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002cc9:	00 00 00 00 
   140002ccd:	0f 1f 00             	nopl   (%rax)

0000000140002cd0 <_pei386_runtime_relocator>:
   140002cd0:	55                   	push   %rbp
   140002cd1:	41 57                	push   %r15
   140002cd3:	41 56                	push   %r14
   140002cd5:	41 55                	push   %r13
   140002cd7:	41 54                	push   %r12
   140002cd9:	57                   	push   %rdi
   140002cda:	56                   	push   %rsi
   140002cdb:	53                   	push   %rbx
   140002cdc:	48 83 ec 48          	sub    $0x48,%rsp
   140002ce0:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140002ce5:	44 8b 25 c4 73 00 00 	mov    0x73c4(%rip),%r12d        # 14000a0b0 <was_init.0>
   140002cec:	45 85 e4             	test   %r12d,%r12d
   140002cef:	74 17                	je     140002d08 <_pei386_runtime_relocator+0x38>
   140002cf1:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140002cf5:	5b                   	pop    %rbx
   140002cf6:	5e                   	pop    %rsi
   140002cf7:	5f                   	pop    %rdi
   140002cf8:	41 5c                	pop    %r12
   140002cfa:	41 5d                	pop    %r13
   140002cfc:	41 5e                	pop    %r14
   140002cfe:	41 5f                	pop    %r15
   140002d00:	5d                   	pop    %rbp
   140002d01:	c3                   	ret    
   140002d02:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002d08:	c7 05 9e 73 00 00 01 	movl   $0x1,0x739e(%rip)        # 14000a0b0 <was_init.0>
   140002d0f:	00 00 00 
   140002d12:	e8 19 09 00 00       	call   140003630 <__mingw_GetSectionCount>
   140002d17:	48 98                	cltq   
   140002d19:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002d1d:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140002d24:	00 
   140002d25:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002d29:	e8 62 0b 00 00       	call   140003890 <___chkstk_ms>
   140002d2e:	4c 8b 2d ab 3b 00 00 	mov    0x3bab(%rip),%r13        # 1400068e0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140002d35:	48 8b 1d b4 3b 00 00 	mov    0x3bb4(%rip),%rbx        # 1400068f0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140002d3c:	c7 05 6e 73 00 00 00 	movl   $0x0,0x736e(%rip)        # 14000a0b4 <maxSections>
   140002d43:	00 00 00 
   140002d46:	48 29 c4             	sub    %rax,%rsp
   140002d49:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140002d4e:	48 89 05 63 73 00 00 	mov    %rax,0x7363(%rip)        # 14000a0b8 <the_secs>
   140002d55:	4c 89 e8             	mov    %r13,%rax
   140002d58:	48 29 d8             	sub    %rbx,%rax
   140002d5b:	48 83 f8 07          	cmp    $0x7,%rax
   140002d5f:	7e 90                	jle    140002cf1 <_pei386_runtime_relocator+0x21>
   140002d61:	8b 13                	mov    (%rbx),%edx
   140002d63:	48 83 f8 0b          	cmp    $0xb,%rax
   140002d67:	0f 8f 7b 01 00 00    	jg     140002ee8 <_pei386_runtime_relocator+0x218>
   140002d6d:	8b 03                	mov    (%rbx),%eax
   140002d6f:	85 c0                	test   %eax,%eax
   140002d71:	0f 85 69 02 00 00    	jne    140002fe0 <_pei386_runtime_relocator+0x310>
   140002d77:	8b 43 04             	mov    0x4(%rbx),%eax
   140002d7a:	85 c0                	test   %eax,%eax
   140002d7c:	0f 85 5e 02 00 00    	jne    140002fe0 <_pei386_runtime_relocator+0x310>
   140002d82:	8b 53 08             	mov    0x8(%rbx),%edx
   140002d85:	83 fa 01             	cmp    $0x1,%edx
   140002d88:	0f 85 90 02 00 00    	jne    14000301e <_pei386_runtime_relocator+0x34e>
   140002d8e:	48 83 c3 0c          	add    $0xc,%rbx
   140002d92:	4c 39 eb             	cmp    %r13,%rbx
   140002d95:	0f 83 56 ff ff ff    	jae    140002cf1 <_pei386_runtime_relocator+0x21>
   140002d9b:	4c 8b 35 6e 3b 00 00 	mov    0x3b6e(%rip),%r14        # 140006910 <.refptr.__image_base__>
   140002da2:	49 bf ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%r15
   140002da9:	ff ff ff 
   140002dac:	eb 54                	jmp    140002e02 <_pei386_runtime_relocator+0x132>
   140002dae:	66 90                	xchg   %ax,%ax
   140002db0:	0f b6 37             	movzbl (%rdi),%esi
   140002db3:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140002db9:	40 84 f6             	test   %sil,%sil
   140002dbc:	0f 89 06 02 00 00    	jns    140002fc8 <_pei386_runtime_relocator+0x2f8>
   140002dc2:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140002dc9:	48 29 c6             	sub    %rax,%rsi
   140002dcc:	4c 01 ce             	add    %r9,%rsi
   140002dcf:	85 c9                	test   %ecx,%ecx
   140002dd1:	75 17                	jne    140002dea <_pei386_runtime_relocator+0x11a>
   140002dd3:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140002dda:	0f 8f 4f 01 00 00    	jg     140002f2f <_pei386_runtime_relocator+0x25f>
   140002de0:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140002de4:	0f 8c 45 01 00 00    	jl     140002f2f <_pei386_runtime_relocator+0x25f>
   140002dea:	48 89 f9             	mov    %rdi,%rcx
   140002ded:	e8 6e fd ff ff       	call   140002b60 <mark_section_writable>
   140002df2:	40 88 37             	mov    %sil,(%rdi)
   140002df5:	48 83 c3 0c          	add    $0xc,%rbx
   140002df9:	4c 39 eb             	cmp    %r13,%rbx
   140002dfc:	0f 83 8e 00 00 00    	jae    140002e90 <_pei386_runtime_relocator+0x1c0>
   140002e02:	8b 03                	mov    (%rbx),%eax
   140002e04:	8b 4b 08             	mov    0x8(%rbx),%ecx
   140002e07:	8b 7b 04             	mov    0x4(%rbx),%edi
   140002e0a:	4c 01 f0             	add    %r14,%rax
   140002e0d:	0f b6 d1             	movzbl %cl,%edx
   140002e10:	4c 8b 08             	mov    (%rax),%r9
   140002e13:	4c 01 f7             	add    %r14,%rdi
   140002e16:	83 fa 20             	cmp    $0x20,%edx
   140002e19:	0f 84 29 01 00 00    	je     140002f48 <_pei386_runtime_relocator+0x278>
   140002e1f:	0f 87 eb 00 00 00    	ja     140002f10 <_pei386_runtime_relocator+0x240>
   140002e25:	83 fa 08             	cmp    $0x8,%edx
   140002e28:	74 86                	je     140002db0 <_pei386_runtime_relocator+0xe0>
   140002e2a:	83 fa 10             	cmp    $0x10,%edx
   140002e2d:	0f 85 df 01 00 00    	jne    140003012 <_pei386_runtime_relocator+0x342>
   140002e33:	0f b7 37             	movzwl (%rdi),%esi
   140002e36:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140002e3c:	66 85 f6             	test   %si,%si
   140002e3f:	0f 89 6b 01 00 00    	jns    140002fb0 <_pei386_runtime_relocator+0x2e0>
   140002e45:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140002e4c:	48 29 c6             	sub    %rax,%rsi
   140002e4f:	4c 01 ce             	add    %r9,%rsi
   140002e52:	85 c9                	test   %ecx,%ecx
   140002e54:	75 1a                	jne    140002e70 <_pei386_runtime_relocator+0x1a0>
   140002e56:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140002e5d:	0f 8c cc 00 00 00    	jl     140002f2f <_pei386_runtime_relocator+0x25f>
   140002e63:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140002e6a:	0f 8f bf 00 00 00    	jg     140002f2f <_pei386_runtime_relocator+0x25f>
   140002e70:	48 89 f9             	mov    %rdi,%rcx
   140002e73:	48 83 c3 0c          	add    $0xc,%rbx
   140002e77:	e8 e4 fc ff ff       	call   140002b60 <mark_section_writable>
   140002e7c:	66 89 37             	mov    %si,(%rdi)
   140002e7f:	4c 39 eb             	cmp    %r13,%rbx
   140002e82:	0f 82 7a ff ff ff    	jb     140002e02 <_pei386_runtime_relocator+0x132>
   140002e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002e8f:	00 
   140002e90:	8b 15 1e 72 00 00    	mov    0x721e(%rip),%edx        # 14000a0b4 <maxSections>
   140002e96:	85 d2                	test   %edx,%edx
   140002e98:	0f 8e 53 fe ff ff    	jle    140002cf1 <_pei386_runtime_relocator+0x21>
   140002e9e:	48 8b 35 b3 83 00 00 	mov    0x83b3(%rip),%rsi        # 14000b258 <__imp_VirtualProtect>
   140002ea5:	31 db                	xor    %ebx,%ebx
   140002ea7:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   140002eab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002eb0:	48 8b 05 01 72 00 00 	mov    0x7201(%rip),%rax        # 14000a0b8 <the_secs>
   140002eb7:	48 01 d8             	add    %rbx,%rax
   140002eba:	44 8b 00             	mov    (%rax),%r8d
   140002ebd:	45 85 c0             	test   %r8d,%r8d
   140002ec0:	74 0d                	je     140002ecf <_pei386_runtime_relocator+0x1ff>
   140002ec2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140002ec6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140002eca:	49 89 f9             	mov    %rdi,%r9
   140002ecd:	ff d6                	call   *%rsi
   140002ecf:	41 83 c4 01          	add    $0x1,%r12d
   140002ed3:	48 83 c3 28          	add    $0x28,%rbx
   140002ed7:	44 3b 25 d6 71 00 00 	cmp    0x71d6(%rip),%r12d        # 14000a0b4 <maxSections>
   140002ede:	7c d0                	jl     140002eb0 <_pei386_runtime_relocator+0x1e0>
   140002ee0:	e9 0c fe ff ff       	jmp    140002cf1 <_pei386_runtime_relocator+0x21>
   140002ee5:	0f 1f 00             	nopl   (%rax)
   140002ee8:	85 d2                	test   %edx,%edx
   140002eea:	0f 85 f0 00 00 00    	jne    140002fe0 <_pei386_runtime_relocator+0x310>
   140002ef0:	8b 43 04             	mov    0x4(%rbx),%eax
   140002ef3:	89 c2                	mov    %eax,%edx
   140002ef5:	0b 53 08             	or     0x8(%rbx),%edx
   140002ef8:	0f 85 7c fe ff ff    	jne    140002d7a <_pei386_runtime_relocator+0xaa>
   140002efe:	48 83 c3 0c          	add    $0xc,%rbx
   140002f02:	e9 66 fe ff ff       	jmp    140002d6d <_pei386_runtime_relocator+0x9d>
   140002f07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002f0e:	00 00 
   140002f10:	83 fa 40             	cmp    $0x40,%edx
   140002f13:	0f 85 f9 00 00 00    	jne    140003012 <_pei386_runtime_relocator+0x342>
   140002f19:	48 8b 37             	mov    (%rdi),%rsi
   140002f1c:	48 29 c6             	sub    %rax,%rsi
   140002f1f:	4c 01 ce             	add    %r9,%rsi
   140002f22:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140002f28:	75 66                	jne    140002f90 <_pei386_runtime_relocator+0x2c0>
   140002f2a:	48 85 f6             	test   %rsi,%rsi
   140002f2d:	78 61                	js     140002f90 <_pei386_runtime_relocator+0x2c0>
   140002f2f:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140002f34:	49 89 f8             	mov    %rdi,%r8
   140002f37:	48 8d 0d ca 37 00 00 	lea    0x37ca(%rip),%rcx        # 140006708 <.rdata+0x108>
   140002f3e:	e8 ad fb ff ff       	call   140002af0 <__report_error>
   140002f43:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002f48:	8b 37                	mov    (%rdi),%esi
   140002f4a:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140002f50:	85 f6                	test   %esi,%esi
   140002f52:	79 4c                	jns    140002fa0 <_pei386_runtime_relocator+0x2d0>
   140002f54:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140002f5b:	ff ff ff 
   140002f5e:	4c 09 de             	or     %r11,%rsi
   140002f61:	48 29 c6             	sub    %rax,%rsi
   140002f64:	4c 01 ce             	add    %r9,%rsi
   140002f67:	85 c9                	test   %ecx,%ecx
   140002f69:	75 0f                	jne    140002f7a <_pei386_runtime_relocator+0x2aa>
   140002f6b:	4c 39 fe             	cmp    %r15,%rsi
   140002f6e:	7e bf                	jle    140002f2f <_pei386_runtime_relocator+0x25f>
   140002f70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002f75:	48 39 c6             	cmp    %rax,%rsi
   140002f78:	7f b5                	jg     140002f2f <_pei386_runtime_relocator+0x25f>
   140002f7a:	48 89 f9             	mov    %rdi,%rcx
   140002f7d:	e8 de fb ff ff       	call   140002b60 <mark_section_writable>
   140002f82:	89 37                	mov    %esi,(%rdi)
   140002f84:	e9 6c fe ff ff       	jmp    140002df5 <_pei386_runtime_relocator+0x125>
   140002f89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002f90:	48 89 f9             	mov    %rdi,%rcx
   140002f93:	e8 c8 fb ff ff       	call   140002b60 <mark_section_writable>
   140002f98:	48 89 37             	mov    %rsi,(%rdi)
   140002f9b:	e9 55 fe ff ff       	jmp    140002df5 <_pei386_runtime_relocator+0x125>
   140002fa0:	48 29 c6             	sub    %rax,%rsi
   140002fa3:	4c 01 ce             	add    %r9,%rsi
   140002fa6:	85 c9                	test   %ecx,%ecx
   140002fa8:	74 c1                	je     140002f6b <_pei386_runtime_relocator+0x29b>
   140002faa:	eb ce                	jmp    140002f7a <_pei386_runtime_relocator+0x2aa>
   140002fac:	0f 1f 40 00          	nopl   0x0(%rax)
   140002fb0:	48 29 c6             	sub    %rax,%rsi
   140002fb3:	4c 01 ce             	add    %r9,%rsi
   140002fb6:	85 c9                	test   %ecx,%ecx
   140002fb8:	0f 84 98 fe ff ff    	je     140002e56 <_pei386_runtime_relocator+0x186>
   140002fbe:	e9 ad fe ff ff       	jmp    140002e70 <_pei386_runtime_relocator+0x1a0>
   140002fc3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002fc8:	48 29 c6             	sub    %rax,%rsi
   140002fcb:	4c 01 ce             	add    %r9,%rsi
   140002fce:	85 c9                	test   %ecx,%ecx
   140002fd0:	0f 84 fd fd ff ff    	je     140002dd3 <_pei386_runtime_relocator+0x103>
   140002fd6:	e9 0f fe ff ff       	jmp    140002dea <_pei386_runtime_relocator+0x11a>
   140002fdb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002fe0:	4c 39 eb             	cmp    %r13,%rbx
   140002fe3:	0f 83 08 fd ff ff    	jae    140002cf1 <_pei386_runtime_relocator+0x21>
   140002fe9:	4c 8b 35 20 39 00 00 	mov    0x3920(%rip),%r14        # 140006910 <.refptr.__image_base__>
   140002ff0:	8b 73 04             	mov    0x4(%rbx),%esi
   140002ff3:	8b 3b                	mov    (%rbx),%edi
   140002ff5:	48 83 c3 08          	add    $0x8,%rbx
   140002ff9:	4c 01 f6             	add    %r14,%rsi
   140002ffc:	03 3e                	add    (%rsi),%edi
   140002ffe:	48 89 f1             	mov    %rsi,%rcx
   140003001:	e8 5a fb ff ff       	call   140002b60 <mark_section_writable>
   140003006:	89 3e                	mov    %edi,(%rsi)
   140003008:	4c 39 eb             	cmp    %r13,%rbx
   14000300b:	72 e3                	jb     140002ff0 <_pei386_runtime_relocator+0x320>
   14000300d:	e9 7e fe ff ff       	jmp    140002e90 <_pei386_runtime_relocator+0x1c0>
   140003012:	48 8d 0d bf 36 00 00 	lea    0x36bf(%rip),%rcx        # 1400066d8 <.rdata+0xd8>
   140003019:	e8 d2 fa ff ff       	call   140002af0 <__report_error>
   14000301e:	48 8d 0d 7b 36 00 00 	lea    0x367b(%rip),%rcx        # 1400066a0 <.rdata+0xa0>
   140003025:	e8 c6 fa ff ff       	call   140002af0 <__report_error>
   14000302a:	90                   	nop
   14000302b:	90                   	nop
   14000302c:	90                   	nop
   14000302d:	90                   	nop
   14000302e:	90                   	nop
   14000302f:	90                   	nop

0000000140003030 <__mingw_raise_matherr>:
   140003030:	48 83 ec 58          	sub    $0x58,%rsp
   140003034:	48 8b 05 85 70 00 00 	mov    0x7085(%rip),%rax        # 14000a0c0 <stUserMathErr>
   14000303b:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   14000303f:	48 85 c0             	test   %rax,%rax
   140003042:	74 25                	je     140003069 <__mingw_raise_matherr+0x39>
   140003044:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   14000304b:	00 00 
   14000304d:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140003051:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140003056:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   14000305b:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140003060:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140003066:	ff d0                	call   *%rax
   140003068:	90                   	nop
   140003069:	48 83 c4 58          	add    $0x58,%rsp
   14000306d:	c3                   	ret    
   14000306e:	66 90                	xchg   %ax,%ax

0000000140003070 <__mingw_setusermatherr>:
   140003070:	48 89 0d 49 70 00 00 	mov    %rcx,0x7049(%rip)        # 14000a0c0 <stUserMathErr>
   140003077:	e9 e4 15 00 00       	jmp    140004660 <__setusermatherr>
   14000307c:	90                   	nop
   14000307d:	90                   	nop
   14000307e:	90                   	nop
   14000307f:	90                   	nop

0000000140003080 <_gnu_exception_handler>:
   140003080:	53                   	push   %rbx
   140003081:	48 83 ec 20          	sub    $0x20,%rsp
   140003085:	48 8b 11             	mov    (%rcx),%rdx
   140003088:	8b 02                	mov    (%rdx),%eax
   14000308a:	48 89 cb             	mov    %rcx,%rbx
   14000308d:	89 c1                	mov    %eax,%ecx
   14000308f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140003095:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   14000309b:	0f 84 9f 00 00 00    	je     140003140 <_gnu_exception_handler+0xc0>
   1400030a1:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   1400030a6:	77 77                	ja     14000311f <_gnu_exception_handler+0x9f>
   1400030a8:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   1400030ad:	76 21                	jbe    1400030d0 <_gnu_exception_handler+0x50>
   1400030af:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   1400030b4:	83 f8 09             	cmp    $0x9,%eax
   1400030b7:	77 54                	ja     14000310d <_gnu_exception_handler+0x8d>
   1400030b9:	48 8d 15 a0 36 00 00 	lea    0x36a0(%rip),%rdx        # 140006760 <.rdata>
   1400030c0:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400030c4:	48 01 d0             	add    %rdx,%rax
   1400030c7:	ff e0                	jmp    *%rax
   1400030c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400030d0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   1400030d5:	0f 84 d5 00 00 00    	je     1400031b0 <_gnu_exception_handler+0x130>
   1400030db:	76 3b                	jbe    140003118 <_gnu_exception_handler+0x98>
   1400030dd:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   1400030e2:	74 29                	je     14000310d <_gnu_exception_handler+0x8d>
   1400030e4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   1400030e9:	75 34                	jne    14000311f <_gnu_exception_handler+0x9f>
   1400030eb:	31 d2                	xor    %edx,%edx
   1400030ed:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400030f2:	e8 e1 15 00 00       	call   1400046d8 <signal>
   1400030f7:	48 83 f8 01          	cmp    $0x1,%rax
   1400030fb:	0f 84 d6 00 00 00    	je     1400031d7 <_gnu_exception_handler+0x157>
   140003101:	48 85 c0             	test   %rax,%rax
   140003104:	74 19                	je     14000311f <_gnu_exception_handler+0x9f>
   140003106:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000310b:	ff d0                	call   *%rax
   14000310d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140003112:	48 83 c4 20          	add    $0x20,%rsp
   140003116:	5b                   	pop    %rbx
   140003117:	c3                   	ret    
   140003118:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   14000311d:	74 ee                	je     14000310d <_gnu_exception_handler+0x8d>
   14000311f:	48 8b 05 ba 6f 00 00 	mov    0x6fba(%rip),%rax        # 14000a0e0 <__mingw_oldexcpt_handler>
   140003126:	48 85 c0             	test   %rax,%rax
   140003129:	74 25                	je     140003150 <_gnu_exception_handler+0xd0>
   14000312b:	48 89 d9             	mov    %rbx,%rcx
   14000312e:	48 83 c4 20          	add    $0x20,%rsp
   140003132:	5b                   	pop    %rbx
   140003133:	48 ff e0             	rex.W jmp *%rax
   140003136:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000313d:	00 00 00 
   140003140:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140003144:	0f 85 57 ff ff ff    	jne    1400030a1 <_gnu_exception_handler+0x21>
   14000314a:	eb c1                	jmp    14000310d <_gnu_exception_handler+0x8d>
   14000314c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003150:	31 c0                	xor    %eax,%eax
   140003152:	48 83 c4 20          	add    $0x20,%rsp
   140003156:	5b                   	pop    %rbx
   140003157:	c3                   	ret    
   140003158:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000315f:	00 
   140003160:	31 d2                	xor    %edx,%edx
   140003162:	b9 08 00 00 00       	mov    $0x8,%ecx
   140003167:	e8 6c 15 00 00       	call   1400046d8 <signal>
   14000316c:	48 83 f8 01          	cmp    $0x1,%rax
   140003170:	0f 84 89 00 00 00    	je     1400031ff <_gnu_exception_handler+0x17f>
   140003176:	48 85 c0             	test   %rax,%rax
   140003179:	74 a4                	je     14000311f <_gnu_exception_handler+0x9f>
   14000317b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140003180:	ff d0                	call   *%rax
   140003182:	eb 89                	jmp    14000310d <_gnu_exception_handler+0x8d>
   140003184:	0f 1f 40 00          	nopl   0x0(%rax)
   140003188:	31 d2                	xor    %edx,%edx
   14000318a:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000318f:	e8 44 15 00 00       	call   1400046d8 <signal>
   140003194:	48 83 f8 01          	cmp    $0x1,%rax
   140003198:	75 dc                	jne    140003176 <_gnu_exception_handler+0xf6>
   14000319a:	ba 01 00 00 00       	mov    $0x1,%edx
   14000319f:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400031a4:	e8 2f 15 00 00       	call   1400046d8 <signal>
   1400031a9:	e9 5f ff ff ff       	jmp    14000310d <_gnu_exception_handler+0x8d>
   1400031ae:	66 90                	xchg   %ax,%ax
   1400031b0:	31 d2                	xor    %edx,%edx
   1400031b2:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400031b7:	e8 1c 15 00 00       	call   1400046d8 <signal>
   1400031bc:	48 83 f8 01          	cmp    $0x1,%rax
   1400031c0:	74 29                	je     1400031eb <_gnu_exception_handler+0x16b>
   1400031c2:	48 85 c0             	test   %rax,%rax
   1400031c5:	0f 84 54 ff ff ff    	je     14000311f <_gnu_exception_handler+0x9f>
   1400031cb:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400031d0:	ff d0                	call   *%rax
   1400031d2:	e9 36 ff ff ff       	jmp    14000310d <_gnu_exception_handler+0x8d>
   1400031d7:	ba 01 00 00 00       	mov    $0x1,%edx
   1400031dc:	b9 04 00 00 00       	mov    $0x4,%ecx
   1400031e1:	e8 f2 14 00 00       	call   1400046d8 <signal>
   1400031e6:	e9 22 ff ff ff       	jmp    14000310d <_gnu_exception_handler+0x8d>
   1400031eb:	ba 01 00 00 00       	mov    $0x1,%edx
   1400031f0:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400031f5:	e8 de 14 00 00       	call   1400046d8 <signal>
   1400031fa:	e9 0e ff ff ff       	jmp    14000310d <_gnu_exception_handler+0x8d>
   1400031ff:	ba 01 00 00 00       	mov    $0x1,%edx
   140003204:	b9 08 00 00 00       	mov    $0x8,%ecx
   140003209:	e8 ca 14 00 00       	call   1400046d8 <signal>
   14000320e:	e8 cd f8 ff ff       	call   140002ae0 <_fpreset>
   140003213:	e9 f5 fe ff ff       	jmp    14000310d <_gnu_exception_handler+0x8d>
   140003218:	90                   	nop
   140003219:	90                   	nop
   14000321a:	90                   	nop
   14000321b:	90                   	nop
   14000321c:	90                   	nop
   14000321d:	90                   	nop
   14000321e:	90                   	nop
   14000321f:	90                   	nop

0000000140003220 <__mingwthr_run_key_dtors.part.0>:
   140003220:	41 54                	push   %r12
   140003222:	55                   	push   %rbp
   140003223:	57                   	push   %rdi
   140003224:	56                   	push   %rsi
   140003225:	53                   	push   %rbx
   140003226:	48 83 ec 20          	sub    $0x20,%rsp
   14000322a:	4c 8d 25 ef 6e 00 00 	lea    0x6eef(%rip),%r12        # 14000a120 <__mingwthr_cs>
   140003231:	4c 89 e1             	mov    %r12,%rcx
   140003234:	ff 15 de 7f 00 00    	call   *0x7fde(%rip)        # 14000b218 <__imp_EnterCriticalSection>
   14000323a:	48 8b 1d bf 6e 00 00 	mov    0x6ebf(%rip),%rbx        # 14000a100 <key_dtor_list>
   140003241:	48 85 db             	test   %rbx,%rbx
   140003244:	74 36                	je     14000327c <__mingwthr_run_key_dtors.part.0+0x5c>
   140003246:	48 8b 2d 03 80 00 00 	mov    0x8003(%rip),%rbp        # 14000b250 <__imp_TlsGetValue>
   14000324d:	48 8b 3d cc 7f 00 00 	mov    0x7fcc(%rip),%rdi        # 14000b220 <__imp_GetLastError>
   140003254:	0f 1f 40 00          	nopl   0x0(%rax)
   140003258:	8b 0b                	mov    (%rbx),%ecx
   14000325a:	ff d5                	call   *%rbp
   14000325c:	48 89 c6             	mov    %rax,%rsi
   14000325f:	ff d7                	call   *%rdi
   140003261:	85 c0                	test   %eax,%eax
   140003263:	75 0e                	jne    140003273 <__mingwthr_run_key_dtors.part.0+0x53>
   140003265:	48 85 f6             	test   %rsi,%rsi
   140003268:	74 09                	je     140003273 <__mingwthr_run_key_dtors.part.0+0x53>
   14000326a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   14000326e:	48 89 f1             	mov    %rsi,%rcx
   140003271:	ff d0                	call   *%rax
   140003273:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140003277:	48 85 db             	test   %rbx,%rbx
   14000327a:	75 dc                	jne    140003258 <__mingwthr_run_key_dtors.part.0+0x38>
   14000327c:	4c 89 e1             	mov    %r12,%rcx
   14000327f:	48 83 c4 20          	add    $0x20,%rsp
   140003283:	5b                   	pop    %rbx
   140003284:	5e                   	pop    %rsi
   140003285:	5f                   	pop    %rdi
   140003286:	5d                   	pop    %rbp
   140003287:	41 5c                	pop    %r12
   140003289:	48 ff 25 a8 7f 00 00 	rex.W jmp *0x7fa8(%rip)        # 14000b238 <__imp_LeaveCriticalSection>

0000000140003290 <___w64_mingwthr_add_key_dtor>:
   140003290:	57                   	push   %rdi
   140003291:	56                   	push   %rsi
   140003292:	53                   	push   %rbx
   140003293:	48 83 ec 20          	sub    $0x20,%rsp
   140003297:	8b 05 6b 6e 00 00    	mov    0x6e6b(%rip),%eax        # 14000a108 <__mingwthr_cs_init>
   14000329d:	89 cf                	mov    %ecx,%edi
   14000329f:	48 89 d6             	mov    %rdx,%rsi
   1400032a2:	85 c0                	test   %eax,%eax
   1400032a4:	75 0a                	jne    1400032b0 <___w64_mingwthr_add_key_dtor+0x20>
   1400032a6:	31 c0                	xor    %eax,%eax
   1400032a8:	48 83 c4 20          	add    $0x20,%rsp
   1400032ac:	5b                   	pop    %rbx
   1400032ad:	5e                   	pop    %rsi
   1400032ae:	5f                   	pop    %rdi
   1400032af:	c3                   	ret    
   1400032b0:	ba 18 00 00 00       	mov    $0x18,%edx
   1400032b5:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400032ba:	e8 d9 13 00 00       	call   140004698 <calloc>
   1400032bf:	48 89 c3             	mov    %rax,%rbx
   1400032c2:	48 85 c0             	test   %rax,%rax
   1400032c5:	74 33                	je     1400032fa <___w64_mingwthr_add_key_dtor+0x6a>
   1400032c7:	48 89 70 08          	mov    %rsi,0x8(%rax)
   1400032cb:	48 8d 35 4e 6e 00 00 	lea    0x6e4e(%rip),%rsi        # 14000a120 <__mingwthr_cs>
   1400032d2:	89 38                	mov    %edi,(%rax)
   1400032d4:	48 89 f1             	mov    %rsi,%rcx
   1400032d7:	ff 15 3b 7f 00 00    	call   *0x7f3b(%rip)        # 14000b218 <__imp_EnterCriticalSection>
   1400032dd:	48 8b 05 1c 6e 00 00 	mov    0x6e1c(%rip),%rax        # 14000a100 <key_dtor_list>
   1400032e4:	48 89 f1             	mov    %rsi,%rcx
   1400032e7:	48 89 1d 12 6e 00 00 	mov    %rbx,0x6e12(%rip)        # 14000a100 <key_dtor_list>
   1400032ee:	48 89 43 10          	mov    %rax,0x10(%rbx)
   1400032f2:	ff 15 40 7f 00 00    	call   *0x7f40(%rip)        # 14000b238 <__imp_LeaveCriticalSection>
   1400032f8:	eb ac                	jmp    1400032a6 <___w64_mingwthr_add_key_dtor+0x16>
   1400032fa:	83 c8 ff             	or     $0xffffffff,%eax
   1400032fd:	eb a9                	jmp    1400032a8 <___w64_mingwthr_add_key_dtor+0x18>
   1400032ff:	90                   	nop

0000000140003300 <___w64_mingwthr_remove_key_dtor>:
   140003300:	56                   	push   %rsi
   140003301:	53                   	push   %rbx
   140003302:	48 83 ec 28          	sub    $0x28,%rsp
   140003306:	8b 05 fc 6d 00 00    	mov    0x6dfc(%rip),%eax        # 14000a108 <__mingwthr_cs_init>
   14000330c:	89 cb                	mov    %ecx,%ebx
   14000330e:	85 c0                	test   %eax,%eax
   140003310:	75 0e                	jne    140003320 <___w64_mingwthr_remove_key_dtor+0x20>
   140003312:	31 c0                	xor    %eax,%eax
   140003314:	48 83 c4 28          	add    $0x28,%rsp
   140003318:	5b                   	pop    %rbx
   140003319:	5e                   	pop    %rsi
   14000331a:	c3                   	ret    
   14000331b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003320:	48 8d 35 f9 6d 00 00 	lea    0x6df9(%rip),%rsi        # 14000a120 <__mingwthr_cs>
   140003327:	48 89 f1             	mov    %rsi,%rcx
   14000332a:	ff 15 e8 7e 00 00    	call   *0x7ee8(%rip)        # 14000b218 <__imp_EnterCriticalSection>
   140003330:	48 8b 0d c9 6d 00 00 	mov    0x6dc9(%rip),%rcx        # 14000a100 <key_dtor_list>
   140003337:	48 85 c9             	test   %rcx,%rcx
   14000333a:	74 27                	je     140003363 <___w64_mingwthr_remove_key_dtor+0x63>
   14000333c:	31 d2                	xor    %edx,%edx
   14000333e:	eb 0b                	jmp    14000334b <___w64_mingwthr_remove_key_dtor+0x4b>
   140003340:	48 89 ca             	mov    %rcx,%rdx
   140003343:	48 85 c0             	test   %rax,%rax
   140003346:	74 1b                	je     140003363 <___w64_mingwthr_remove_key_dtor+0x63>
   140003348:	48 89 c1             	mov    %rax,%rcx
   14000334b:	8b 01                	mov    (%rcx),%eax
   14000334d:	39 d8                	cmp    %ebx,%eax
   14000334f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140003353:	75 eb                	jne    140003340 <___w64_mingwthr_remove_key_dtor+0x40>
   140003355:	48 85 d2             	test   %rdx,%rdx
   140003358:	74 1e                	je     140003378 <___w64_mingwthr_remove_key_dtor+0x78>
   14000335a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000335e:	e8 4d 13 00 00       	call   1400046b0 <free>
   140003363:	48 89 f1             	mov    %rsi,%rcx
   140003366:	ff 15 cc 7e 00 00    	call   *0x7ecc(%rip)        # 14000b238 <__imp_LeaveCriticalSection>
   14000336c:	31 c0                	xor    %eax,%eax
   14000336e:	48 83 c4 28          	add    $0x28,%rsp
   140003372:	5b                   	pop    %rbx
   140003373:	5e                   	pop    %rsi
   140003374:	c3                   	ret    
   140003375:	0f 1f 00             	nopl   (%rax)
   140003378:	48 89 05 81 6d 00 00 	mov    %rax,0x6d81(%rip)        # 14000a100 <key_dtor_list>
   14000337f:	eb dd                	jmp    14000335e <___w64_mingwthr_remove_key_dtor+0x5e>
   140003381:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140003388:	00 00 00 00 
   14000338c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140003390 <__mingw_TLScallback>:
   140003390:	53                   	push   %rbx
   140003391:	48 83 ec 20          	sub    $0x20,%rsp
   140003395:	83 fa 02             	cmp    $0x2,%edx
   140003398:	0f 84 b2 00 00 00    	je     140003450 <__mingw_TLScallback+0xc0>
   14000339e:	77 30                	ja     1400033d0 <__mingw_TLScallback+0x40>
   1400033a0:	85 d2                	test   %edx,%edx
   1400033a2:	74 4c                	je     1400033f0 <__mingw_TLScallback+0x60>
   1400033a4:	8b 05 5e 6d 00 00    	mov    0x6d5e(%rip),%eax        # 14000a108 <__mingwthr_cs_init>
   1400033aa:	85 c0                	test   %eax,%eax
   1400033ac:	0f 84 be 00 00 00    	je     140003470 <__mingw_TLScallback+0xe0>
   1400033b2:	c7 05 4c 6d 00 00 01 	movl   $0x1,0x6d4c(%rip)        # 14000a108 <__mingwthr_cs_init>
   1400033b9:	00 00 00 
   1400033bc:	b8 01 00 00 00       	mov    $0x1,%eax
   1400033c1:	48 83 c4 20          	add    $0x20,%rsp
   1400033c5:	5b                   	pop    %rbx
   1400033c6:	c3                   	ret    
   1400033c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400033ce:	00 00 
   1400033d0:	83 fa 03             	cmp    $0x3,%edx
   1400033d3:	75 e7                	jne    1400033bc <__mingw_TLScallback+0x2c>
   1400033d5:	8b 05 2d 6d 00 00    	mov    0x6d2d(%rip),%eax        # 14000a108 <__mingwthr_cs_init>
   1400033db:	85 c0                	test   %eax,%eax
   1400033dd:	74 dd                	je     1400033bc <__mingw_TLScallback+0x2c>
   1400033df:	e8 3c fe ff ff       	call   140003220 <__mingwthr_run_key_dtors.part.0>
   1400033e4:	eb d6                	jmp    1400033bc <__mingw_TLScallback+0x2c>
   1400033e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400033ed:	00 00 00 
   1400033f0:	8b 05 12 6d 00 00    	mov    0x6d12(%rip),%eax        # 14000a108 <__mingwthr_cs_init>
   1400033f6:	85 c0                	test   %eax,%eax
   1400033f8:	75 66                	jne    140003460 <__mingw_TLScallback+0xd0>
   1400033fa:	8b 05 08 6d 00 00    	mov    0x6d08(%rip),%eax        # 14000a108 <__mingwthr_cs_init>
   140003400:	83 f8 01             	cmp    $0x1,%eax
   140003403:	75 b7                	jne    1400033bc <__mingw_TLScallback+0x2c>
   140003405:	48 8b 1d f4 6c 00 00 	mov    0x6cf4(%rip),%rbx        # 14000a100 <key_dtor_list>
   14000340c:	48 85 db             	test   %rbx,%rbx
   14000340f:	74 18                	je     140003429 <__mingw_TLScallback+0x99>
   140003411:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003418:	48 89 d9             	mov    %rbx,%rcx
   14000341b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000341f:	e8 8c 12 00 00       	call   1400046b0 <free>
   140003424:	48 85 db             	test   %rbx,%rbx
   140003427:	75 ef                	jne    140003418 <__mingw_TLScallback+0x88>
   140003429:	48 8d 0d f0 6c 00 00 	lea    0x6cf0(%rip),%rcx        # 14000a120 <__mingwthr_cs>
   140003430:	48 c7 05 c5 6c 00 00 	movq   $0x0,0x6cc5(%rip)        # 14000a100 <key_dtor_list>
   140003437:	00 00 00 00 
   14000343b:	c7 05 c3 6c 00 00 00 	movl   $0x0,0x6cc3(%rip)        # 14000a108 <__mingwthr_cs_init>
   140003442:	00 00 00 
   140003445:	ff 15 c5 7d 00 00    	call   *0x7dc5(%rip)        # 14000b210 <__IAT_start__>
   14000344b:	e9 6c ff ff ff       	jmp    1400033bc <__mingw_TLScallback+0x2c>
   140003450:	e8 8b f6 ff ff       	call   140002ae0 <_fpreset>
   140003455:	b8 01 00 00 00       	mov    $0x1,%eax
   14000345a:	48 83 c4 20          	add    $0x20,%rsp
   14000345e:	5b                   	pop    %rbx
   14000345f:	c3                   	ret    
   140003460:	e8 bb fd ff ff       	call   140003220 <__mingwthr_run_key_dtors.part.0>
   140003465:	eb 93                	jmp    1400033fa <__mingw_TLScallback+0x6a>
   140003467:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000346e:	00 00 
   140003470:	48 8d 0d a9 6c 00 00 	lea    0x6ca9(%rip),%rcx        # 14000a120 <__mingwthr_cs>
   140003477:	ff 15 b3 7d 00 00    	call   *0x7db3(%rip)        # 14000b230 <__imp_InitializeCriticalSection>
   14000347d:	e9 30 ff ff ff       	jmp    1400033b2 <__mingw_TLScallback+0x22>
   140003482:	90                   	nop
   140003483:	90                   	nop
   140003484:	90                   	nop
   140003485:	90                   	nop
   140003486:	90                   	nop
   140003487:	90                   	nop
   140003488:	90                   	nop
   140003489:	90                   	nop
   14000348a:	90                   	nop
   14000348b:	90                   	nop
   14000348c:	90                   	nop
   14000348d:	90                   	nop
   14000348e:	90                   	nop
   14000348f:	90                   	nop

0000000140003490 <_ValidateImageBase>:
   140003490:	31 c0                	xor    %eax,%eax
   140003492:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140003497:	75 0f                	jne    1400034a8 <_ValidateImageBase+0x18>
   140003499:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000349d:	48 01 d1             	add    %rdx,%rcx
   1400034a0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400034a6:	74 08                	je     1400034b0 <_ValidateImageBase+0x20>
   1400034a8:	c3                   	ret    
   1400034a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400034b0:	31 c0                	xor    %eax,%eax
   1400034b2:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400034b8:	0f 94 c0             	sete   %al
   1400034bb:	c3                   	ret    
   1400034bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400034c0 <_FindPESection>:
   1400034c0:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   1400034c4:	48 01 c1             	add    %rax,%rcx
   1400034c7:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   1400034cb:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   1400034d0:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   1400034d5:	66 45 85 c0          	test   %r8w,%r8w
   1400034d9:	74 32                	je     14000350d <_FindPESection+0x4d>
   1400034db:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   1400034df:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400034e3:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400034e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400034ef:	00 
   1400034f0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400034f4:	4c 89 c1             	mov    %r8,%rcx
   1400034f7:	4c 39 c2             	cmp    %r8,%rdx
   1400034fa:	72 08                	jb     140003504 <_FindPESection+0x44>
   1400034fc:	03 48 08             	add    0x8(%rax),%ecx
   1400034ff:	48 39 ca             	cmp    %rcx,%rdx
   140003502:	72 0b                	jb     14000350f <_FindPESection+0x4f>
   140003504:	48 83 c0 28          	add    $0x28,%rax
   140003508:	4c 39 c8             	cmp    %r9,%rax
   14000350b:	75 e3                	jne    1400034f0 <_FindPESection+0x30>
   14000350d:	31 c0                	xor    %eax,%eax
   14000350f:	c3                   	ret    

0000000140003510 <_FindPESectionByName>:
   140003510:	57                   	push   %rdi
   140003511:	56                   	push   %rsi
   140003512:	53                   	push   %rbx
   140003513:	48 83 ec 20          	sub    $0x20,%rsp
   140003517:	48 89 ce             	mov    %rcx,%rsi
   14000351a:	e8 c1 11 00 00       	call   1400046e0 <strlen>
   14000351f:	48 83 f8 08          	cmp    $0x8,%rax
   140003523:	77 7b                	ja     1400035a0 <_FindPESectionByName+0x90>
   140003525:	48 8b 15 e4 33 00 00 	mov    0x33e4(%rip),%rdx        # 140006910 <.refptr.__image_base__>
   14000352c:	31 db                	xor    %ebx,%ebx
   14000352e:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140003533:	75 59                	jne    14000358e <_FindPESectionByName+0x7e>
   140003535:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140003539:	48 01 d0             	add    %rdx,%rax
   14000353c:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140003542:	75 4a                	jne    14000358e <_FindPESectionByName+0x7e>
   140003544:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000354a:	75 42                	jne    14000358e <_FindPESectionByName+0x7e>
   14000354c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140003550:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140003555:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140003559:	66 85 d2             	test   %dx,%dx
   14000355c:	74 42                	je     1400035a0 <_FindPESectionByName+0x90>
   14000355e:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140003561:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140003565:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   14000356a:	eb 0d                	jmp    140003579 <_FindPESectionByName+0x69>
   14000356c:	0f 1f 40 00          	nopl   0x0(%rax)
   140003570:	48 83 c3 28          	add    $0x28,%rbx
   140003574:	48 39 fb             	cmp    %rdi,%rbx
   140003577:	74 27                	je     1400035a0 <_FindPESectionByName+0x90>
   140003579:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000357f:	48 89 f2             	mov    %rsi,%rdx
   140003582:	48 89 d9             	mov    %rbx,%rcx
   140003585:	e8 5e 11 00 00       	call   1400046e8 <strncmp>
   14000358a:	85 c0                	test   %eax,%eax
   14000358c:	75 e2                	jne    140003570 <_FindPESectionByName+0x60>
   14000358e:	48 89 d8             	mov    %rbx,%rax
   140003591:	48 83 c4 20          	add    $0x20,%rsp
   140003595:	5b                   	pop    %rbx
   140003596:	5e                   	pop    %rsi
   140003597:	5f                   	pop    %rdi
   140003598:	c3                   	ret    
   140003599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400035a0:	31 db                	xor    %ebx,%ebx
   1400035a2:	48 89 d8             	mov    %rbx,%rax
   1400035a5:	48 83 c4 20          	add    $0x20,%rsp
   1400035a9:	5b                   	pop    %rbx
   1400035aa:	5e                   	pop    %rsi
   1400035ab:	5f                   	pop    %rdi
   1400035ac:	c3                   	ret    
   1400035ad:	0f 1f 00             	nopl   (%rax)

00000001400035b0 <__mingw_GetSectionForAddress>:
   1400035b0:	48 8b 15 59 33 00 00 	mov    0x3359(%rip),%rdx        # 140006910 <.refptr.__image_base__>
   1400035b7:	31 c0                	xor    %eax,%eax
   1400035b9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400035be:	75 10                	jne    1400035d0 <__mingw_GetSectionForAddress+0x20>
   1400035c0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400035c4:	49 01 d0             	add    %rdx,%r8
   1400035c7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400035ce:	74 08                	je     1400035d8 <__mingw_GetSectionForAddress+0x28>
   1400035d0:	c3                   	ret    
   1400035d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400035d8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400035df:	75 ef                	jne    1400035d0 <__mingw_GetSectionForAddress+0x20>
   1400035e1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400035e6:	48 29 d1             	sub    %rdx,%rcx
   1400035e9:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400035ee:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400035f3:	66 45 85 c0          	test   %r8w,%r8w
   1400035f7:	74 34                	je     14000362d <__mingw_GetSectionForAddress+0x7d>
   1400035f9:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400035fd:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140003601:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140003606:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000360d:	00 00 00 
   140003610:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140003614:	4c 89 c2             	mov    %r8,%rdx
   140003617:	4c 39 c1             	cmp    %r8,%rcx
   14000361a:	72 08                	jb     140003624 <__mingw_GetSectionForAddress+0x74>
   14000361c:	03 50 08             	add    0x8(%rax),%edx
   14000361f:	48 39 d1             	cmp    %rdx,%rcx
   140003622:	72 ac                	jb     1400035d0 <__mingw_GetSectionForAddress+0x20>
   140003624:	48 83 c0 28          	add    $0x28,%rax
   140003628:	4c 39 c8             	cmp    %r9,%rax
   14000362b:	75 e3                	jne    140003610 <__mingw_GetSectionForAddress+0x60>
   14000362d:	31 c0                	xor    %eax,%eax
   14000362f:	c3                   	ret    

0000000140003630 <__mingw_GetSectionCount>:
   140003630:	48 8b 05 d9 32 00 00 	mov    0x32d9(%rip),%rax        # 140006910 <.refptr.__image_base__>
   140003637:	31 c9                	xor    %ecx,%ecx
   140003639:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000363e:	75 0f                	jne    14000364f <__mingw_GetSectionCount+0x1f>
   140003640:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140003644:	48 01 d0             	add    %rdx,%rax
   140003647:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000364d:	74 09                	je     140003658 <__mingw_GetSectionCount+0x28>
   14000364f:	89 c8                	mov    %ecx,%eax
   140003651:	c3                   	ret    
   140003652:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003658:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000365e:	75 ef                	jne    14000364f <__mingw_GetSectionCount+0x1f>
   140003660:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140003664:	89 c8                	mov    %ecx,%eax
   140003666:	c3                   	ret    
   140003667:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000366e:	00 00 

0000000140003670 <_FindPESectionExec>:
   140003670:	4c 8b 05 99 32 00 00 	mov    0x3299(%rip),%r8        # 140006910 <.refptr.__image_base__>
   140003677:	31 c0                	xor    %eax,%eax
   140003679:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000367f:	75 0f                	jne    140003690 <_FindPESectionExec+0x20>
   140003681:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140003685:	4c 01 c2             	add    %r8,%rdx
   140003688:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000368e:	74 08                	je     140003698 <_FindPESectionExec+0x28>
   140003690:	c3                   	ret    
   140003691:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003698:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000369e:	75 f0                	jne    140003690 <_FindPESectionExec+0x20>
   1400036a0:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   1400036a4:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   1400036a9:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   1400036ae:	66 45 85 c0          	test   %r8w,%r8w
   1400036b2:	74 2c                	je     1400036e0 <_FindPESectionExec+0x70>
   1400036b4:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400036b8:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400036bc:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   1400036c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400036c8:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   1400036cc:	74 09                	je     1400036d7 <_FindPESectionExec+0x67>
   1400036ce:	48 85 c9             	test   %rcx,%rcx
   1400036d1:	74 bd                	je     140003690 <_FindPESectionExec+0x20>
   1400036d3:	48 83 e9 01          	sub    $0x1,%rcx
   1400036d7:	48 83 c0 28          	add    $0x28,%rax
   1400036db:	48 39 d0             	cmp    %rdx,%rax
   1400036de:	75 e8                	jne    1400036c8 <_FindPESectionExec+0x58>
   1400036e0:	31 c0                	xor    %eax,%eax
   1400036e2:	c3                   	ret    
   1400036e3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400036ea:	00 00 00 00 
   1400036ee:	66 90                	xchg   %ax,%ax

00000001400036f0 <_GetPEImageBase>:
   1400036f0:	48 8b 05 19 32 00 00 	mov    0x3219(%rip),%rax        # 140006910 <.refptr.__image_base__>
   1400036f7:	31 d2                	xor    %edx,%edx
   1400036f9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400036fe:	75 0f                	jne    14000370f <_GetPEImageBase+0x1f>
   140003700:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   140003704:	48 01 c1             	add    %rax,%rcx
   140003707:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   14000370d:	74 09                	je     140003718 <_GetPEImageBase+0x28>
   14000370f:	48 89 d0             	mov    %rdx,%rax
   140003712:	c3                   	ret    
   140003713:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003718:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   14000371e:	48 0f 44 d0          	cmove  %rax,%rdx
   140003722:	48 89 d0             	mov    %rdx,%rax
   140003725:	c3                   	ret    
   140003726:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000372d:	00 00 00 

0000000140003730 <_IsNonwritableInCurrentImage>:
   140003730:	48 8b 15 d9 31 00 00 	mov    0x31d9(%rip),%rdx        # 140006910 <.refptr.__image_base__>
   140003737:	31 c0                	xor    %eax,%eax
   140003739:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000373e:	75 10                	jne    140003750 <_IsNonwritableInCurrentImage+0x20>
   140003740:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140003744:	49 01 d0             	add    %rdx,%r8
   140003747:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000374e:	74 08                	je     140003758 <_IsNonwritableInCurrentImage+0x28>
   140003750:	c3                   	ret    
   140003751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003758:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000375f:	75 ef                	jne    140003750 <_IsNonwritableInCurrentImage+0x20>
   140003761:	48 29 d1             	sub    %rdx,%rcx
   140003764:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140003769:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000376e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140003773:	66 45 85 c9          	test   %r9w,%r9w
   140003777:	74 d7                	je     140003750 <_IsNonwritableInCurrentImage+0x20>
   140003779:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000377d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140003781:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140003786:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000378d:	00 00 00 
   140003790:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140003794:	4c 89 c0             	mov    %r8,%rax
   140003797:	4c 39 c1             	cmp    %r8,%rcx
   14000379a:	72 08                	jb     1400037a4 <_IsNonwritableInCurrentImage+0x74>
   14000379c:	03 42 08             	add    0x8(%rdx),%eax
   14000379f:	48 39 c1             	cmp    %rax,%rcx
   1400037a2:	72 0c                	jb     1400037b0 <_IsNonwritableInCurrentImage+0x80>
   1400037a4:	48 83 c2 28          	add    $0x28,%rdx
   1400037a8:	49 39 d1             	cmp    %rdx,%r9
   1400037ab:	75 e3                	jne    140003790 <_IsNonwritableInCurrentImage+0x60>
   1400037ad:	31 c0                	xor    %eax,%eax
   1400037af:	c3                   	ret    
   1400037b0:	8b 42 24             	mov    0x24(%rdx),%eax
   1400037b3:	f7 d0                	not    %eax
   1400037b5:	c1 e8 1f             	shr    $0x1f,%eax
   1400037b8:	c3                   	ret    
   1400037b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400037c0 <__mingw_enum_import_library_names>:
   1400037c0:	4c 8b 1d 49 31 00 00 	mov    0x3149(%rip),%r11        # 140006910 <.refptr.__image_base__>
   1400037c7:	45 31 c9             	xor    %r9d,%r9d
   1400037ca:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   1400037d0:	75 10                	jne    1400037e2 <__mingw_enum_import_library_names+0x22>
   1400037d2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   1400037d6:	4d 01 d8             	add    %r11,%r8
   1400037d9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400037e0:	74 0e                	je     1400037f0 <__mingw_enum_import_library_names+0x30>
   1400037e2:	4c 89 c8             	mov    %r9,%rax
   1400037e5:	c3                   	ret    
   1400037e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400037ed:	00 00 00 
   1400037f0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400037f7:	75 e9                	jne    1400037e2 <__mingw_enum_import_library_names+0x22>
   1400037f9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140003800:	85 c0                	test   %eax,%eax
   140003802:	74 de                	je     1400037e2 <__mingw_enum_import_library_names+0x22>
   140003804:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140003809:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   14000380e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140003813:	66 45 85 d2          	test   %r10w,%r10w
   140003817:	74 c9                	je     1400037e2 <__mingw_enum_import_library_names+0x22>
   140003819:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   14000381d:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140003821:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140003826:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000382d:	00 00 00 
   140003830:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140003834:	4d 89 c8             	mov    %r9,%r8
   140003837:	4c 39 c8             	cmp    %r9,%rax
   14000383a:	72 09                	jb     140003845 <__mingw_enum_import_library_names+0x85>
   14000383c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140003840:	4c 39 c0             	cmp    %r8,%rax
   140003843:	72 13                	jb     140003858 <__mingw_enum_import_library_names+0x98>
   140003845:	48 83 c2 28          	add    $0x28,%rdx
   140003849:	4c 39 d2             	cmp    %r10,%rdx
   14000384c:	75 e2                	jne    140003830 <__mingw_enum_import_library_names+0x70>
   14000384e:	45 31 c9             	xor    %r9d,%r9d
   140003851:	4c 89 c8             	mov    %r9,%rax
   140003854:	c3                   	ret    
   140003855:	0f 1f 00             	nopl   (%rax)
   140003858:	4c 01 d8             	add    %r11,%rax
   14000385b:	eb 0a                	jmp    140003867 <__mingw_enum_import_library_names+0xa7>
   14000385d:	0f 1f 00             	nopl   (%rax)
   140003860:	83 e9 01             	sub    $0x1,%ecx
   140003863:	48 83 c0 14          	add    $0x14,%rax
   140003867:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000386b:	45 85 c0             	test   %r8d,%r8d
   14000386e:	75 07                	jne    140003877 <__mingw_enum_import_library_names+0xb7>
   140003870:	8b 50 0c             	mov    0xc(%rax),%edx
   140003873:	85 d2                	test   %edx,%edx
   140003875:	74 d7                	je     14000384e <__mingw_enum_import_library_names+0x8e>
   140003877:	85 c9                	test   %ecx,%ecx
   140003879:	7f e5                	jg     140003860 <__mingw_enum_import_library_names+0xa0>
   14000387b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   14000387f:	4d 01 d9             	add    %r11,%r9
   140003882:	4c 89 c8             	mov    %r9,%rax
   140003885:	c3                   	ret    
   140003886:	90                   	nop
   140003887:	90                   	nop
   140003888:	90                   	nop
   140003889:	90                   	nop
   14000388a:	90                   	nop
   14000388b:	90                   	nop
   14000388c:	90                   	nop
   14000388d:	90                   	nop
   14000388e:	90                   	nop
   14000388f:	90                   	nop

0000000140003890 <___chkstk_ms>:
   140003890:	51                   	push   %rcx
   140003891:	50                   	push   %rax
   140003892:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140003898:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000389d:	72 19                	jb     1400038b8 <___chkstk_ms+0x28>
   14000389f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   1400038a6:	48 83 09 00          	orq    $0x0,(%rcx)
   1400038aa:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   1400038b0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400038b6:	77 e7                	ja     14000389f <___chkstk_ms+0xf>
   1400038b8:	48 29 c1             	sub    %rax,%rcx
   1400038bb:	48 83 09 00          	orq    $0x0,(%rcx)
   1400038bf:	58                   	pop    %rax
   1400038c0:	59                   	pop    %rcx
   1400038c1:	c3                   	ret    
   1400038c2:	90                   	nop
   1400038c3:	90                   	nop
   1400038c4:	90                   	nop
   1400038c5:	90                   	nop
   1400038c6:	90                   	nop
   1400038c7:	90                   	nop
   1400038c8:	90                   	nop
   1400038c9:	90                   	nop
   1400038ca:	90                   	nop
   1400038cb:	90                   	nop
   1400038cc:	90                   	nop
   1400038cd:	90                   	nop
   1400038ce:	90                   	nop
   1400038cf:	90                   	nop

00000001400038d0 <cos>:
   1400038d0:	53                   	push   %rbx
   1400038d1:	48 83 ec 70          	sub    $0x70,%rsp
   1400038d5:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   1400038da:	66 48 0f 7e c3       	movq   %xmm0,%rbx
   1400038df:	48 89 d8             	mov    %rbx,%rax
   1400038e2:	48 c1 e8 20          	shr    $0x20,%rax
   1400038e6:	89 c2                	mov    %eax,%edx
   1400038e8:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
   1400038ed:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   1400038f3:	09 da                	or     %ebx,%edx
   1400038f5:	89 d1                	mov    %edx,%ecx
   1400038f7:	09 c1                	or     %eax,%ecx
   1400038f9:	0f 94 c1             	sete   %cl
   1400038fc:	85 c0                	test   %eax,%eax
   1400038fe:	41 0f 94 c0          	sete   %r8b
   140003902:	44 08 c1             	or     %r8b,%cl
   140003905:	75 07                	jne    14000390e <cos+0x3e>
   140003907:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
   14000390c:	74 3a                	je     140003948 <cos+0x78>
   14000390e:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
   140003913:	dd 44 24 38          	fldl   0x38(%rsp)
   140003917:	48 8d 4c 24 50       	lea    0x50(%rsp),%rcx
   14000391c:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
   140003921:	db 7c 24 40          	fstpt  0x40(%rsp)
   140003925:	e8 b6 00 00 00       	call   1400039e0 <__cosl_internal>
   14000392a:	db 6c 24 50          	fldt   0x50(%rsp)
   14000392e:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   140003933:	dd 5c 24 38          	fstpl  0x38(%rsp)
   140003937:	f2 0f 10 44 24 38    	movsd  0x38(%rsp),%xmm0
   14000393d:	48 83 c4 70          	add    $0x70,%rsp
   140003941:	5b                   	pop    %rbx
   140003942:	c3                   	ret    
   140003943:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003948:	85 d2                	test   %edx,%edx
   14000394a:	74 44                	je     140003990 <cos+0xc0>
   14000394c:	e8 27 0d 00 00       	call   140004678 <_errno>
   140003951:	66 0f ef db          	pxor   %xmm3,%xmm3
   140003955:	66 48 0f 6e d3       	movq   %rbx,%xmm2
   14000395a:	48 8d 15 2f 2e 00 00 	lea    0x2e2f(%rip),%rdx        # 140006790 <.rdata>
   140003961:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   140003967:	b9 01 00 00 00       	mov    $0x1,%ecx
   14000396c:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
   140003971:	e8 ba f6 ff ff       	call   140003030 <__mingw_raise_matherr>
   140003976:	90                   	nop
   140003977:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   14000397c:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003981:	48 83 c4 70          	add    $0x70,%rsp
   140003985:	5b                   	pop    %rbx
   140003986:	c3                   	ret    
   140003987:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000398e:	00 00 
   140003990:	e8 e3 0c 00 00       	call   140004678 <_errno>
   140003995:	66 0f ef db          	pxor   %xmm3,%xmm3
   140003999:	f2 0f 10 35 f7 2d 00 	movsd  0x2df7(%rip),%xmm6        # 140006798 <.rdata+0x8>
   1400039a0:	00 
   1400039a1:	66 48 0f 6e d3       	movq   %rbx,%xmm2
   1400039a6:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   1400039ac:	48 8d 15 dd 2d 00 00 	lea    0x2ddd(%rip),%rdx        # 140006790 <.rdata>
   1400039b3:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400039b8:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400039be:	e8 6d f6 ff ff       	call   140003030 <__mingw_raise_matherr>
   1400039c3:	66 0f 28 c6          	movapd %xmm6,%xmm0
   1400039c7:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   1400039cc:	48 83 c4 70          	add    $0x70,%rsp
   1400039d0:	5b                   	pop    %rbx
   1400039d1:	c3                   	ret    
   1400039d2:	90                   	nop
   1400039d3:	90                   	nop
   1400039d4:	90                   	nop
   1400039d5:	90                   	nop
   1400039d6:	90                   	nop
   1400039d7:	90                   	nop
   1400039d8:	90                   	nop
   1400039d9:	90                   	nop
   1400039da:	90                   	nop
   1400039db:	90                   	nop
   1400039dc:	90                   	nop
   1400039dd:	90                   	nop
   1400039de:	90                   	nop
   1400039df:	90                   	nop

00000001400039e0 <__cosl_internal>:
   1400039e0:	db 2a                	fldt   (%rdx)
   1400039e2:	d9 ff                	fcos   
   1400039e4:	df e0                	fnstsw %ax
   1400039e6:	a9 00 04 00 00       	test   $0x400,%eax
   1400039eb:	74 15                	je     140003a02 <__cosl_internal+0x22>
   1400039ed:	d9 eb                	fldpi  
   1400039ef:	d8 c0                	fadd   %st(0),%st
   1400039f1:	d9 c9                	fxch   %st(1)
   1400039f3:	d9 f5                	fprem1 
   1400039f5:	df e0                	fnstsw %ax
   1400039f7:	a9 00 04 00 00       	test   $0x400,%eax
   1400039fc:	75 f5                	jne    1400039f3 <__cosl_internal+0x13>
   1400039fe:	dd d9                	fstp   %st(1)
   140003a00:	d9 ff                	fcos   
   140003a02:	48 89 c8             	mov    %rcx,%rax
   140003a05:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   140003a0c:	00 
   140003a0d:	db 39                	fstpt  (%rcx)
   140003a0f:	c3                   	ret    

0000000140003a10 <internal_modf>:
   140003a10:	48 83 ec 18          	sub    $0x18,%rsp
   140003a14:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
   140003a1a:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140003a1f:	dd 44 24 08          	fldl   0x8(%rsp)
   140003a23:	50                   	push   %rax
   140003a24:	48 83 ec 08          	sub    $0x8,%rsp
   140003a28:	d9 7c 24 04          	fnstcw 0x4(%rsp)
   140003a2c:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
   140003a31:	80 cc 0c             	or     $0xc,%ah
   140003a34:	66 89 04 24          	mov    %ax,(%rsp)
   140003a38:	d9 2c 24             	fldcw  (%rsp)
   140003a3b:	d9 fc                	frndint 
   140003a3d:	d9 6c 24 04          	fldcw  0x4(%rsp)
   140003a41:	48 83 c4 08          	add    $0x8,%rsp
   140003a45:	58                   	pop    %rax
   140003a46:	dd 5c 24 08          	fstpl  0x8(%rsp)
   140003a4a:	f2 0f 10 4c 24 08    	movsd  0x8(%rsp),%xmm1
   140003a50:	f2 0f 11 0a          	movsd  %xmm1,(%rdx)
   140003a54:	48 89 c2             	mov    %rax,%rdx
   140003a57:	48 c1 ea 20          	shr    $0x20,%rdx
   140003a5b:	89 d1                	mov    %edx,%ecx
   140003a5d:	81 e2 00 00 f0 7f    	and    $0x7ff00000,%edx
   140003a63:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
   140003a69:	81 fa 00 00 f0 7f    	cmp    $0x7ff00000,%edx
   140003a6f:	41 0f 95 c1          	setne  %r9b
   140003a73:	09 c1                	or     %eax,%ecx
   140003a75:	41 0f 95 c0          	setne  %r8b
   140003a79:	45 08 c1             	or     %r8b,%r9b
   140003a7c:	75 04                	jne    140003a82 <internal_modf+0x72>
   140003a7e:	09 d1                	or     %edx,%ecx
   140003a80:	75 16                	jne    140003a98 <internal_modf+0x88>
   140003a82:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140003a87:	f2 0f 5c 44 24 08    	subsd  0x8(%rsp),%xmm0
   140003a8d:	48 83 c4 18          	add    $0x18,%rsp
   140003a91:	c3                   	ret    
   140003a92:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003a98:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140003a9c:	48 83 c4 18          	add    $0x18,%rsp
   140003aa0:	c3                   	ret    
   140003aa1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140003aa8:	00 00 00 00 
   140003aac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140003ab0 <pow>:
   140003ab0:	41 54                	push   %r12
   140003ab2:	55                   	push   %rbp
   140003ab3:	57                   	push   %rdi
   140003ab4:	56                   	push   %rsi
   140003ab5:	53                   	push   %rbx
   140003ab6:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
   140003aba:	0f 11 74 24 70       	movups %xmm6,0x70(%rsp)
   140003abf:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140003ac4:	66 0f 28 d0          	movapd %xmm0,%xmm2
   140003ac8:	66 48 0f 7e cb       	movq   %xmm1,%rbx
   140003acd:	48 89 c7             	mov    %rax,%rdi
   140003ad0:	48 c1 ef 20          	shr    $0x20,%rdi
   140003ad4:	89 fa                	mov    %edi,%edx
   140003ad6:	89 f9                	mov    %edi,%ecx
   140003ad8:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   140003ade:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
   140003ae4:	09 c2                	or     %eax,%edx
   140003ae6:	89 ce                	mov    %ecx,%esi
   140003ae8:	b8 00 40 00 00       	mov    $0x4000,%eax
   140003aed:	09 d6                	or     %edx,%esi
   140003aef:	74 1a                	je     140003b0b <pow+0x5b>
   140003af1:	b8 00 44 00 00       	mov    $0x4400,%eax
   140003af6:	85 c9                	test   %ecx,%ecx
   140003af8:	74 11                	je     140003b0b <pow+0x5b>
   140003afa:	b8 00 04 00 00       	mov    $0x400,%eax
   140003aff:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
   140003b05:	0f 84 f5 00 00 00    	je     140003c00 <pow+0x150>
   140003b0b:	48 89 de             	mov    %rbx,%rsi
   140003b0e:	48 c1 ee 20          	shr    $0x20,%rsi
   140003b12:	89 f2                	mov    %esi,%edx
   140003b14:	89 f1                	mov    %esi,%ecx
   140003b16:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   140003b1c:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
   140003b22:	09 da                	or     %ebx,%edx
   140003b24:	41 89 c8             	mov    %ecx,%r8d
   140003b27:	41 09 d0             	or     %edx,%r8d
   140003b2a:	0f 84 e8 00 00 00    	je     140003c18 <pow+0x168>
   140003b30:	85 c9                	test   %ecx,%ecx
   140003b32:	74 08                	je     140003b3c <pow+0x8c>
   140003b34:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
   140003b3a:	74 64                	je     140003ba0 <pow+0xf0>
   140003b3c:	66 0f 2e 15 6c 2c 00 	ucomisd 0x2c6c(%rip),%xmm2        # 1400067b0 <.rdata+0x10>
   140003b43:	00 
   140003b44:	7a 06                	jp     140003b4c <pow+0x9c>
   140003b46:	0f 84 74 02 00 00    	je     140003dc0 <pow+0x310>
   140003b4c:	3d 00 01 00 00       	cmp    $0x100,%eax
   140003b51:	0f 84 09 01 00 00    	je     140003c60 <pow+0x1b0>
   140003b57:	3d 00 40 00 00       	cmp    $0x4000,%eax
   140003b5c:	0f 84 26 02 00 00    	je     140003d88 <pow+0x2d8>
   140003b62:	3d 00 05 00 00       	cmp    $0x500,%eax
   140003b67:	0f 85 33 01 00 00    	jne    140003ca0 <pow+0x1f0>
   140003b6d:	85 ff                	test   %edi,%edi
   140003b6f:	0f 88 db 02 00 00    	js     140003e50 <pow+0x3a0>
   140003b75:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   140003b7a:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003b7f:	e8 0c 09 00 00       	call   140004490 <ldexp>
   140003b84:	48 8d 54 24 68       	lea    0x68(%rsp),%rdx
   140003b89:	e8 82 fe ff ff       	call   140003a10 <internal_modf>
   140003b8e:	85 f6                	test   %esi,%esi
   140003b90:	0f 89 1b 02 00 00    	jns    140003db1 <pow+0x301>
   140003b96:	66 0f ef f6          	pxor   %xmm6,%xmm6
   140003b9a:	e9 81 00 00 00       	jmp    140003c20 <pow+0x170>
   140003b9f:	90                   	nop
   140003ba0:	85 d2                	test   %edx,%edx
   140003ba2:	0f 84 90 00 00 00    	je     140003c38 <pow+0x188>
   140003ba8:	66 0f 2e 15 00 2c 00 	ucomisd 0x2c00(%rip),%xmm2        # 1400067b0 <.rdata+0x10>
   140003baf:	00 
   140003bb0:	7a 06                	jp     140003bb8 <pow+0x108>
   140003bb2:	0f 84 08 02 00 00    	je     140003dc0 <pow+0x310>
   140003bb8:	3d 00 01 00 00       	cmp    $0x100,%eax
   140003bbd:	0f 84 9d 00 00 00    	je     140003c60 <pow+0x1b0>
   140003bc3:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
   140003bc9:	66 48 0f 6e f3       	movq   %rbx,%xmm6
   140003bce:	e8 a5 0a 00 00       	call   140004678 <_errno>
   140003bd3:	f2 0f 10 54 24 38    	movsd  0x38(%rsp),%xmm2
   140003bd9:	66 48 0f 6e db       	movq   %rbx,%xmm3
   140003bde:	48 8d 15 bb 2b 00 00 	lea    0x2bbb(%rip),%rdx        # 1400067a0 <.rdata>
   140003be5:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   140003beb:	b9 01 00 00 00       	mov    $0x1,%ecx
   140003bf0:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
   140003bf5:	e8 36 f4 ff ff       	call   140003030 <__mingw_raise_matherr>
   140003bfa:	eb 24                	jmp    140003c20 <pow+0x170>
   140003bfc:	0f 1f 40 00          	nopl   0x0(%rax)
   140003c00:	83 fa 01             	cmp    $0x1,%edx
   140003c03:	19 c0                	sbb    %eax,%eax
   140003c05:	25 00 04 00 00       	and    $0x400,%eax
   140003c0a:	05 00 01 00 00       	add    $0x100,%eax
   140003c0f:	e9 f7 fe ff ff       	jmp    140003b0b <pow+0x5b>
   140003c14:	0f 1f 40 00          	nopl   0x0(%rax)
   140003c18:	f2 0f 10 35 90 2b 00 	movsd  0x2b90(%rip),%xmm6        # 1400067b0 <.rdata+0x10>
   140003c1f:	00 
   140003c20:	66 0f 28 c6          	movapd %xmm6,%xmm0
   140003c24:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
   140003c29:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
   140003c2d:	5b                   	pop    %rbx
   140003c2e:	5e                   	pop    %rsi
   140003c2f:	5f                   	pop    %rdi
   140003c30:	5d                   	pop    %rbp
   140003c31:	41 5c                	pop    %r12
   140003c33:	c3                   	ret    
   140003c34:	0f 1f 40 00          	nopl   0x0(%rax)
   140003c38:	f2 0f 10 05 70 2b 00 	movsd  0x2b70(%rip),%xmm0        # 1400067b0 <.rdata+0x10>
   140003c3f:	00 
   140003c40:	66 0f 2e d0          	ucomisd %xmm0,%xmm2
   140003c44:	7a 06                	jp     140003c4c <pow+0x19c>
   140003c46:	0f 84 74 01 00 00    	je     140003dc0 <pow+0x310>
   140003c4c:	3d 00 01 00 00       	cmp    $0x100,%eax
   140003c51:	0f 85 59 02 00 00    	jne    140003eb0 <pow+0x400>
   140003c57:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140003c5e:	00 00 
   140003c60:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
   140003c66:	e8 0d 0a 00 00       	call   140004678 <_errno>
   140003c6b:	f2 0f 10 54 24 38    	movsd  0x38(%rsp),%xmm2
   140003c71:	66 48 0f 6e db       	movq   %rbx,%xmm3
   140003c76:	48 8d 15 23 2b 00 00 	lea    0x2b23(%rip),%rdx        # 1400067a0 <.rdata>
   140003c7d:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   140003c83:	b9 01 00 00 00       	mov    $0x1,%ecx
   140003c88:	f2 0f 11 54 24 20    	movsd  %xmm2,0x20(%rsp)
   140003c8e:	e8 9d f3 ff ff       	call   140003030 <__mingw_raise_matherr>
   140003c93:	f2 0f 10 54 24 38    	movsd  0x38(%rsp),%xmm2
   140003c99:	66 0f 28 f2          	movapd %xmm2,%xmm6
   140003c9d:	eb 81                	jmp    140003c20 <pow+0x170>
   140003c9f:	90                   	nop
   140003ca0:	48 8d 74 24 68       	lea    0x68(%rsp),%rsi
   140003ca5:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003caa:	48 89 f2             	mov    %rsi,%rdx
   140003cad:	e8 5e fd ff ff       	call   140003a10 <internal_modf>
   140003cb2:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140003cb6:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140003cba:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
   140003cbe:	0f 8a 0c 01 00 00    	jp     140003dd0 <pow+0x320>
   140003cc4:	0f 85 06 01 00 00    	jne    140003dd0 <pow+0x320>
   140003cca:	f2 0f 10 44 24 68    	movsd  0x68(%rsp),%xmm0
   140003cd0:	f2 0f 10 0d 10 2b 00 	movsd  0x2b10(%rip),%xmm1        # 1400067e8 <.rdata+0x48>
   140003cd7:	00 
   140003cd8:	66 0f 2f c8          	comisd %xmm0,%xmm1
   140003cdc:	72 0e                	jb     140003cec <pow+0x23c>
   140003cde:	66 0f 2f 05 0a 2b 00 	comisd 0x2b0a(%rip),%xmm0        # 1400067f0 <.rdata+0x50>
   140003ce5:	00 
   140003ce6:	0f 83 29 03 00 00    	jae    140004015 <pow+0x565>
   140003cec:	66 0f 54 15 0c 2b 00 	andpd  0x2b0c(%rip),%xmm2        # 140006800 <.rdata+0x60>
   140003cf3:	00 
   140003cf4:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
   140003cf9:	4c 8d 64 24 40       	lea    0x40(%rsp),%r12
   140003cfe:	4c 89 e2             	mov    %r12,%rdx
   140003d01:	48 89 e9             	mov    %rbp,%rcx
   140003d04:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
   140003d0a:	dd 44 24 38          	fldl   0x38(%rsp)
   140003d0e:	db 7c 24 40          	fstpt  0x40(%rsp)
   140003d12:	e8 59 08 00 00       	call   140004570 <log2l>
   140003d17:	db 6c 24 50          	fldt   0x50(%rsp)
   140003d1b:	4c 89 e2             	mov    %r12,%rdx
   140003d1e:	48 89 e9             	mov    %rbp,%rcx
   140003d21:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
   140003d26:	dd 44 24 38          	fldl   0x38(%rsp)
   140003d2a:	de c9                	fmulp  %st,%st(1)
   140003d2c:	db 7c 24 40          	fstpt  0x40(%rsp)
   140003d30:	e8 eb 06 00 00       	call   140004420 <exp2l>
   140003d35:	db 6c 24 50          	fldt   0x50(%rsp)
   140003d39:	dd 5c 24 38          	fstpl  0x38(%rsp)
   140003d3d:	f2 0f 10 74 24 38    	movsd  0x38(%rsp),%xmm6
   140003d43:	85 ff                	test   %edi,%edi
   140003d45:	0f 89 d5 fe ff ff    	jns    140003c20 <pow+0x170>
   140003d4b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   140003d50:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003d55:	e8 36 07 00 00       	call   140004490 <ldexp>
   140003d5a:	48 89 f2             	mov    %rsi,%rdx
   140003d5d:	e8 ae fc ff ff       	call   140003a10 <internal_modf>
   140003d62:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140003d66:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140003d6a:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
   140003d6e:	7a 06                	jp     140003d76 <pow+0x2c6>
   140003d70:	0f 84 aa fe ff ff    	je     140003c20 <pow+0x170>
   140003d76:	66 0f 57 35 52 2a 00 	xorpd  0x2a52(%rip),%xmm6        # 1400067d0 <.rdata+0x30>
   140003d7d:	00 
   140003d7e:	e9 9d fe ff ff       	jmp    140003c20 <pow+0x170>
   140003d83:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003d88:	85 ff                	test   %edi,%edi
   140003d8a:	0f 88 50 01 00 00    	js     140003ee0 <pow+0x430>
   140003d90:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   140003d95:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003d9a:	e8 f1 06 00 00       	call   140004490 <ldexp>
   140003d9f:	48 8d 54 24 68       	lea    0x68(%rsp),%rdx
   140003da4:	e8 67 fc ff ff       	call   140003a10 <internal_modf>
   140003da9:	85 f6                	test   %esi,%esi
   140003dab:	0f 89 e5 fd ff ff    	jns    140003b96 <pow+0xe6>
   140003db1:	f2 0f 10 35 ff 29 00 	movsd  0x29ff(%rip),%xmm6        # 1400067b8 <.rdata+0x18>
   140003db8:	00 
   140003db9:	e9 62 fe ff ff       	jmp    140003c20 <pow+0x170>
   140003dbe:	66 90                	xchg   %ax,%ax
   140003dc0:	66 0f 28 f2          	movapd %xmm2,%xmm6
   140003dc4:	e9 57 fe ff ff       	jmp    140003c20 <pow+0x170>
   140003dc9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003dd0:	85 ff                	test   %edi,%edi
   140003dd2:	0f 88 fd 01 00 00    	js     140003fd5 <pow+0x525>
   140003dd8:	66 48 0f 6e e3       	movq   %rbx,%xmm4
   140003ddd:	66 0f 2e 25 fb 29 00 	ucomisd 0x29fb(%rip),%xmm4        # 1400067e0 <.rdata+0x40>
   140003de4:	00 
   140003de5:	7a 06                	jp     140003ded <pow+0x33d>
   140003de7:	0f 84 b3 01 00 00    	je     140003fa0 <pow+0x4f0>
   140003ded:	66 0f 54 15 0b 2a 00 	andpd  0x2a0b(%rip),%xmm2        # 140006800 <.rdata+0x60>
   140003df4:	00 
   140003df5:	48 8d 74 24 50       	lea    0x50(%rsp),%rsi
   140003dfa:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
   140003dff:	48 89 fa             	mov    %rdi,%rdx
   140003e02:	48 89 f1             	mov    %rsi,%rcx
   140003e05:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
   140003e0b:	dd 44 24 38          	fldl   0x38(%rsp)
   140003e0f:	db 7c 24 40          	fstpt  0x40(%rsp)
   140003e13:	e8 58 07 00 00       	call   140004570 <log2l>
   140003e18:	db 6c 24 50          	fldt   0x50(%rsp)
   140003e1c:	48 89 fa             	mov    %rdi,%rdx
   140003e1f:	48 89 f1             	mov    %rsi,%rcx
   140003e22:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
   140003e27:	dd 44 24 38          	fldl   0x38(%rsp)
   140003e2b:	de c9                	fmulp  %st,%st(1)
   140003e2d:	db 7c 24 40          	fstpt  0x40(%rsp)
   140003e31:	e8 ea 05 00 00       	call   140004420 <exp2l>
   140003e36:	db 6c 24 50          	fldt   0x50(%rsp)
   140003e3a:	dd 5c 24 38          	fstpl  0x38(%rsp)
   140003e3e:	f2 0f 10 74 24 38    	movsd  0x38(%rsp),%xmm6
   140003e44:	e9 d7 fd ff ff       	jmp    140003c20 <pow+0x170>
   140003e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003e50:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
   140003e55:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003e5a:	66 0f ef f6          	pxor   %xmm6,%xmm6
   140003e5e:	48 89 fa             	mov    %rdi,%rdx
   140003e61:	e8 aa fb ff ff       	call   140003a10 <internal_modf>
   140003e66:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140003e6a:	0f 8a 50 01 00 00    	jp     140003fc0 <pow+0x510>
   140003e70:	0f 85 4a 01 00 00    	jne    140003fc0 <pow+0x510>
   140003e76:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   140003e7b:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003e80:	e8 0b 06 00 00       	call   140004490 <ldexp>
   140003e85:	48 89 fa             	mov    %rdi,%rdx
   140003e88:	e8 83 fb ff ff       	call   140003a10 <internal_modf>
   140003e8d:	85 f6                	test   %esi,%esi
   140003e8f:	0f 88 fb 00 00 00    	js     140003f90 <pow+0x4e0>
   140003e95:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140003e99:	7a 06                	jp     140003ea1 <pow+0x3f1>
   140003e9b:	0f 84 10 ff ff ff    	je     140003db1 <pow+0x301>
   140003ea1:	f2 0f 10 35 17 29 00 	movsd  0x2917(%rip),%xmm6        # 1400067c0 <.rdata+0x20>
   140003ea8:	00 
   140003ea9:	e9 72 fd ff ff       	jmp    140003c20 <pow+0x170>
   140003eae:	66 90                	xchg   %ax,%ax
   140003eb0:	3d 00 40 00 00       	cmp    $0x4000,%eax
   140003eb5:	0f 84 ee fe ff ff    	je     140003da9 <pow+0x2f9>
   140003ebb:	3d 00 05 00 00       	cmp    $0x500,%eax
   140003ec0:	0f 84 c8 fc ff ff    	je     140003b8e <pow+0xde>
   140003ec6:	85 ff                	test   %edi,%edi
   140003ec8:	78 6e                	js     140003f38 <pow+0x488>
   140003eca:	66 0f 2f d0          	comisd %xmm0,%xmm2
   140003ece:	0f 87 ba fc ff ff    	ja     140003b8e <pow+0xde>
   140003ed4:	e9 d0 fe ff ff       	jmp    140003da9 <pow+0x2f9>
   140003ed9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003ee0:	48 8d 7c 24 68       	lea    0x68(%rsp),%rdi
   140003ee5:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003eea:	66 0f ef f6          	pxor   %xmm6,%xmm6
   140003eee:	48 89 fa             	mov    %rdi,%rdx
   140003ef1:	e8 1a fb ff ff       	call   140003a10 <internal_modf>
   140003ef6:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140003efa:	7a 74                	jp     140003f70 <pow+0x4c0>
   140003efc:	75 72                	jne    140003f70 <pow+0x4c0>
   140003efe:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   140003f03:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   140003f08:	e8 83 05 00 00       	call   140004490 <ldexp>
   140003f0d:	48 89 fa             	mov    %rdi,%rdx
   140003f10:	e8 fb fa ff ff       	call   140003a10 <internal_modf>
   140003f15:	85 f6                	test   %esi,%esi
   140003f17:	78 40                	js     140003f59 <pow+0x4a9>
   140003f19:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140003f1d:	7a 06                	jp     140003f25 <pow+0x475>
   140003f1f:	0f 84 71 fc ff ff    	je     140003b96 <pow+0xe6>
   140003f25:	f2 0f 10 35 a3 28 00 	movsd  0x28a3(%rip),%xmm6        # 1400067d0 <.rdata+0x30>
   140003f2c:	00 
   140003f2d:	e9 ee fc ff ff       	jmp    140003c20 <pow+0x170>
   140003f32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140003f38:	66 0f 2e 15 88 28 00 	ucomisd 0x2888(%rip),%xmm2        # 1400067c8 <.rdata+0x28>
   140003f3f:	00 
   140003f40:	7a 0a                	jp     140003f4c <pow+0x49c>
   140003f42:	66 0f 28 f0          	movapd %xmm0,%xmm6
   140003f46:	0f 84 d4 fc ff ff    	je     140003c20 <pow+0x170>
   140003f4c:	66 0f 57 15 7c 28 00 	xorpd  0x287c(%rip),%xmm2        # 1400067d0 <.rdata+0x30>
   140003f53:	00 
   140003f54:	e9 71 ff ff ff       	jmp    140003eca <pow+0x41a>
   140003f59:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140003f5d:	0f 8a 3e ff ff ff    	jp     140003ea1 <pow+0x3f1>
   140003f63:	0f 85 38 ff ff ff    	jne    140003ea1 <pow+0x3f1>
   140003f69:	e9 43 fe ff ff       	jmp    140003db1 <pow+0x301>
   140003f6e:	66 90                	xchg   %ax,%ax
   140003f70:	85 f6                	test   %esi,%esi
   140003f72:	0f 89 1e fc ff ff    	jns    140003b96 <pow+0xe6>
   140003f78:	f2 0f 10 35 48 28 00 	movsd  0x2848(%rip),%xmm6        # 1400067c8 <.rdata+0x28>
   140003f7f:	00 
   140003f80:	f2 0f 5e f2          	divsd  %xmm2,%xmm6
   140003f84:	e9 97 fc ff ff       	jmp    140003c20 <pow+0x170>
   140003f89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140003f90:	66 0f 2e c6          	ucomisd %xmm6,%xmm0
   140003f94:	7a 8f                	jp     140003f25 <pow+0x475>
   140003f96:	0f 84 fa fb ff ff    	je     140003b96 <pow+0xe6>
   140003f9c:	eb 87                	jmp    140003f25 <pow+0x475>
   140003f9e:	66 90                	xchg   %ax,%ax
   140003fa0:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
   140003fa6:	dd 44 24 38          	fldl   0x38(%rsp)
   140003faa:	d9 fa                	fsqrt  
   140003fac:	dd 5c 24 38          	fstpl  0x38(%rsp)
   140003fb0:	f2 0f 10 74 24 38    	movsd  0x38(%rsp),%xmm6
   140003fb6:	e9 65 fc ff ff       	jmp    140003c20 <pow+0x170>
   140003fbb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140003fc0:	85 f6                	test   %esi,%esi
   140003fc2:	78 b4                	js     140003f78 <pow+0x4c8>
   140003fc4:	66 0f 28 f2          	movapd %xmm2,%xmm6
   140003fc8:	66 0f 57 35 00 28 00 	xorpd  0x2800(%rip),%xmm6        # 1400067d0 <.rdata+0x30>
   140003fcf:	00 
   140003fd0:	e9 4b fc ff ff       	jmp    140003c20 <pow+0x170>
   140003fd5:	f2 0f 11 54 24 38    	movsd  %xmm2,0x38(%rsp)
   140003fdb:	e8 98 06 00 00       	call   140004678 <_errno>
   140003fe0:	f2 0f 10 54 24 38    	movsd  0x38(%rsp),%xmm2
   140003fe6:	f2 0f 10 35 ba 27 00 	movsd  0x27ba(%rip),%xmm6        # 1400067a8 <.rdata+0x8>
   140003fed:	00 
   140003fee:	66 48 0f 6e db       	movq   %rbx,%xmm3
   140003ff3:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   140003ff9:	48 8d 15 a0 27 00 00 	lea    0x27a0(%rip),%rdx        # 1400067a0 <.rdata>
   140004000:	b9 01 00 00 00       	mov    $0x1,%ecx
   140004005:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   14000400b:	e8 20 f0 ff ff       	call   140003030 <__mingw_raise_matherr>
   140004010:	e9 0b fc ff ff       	jmp    140003c20 <pow+0x170>
   140004015:	66 48 0f 6e eb       	movq   %rbx,%xmm5
   14000401a:	0f 10 74 24 70       	movups 0x70(%rsp),%xmm6
   14000401f:	66 0f 28 c2          	movapd %xmm2,%xmm0
   140004023:	f2 0f 2c d5          	cvttsd2si %xmm5,%edx
   140004027:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
   14000402b:	5b                   	pop    %rbx
   14000402c:	5e                   	pop    %rsi
   14000402d:	5f                   	pop    %rdi
   14000402e:	5d                   	pop    %rbp
   14000402f:	41 5c                	pop    %r12
   140004031:	e9 5a 01 00 00       	jmp    140004190 <__powi>
   140004036:	90                   	nop
   140004037:	90                   	nop
   140004038:	90                   	nop
   140004039:	90                   	nop
   14000403a:	90                   	nop
   14000403b:	90                   	nop
   14000403c:	90                   	nop
   14000403d:	90                   	nop
   14000403e:	90                   	nop
   14000403f:	90                   	nop

0000000140004040 <sin>:
   140004040:	53                   	push   %rbx
   140004041:	48 83 ec 70          	sub    $0x70,%rsp
   140004045:	0f 11 74 24 60       	movups %xmm6,0x60(%rsp)
   14000404a:	66 48 0f 7e c3       	movq   %xmm0,%rbx
   14000404f:	48 89 d8             	mov    %rbx,%rax
   140004052:	48 c1 e8 20          	shr    $0x20,%rax
   140004056:	89 c2                	mov    %eax,%edx
   140004058:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
   14000405d:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   140004063:	09 da                	or     %ebx,%edx
   140004065:	89 d1                	mov    %edx,%ecx
   140004067:	09 c1                	or     %eax,%ecx
   140004069:	0f 94 c1             	sete   %cl
   14000406c:	85 c0                	test   %eax,%eax
   14000406e:	41 0f 94 c0          	sete   %r8b
   140004072:	44 08 c1             	or     %r8b,%cl
   140004075:	75 07                	jne    14000407e <sin+0x3e>
   140004077:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
   14000407c:	74 3a                	je     1400040b8 <sin+0x78>
   14000407e:	48 89 5c 24 38       	mov    %rbx,0x38(%rsp)
   140004083:	dd 44 24 38          	fldl   0x38(%rsp)
   140004087:	48 8d 4c 24 50       	lea    0x50(%rsp),%rcx
   14000408c:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
   140004091:	db 7c 24 40          	fstpt  0x40(%rsp)
   140004095:	e8 b6 00 00 00       	call   140004150 <__sinl_internal>
   14000409a:	db 6c 24 50          	fldt   0x50(%rsp)
   14000409e:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   1400040a3:	dd 5c 24 38          	fstpl  0x38(%rsp)
   1400040a7:	f2 0f 10 44 24 38    	movsd  0x38(%rsp),%xmm0
   1400040ad:	48 83 c4 70          	add    $0x70,%rsp
   1400040b1:	5b                   	pop    %rbx
   1400040b2:	c3                   	ret    
   1400040b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400040b8:	85 d2                	test   %edx,%edx
   1400040ba:	74 44                	je     140004100 <sin+0xc0>
   1400040bc:	e8 b7 05 00 00       	call   140004678 <_errno>
   1400040c1:	66 0f ef db          	pxor   %xmm3,%xmm3
   1400040c5:	66 48 0f 6e d3       	movq   %rbx,%xmm2
   1400040ca:	48 8d 15 3f 27 00 00 	lea    0x273f(%rip),%rdx        # 140006810 <.rdata>
   1400040d1:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   1400040d7:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400040dc:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
   1400040e1:	e8 4a ef ff ff       	call   140003030 <__mingw_raise_matherr>
   1400040e6:	90                   	nop
   1400040e7:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   1400040ec:	66 48 0f 6e c3       	movq   %rbx,%xmm0
   1400040f1:	48 83 c4 70          	add    $0x70,%rsp
   1400040f5:	5b                   	pop    %rbx
   1400040f6:	c3                   	ret    
   1400040f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400040fe:	00 00 
   140004100:	e8 73 05 00 00       	call   140004678 <_errno>
   140004105:	66 0f ef db          	pxor   %xmm3,%xmm3
   140004109:	f2 0f 10 35 07 27 00 	movsd  0x2707(%rip),%xmm6        # 140006818 <.rdata+0x8>
   140004110:	00 
   140004111:	66 48 0f 6e d3       	movq   %rbx,%xmm2
   140004116:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   14000411c:	48 8d 15 ed 26 00 00 	lea    0x26ed(%rip),%rdx        # 140006810 <.rdata>
   140004123:	b9 01 00 00 00       	mov    $0x1,%ecx
   140004128:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   14000412e:	e8 fd ee ff ff       	call   140003030 <__mingw_raise_matherr>
   140004133:	66 0f 28 c6          	movapd %xmm6,%xmm0
   140004137:	0f 10 74 24 60       	movups 0x60(%rsp),%xmm6
   14000413c:	48 83 c4 70          	add    $0x70,%rsp
   140004140:	5b                   	pop    %rbx
   140004141:	c3                   	ret    
   140004142:	90                   	nop
   140004143:	90                   	nop
   140004144:	90                   	nop
   140004145:	90                   	nop
   140004146:	90                   	nop
   140004147:	90                   	nop
   140004148:	90                   	nop
   140004149:	90                   	nop
   14000414a:	90                   	nop
   14000414b:	90                   	nop
   14000414c:	90                   	nop
   14000414d:	90                   	nop
   14000414e:	90                   	nop
   14000414f:	90                   	nop

0000000140004150 <__sinl_internal>:
   140004150:	db 2a                	fldt   (%rdx)
   140004152:	d9 fe                	fsin   
   140004154:	df e0                	fnstsw %ax
   140004156:	a9 00 04 00 00       	test   $0x400,%eax
   14000415b:	75 0e                	jne    14000416b <__sinl_internal+0x1b>
   14000415d:	48 89 c8             	mov    %rcx,%rax
   140004160:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   140004167:	00 
   140004168:	db 39                	fstpt  (%rcx)
   14000416a:	c3                   	ret    
   14000416b:	d9 eb                	fldpi  
   14000416d:	d8 c0                	fadd   %st(0),%st
   14000416f:	d9 c9                	fxch   %st(1)
   140004171:	d9 f5                	fprem1 
   140004173:	df e0                	fnstsw %ax
   140004175:	a9 00 04 00 00       	test   $0x400,%eax
   14000417a:	75 f5                	jne    140004171 <__sinl_internal+0x21>
   14000417c:	dd d9                	fstp   %st(1)
   14000417e:	d9 fe                	fsin   
   140004180:	48 89 c8             	mov    %rcx,%rax
   140004183:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   14000418a:	00 
   14000418b:	db 39                	fstpt  (%rcx)
   14000418d:	c3                   	ret    
   14000418e:	90                   	nop
   14000418f:	90                   	nop

0000000140004190 <__powi>:
   140004190:	53                   	push   %rbx
   140004191:	48 83 ec 40          	sub    $0x40,%rsp
   140004195:	0f 11 74 24 30       	movups %xmm6,0x30(%rsp)
   14000419a:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   1400041a0:	66 48 0f 7e c0       	movq   %xmm0,%rax
   1400041a5:	66 0f 28 d0          	movapd %xmm0,%xmm2
   1400041a9:	89 d3                	mov    %edx,%ebx
   1400041ab:	f2 0f 10 05 85 26 00 	movsd  0x2685(%rip),%xmm0        # 140006838 <.rdata+0x18>
   1400041b2:	00 
   1400041b3:	48 89 c1             	mov    %rax,%rcx
   1400041b6:	48 c1 e9 20          	shr    $0x20,%rcx
   1400041ba:	89 ca                	mov    %ecx,%edx
   1400041bc:	41 89 c8             	mov    %ecx,%r8d
   1400041bf:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
   1400041c5:	41 81 e0 00 00 f0 7f 	and    $0x7ff00000,%r8d
   1400041cc:	09 c2                	or     %eax,%edx
   1400041ce:	66 0f 2e d0          	ucomisd %xmm0,%xmm2
   1400041d2:	45 89 c2             	mov    %r8d,%r10d
   1400041d5:	0f 9b c0             	setnp  %al
   1400041d8:	41 0f 45 c1          	cmovne %r9d,%eax
   1400041dc:	85 db                	test   %ebx,%ebx
   1400041de:	41 0f 94 c1          	sete   %r9b
   1400041e2:	44 09 c8             	or     %r9d,%eax
   1400041e5:	41 09 d2             	or     %edx,%r10d
   1400041e8:	0f 84 ea 00 00 00    	je     1400042d8 <__powi+0x148>
   1400041ee:	66 0f 28 f0          	movapd %xmm0,%xmm6
   1400041f2:	45 85 c0             	test   %r8d,%r8d
   1400041f5:	74 09                	je     140004200 <__powi+0x70>
   1400041f7:	41 81 f8 00 00 f0 7f 	cmp    $0x7ff00000,%r8d
   1400041fe:	74 70                	je     140004270 <__powi+0xe0>
   140004200:	84 c0                	test   %al,%al
   140004202:	75 5b                	jne    14000425f <__powi+0xcf>
   140004204:	66 0f 54 15 54 26 00 	andpd  0x2654(%rip),%xmm2        # 140006860 <.rdata+0x40>
   14000420b:	00 
   14000420c:	41 89 d8             	mov    %ebx,%r8d
   14000420f:	41 83 e0 01          	and    $0x1,%r8d
   140004213:	66 0f 28 f2          	movapd %xmm2,%xmm6
   140004217:	85 db                	test   %ebx,%ebx
   140004219:	0f 88 21 01 00 00    	js     140004340 <__powi+0x1b0>
   14000421f:	83 fb 01             	cmp    $0x1,%ebx
   140004222:	74 2c                	je     140004250 <__powi+0xc0>
   140004224:	66 48 0f 7e c2       	movq   %xmm0,%rdx
   140004229:	f6 c3 01             	test   $0x1,%bl
   14000422c:	74 05                	je     140004233 <__powi+0xa3>
   14000422e:	66 48 0f 7e f2       	movq   %xmm6,%rdx
   140004233:	89 d8                	mov    %ebx,%eax
   140004235:	66 0f 28 c6          	movapd %xmm6,%xmm0
   140004239:	66 48 0f 6e f2       	movq   %rdx,%xmm6
   14000423e:	d1 e8                	shr    %eax
   140004240:	f2 0f 59 c0          	mulsd  %xmm0,%xmm0
   140004244:	a8 01                	test   $0x1,%al
   140004246:	74 04                	je     14000424c <__powi+0xbc>
   140004248:	f2 0f 59 f0          	mulsd  %xmm0,%xmm6
   14000424c:	d1 e8                	shr    %eax
   14000424e:	75 f0                	jne    140004240 <__powi+0xb0>
   140004250:	48 c1 e9 1f          	shr    $0x1f,%rcx
   140004254:	74 09                	je     14000425f <__powi+0xcf>
   140004256:	45 85 c0             	test   %r8d,%r8d
   140004259:	0f 85 21 01 00 00    	jne    140004380 <__powi+0x1f0>
   14000425f:	66 0f 28 c6          	movapd %xmm6,%xmm0
   140004263:	0f 10 74 24 30       	movups 0x30(%rsp),%xmm6
   140004268:	48 83 c4 40          	add    $0x40,%rsp
   14000426c:	5b                   	pop    %rbx
   14000426d:	c3                   	ret    
   14000426e:	66 90                	xchg   %ax,%ax
   140004270:	85 d2                	test   %edx,%edx
   140004272:	0f 84 a0 00 00 00    	je     140004318 <__powi+0x188>
   140004278:	84 c0                	test   %al,%al
   14000427a:	75 e3                	jne    14000425f <__powi+0xcf>
   14000427c:	f2 0f 10 35 ac 25 00 	movsd  0x25ac(%rip),%xmm6        # 140006830 <.rdata+0x10>
   140004283:	00 
   140004284:	85 c9                	test   %ecx,%ecx
   140004286:	79 08                	jns    140004290 <__powi+0x100>
   140004288:	f2 0f 10 35 98 25 00 	movsd  0x2598(%rip),%xmm6        # 140006828 <.rdata+0x8>
   14000428f:	00 
   140004290:	f2 0f 11 54 24 50    	movsd  %xmm2,0x50(%rsp)
   140004296:	e8 dd 03 00 00       	call   140004678 <_errno>
   14000429b:	66 0f ef db          	pxor   %xmm3,%xmm3
   14000429f:	f2 0f 10 54 24 50    	movsd  0x50(%rsp),%xmm2
   1400042a5:	48 8d 15 74 25 00 00 	lea    0x2574(%rip),%rdx        # 140006820 <.rdata>
   1400042ac:	f2 0f 2a db          	cvtsi2sd %ebx,%xmm3
   1400042b0:	c7 00 21 00 00 00    	movl   $0x21,(%rax)
   1400042b6:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400042bb:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400042c1:	e8 6a ed ff ff       	call   140003030 <__mingw_raise_matherr>
   1400042c6:	66 0f 28 c6          	movapd %xmm6,%xmm0
   1400042ca:	0f 10 74 24 30       	movups 0x30(%rsp),%xmm6
   1400042cf:	48 83 c4 40          	add    $0x40,%rsp
   1400042d3:	5b                   	pop    %rbx
   1400042d4:	c3                   	ret    
   1400042d5:	0f 1f 00             	nopl   (%rax)
   1400042d8:	89 da                	mov    %ebx,%edx
   1400042da:	66 0f 28 f0          	movapd %xmm0,%xmm6
   1400042de:	83 e2 01             	and    $0x1,%edx
   1400042e1:	84 c0                	test   %al,%al
   1400042e3:	0f 85 76 ff ff ff    	jne    14000425f <__powi+0xcf>
   1400042e9:	85 db                	test   %ebx,%ebx
   1400042eb:	78 6b                	js     140004358 <__powi+0x1c8>
   1400042ed:	66 0f ef f6          	pxor   %xmm6,%xmm6
   1400042f1:	85 d2                	test   %edx,%edx
   1400042f3:	0f 84 66 ff ff ff    	je     14000425f <__powi+0xcf>
   1400042f9:	f2 0f 10 35 4f 25 00 	movsd  0x254f(%rip),%xmm6        # 140006850 <.rdata+0x30>
   140004300:	00 
   140004301:	85 c9                	test   %ecx,%ecx
   140004303:	0f 88 56 ff ff ff    	js     14000425f <__powi+0xcf>
   140004309:	66 0f ef f6          	pxor   %xmm6,%xmm6
   14000430d:	e9 4d ff ff ff       	jmp    14000425f <__powi+0xcf>
   140004312:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140004318:	84 c0                	test   %al,%al
   14000431a:	0f 85 3f ff ff ff    	jne    14000425f <__powi+0xcf>
   140004320:	85 c9                	test   %ecx,%ecx
   140004322:	78 6c                	js     140004390 <__powi+0x200>
   140004324:	f2 0f 10 35 1c 25 00 	movsd  0x251c(%rip),%xmm6        # 140006848 <.rdata+0x28>
   14000432b:	00 
   14000432c:	85 db                	test   %ebx,%ebx
   14000432e:	0f 89 2b ff ff ff    	jns    14000425f <__powi+0xcf>
   140004334:	eb d3                	jmp    140004309 <__powi+0x179>
   140004336:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000433d:	00 00 00 
   140004340:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140004344:	f7 db                	neg    %ebx
   140004346:	f2 0f 5e ce          	divsd  %xmm6,%xmm1
   14000434a:	66 0f 28 f1          	movapd %xmm1,%xmm6
   14000434e:	e9 cc fe ff ff       	jmp    14000421f <__powi+0x8f>
   140004353:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140004358:	85 d2                	test   %edx,%edx
   14000435a:	74 10                	je     14000436c <__powi+0x1dc>
   14000435c:	f2 0f 10 35 dc 24 00 	movsd  0x24dc(%rip),%xmm6        # 140006840 <.rdata+0x20>
   140004363:	00 
   140004364:	85 c9                	test   %ecx,%ecx
   140004366:	0f 88 f3 fe ff ff    	js     14000425f <__powi+0xcf>
   14000436c:	f2 0f 10 35 d4 24 00 	movsd  0x24d4(%rip),%xmm6        # 140006848 <.rdata+0x28>
   140004373:	00 
   140004374:	e9 e6 fe ff ff       	jmp    14000425f <__powi+0xcf>
   140004379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140004380:	66 0f 57 35 c8 24 00 	xorpd  0x24c8(%rip),%xmm6        # 140006850 <.rdata+0x30>
   140004387:	00 
   140004388:	e9 d2 fe ff ff       	jmp    14000425f <__powi+0xcf>
   14000438d:	0f 1f 00             	nopl   (%rax)
   140004390:	89 da                	mov    %ebx,%edx
   140004392:	83 e2 01             	and    $0x1,%edx
   140004395:	89 d1                	mov    %edx,%ecx
   140004397:	83 f1 01             	xor    $0x1,%ecx
   14000439a:	85 db                	test   %ebx,%ebx
   14000439c:	79 0c                	jns    1400043aa <__powi+0x21a>
   14000439e:	66 0f ef f6          	pxor   %xmm6,%xmm6
   1400043a2:	84 c9                	test   %cl,%cl
   1400043a4:	0f 85 b5 fe ff ff    	jne    14000425f <__powi+0xcf>
   1400043aa:	89 d8                	mov    %ebx,%eax
   1400043ac:	f7 d0                	not    %eax
   1400043ae:	c1 e8 1f             	shr    $0x1f,%eax
   1400043b1:	f6 c3 01             	test   $0x1,%bl
   1400043b4:	74 10                	je     1400043c6 <__powi+0x236>
   1400043b6:	f2 0f 10 35 82 24 00 	movsd  0x2482(%rip),%xmm6        # 140006840 <.rdata+0x20>
   1400043bd:	00 
   1400043be:	84 c0                	test   %al,%al
   1400043c0:	0f 85 99 fe ff ff    	jne    14000425f <__powi+0xcf>
   1400043c6:	84 c9                	test   %cl,%cl
   1400043c8:	74 10                	je     1400043da <__powi+0x24a>
   1400043ca:	f2 0f 10 35 76 24 00 	movsd  0x2476(%rip),%xmm6        # 140006848 <.rdata+0x28>
   1400043d1:	00 
   1400043d2:	84 c0                	test   %al,%al
   1400043d4:	0f 85 85 fe ff ff    	jne    14000425f <__powi+0xcf>
   1400043da:	85 db                	test   %ebx,%ebx
   1400043dc:	78 1d                	js     1400043fb <__powi+0x26b>
   1400043de:	f2 0f 10 35 62 24 00 	movsd  0x2462(%rip),%xmm6        # 140006848 <.rdata+0x28>
   1400043e5:	00 
   1400043e6:	85 d2                	test   %edx,%edx
   1400043e8:	0f 84 71 fe ff ff    	je     14000425f <__powi+0xcf>
   1400043ee:	f2 0f 10 35 4a 24 00 	movsd  0x244a(%rip),%xmm6        # 140006840 <.rdata+0x20>
   1400043f5:	00 
   1400043f6:	e9 64 fe ff ff       	jmp    14000425f <__powi+0xcf>
   1400043fb:	66 0f ef f6          	pxor   %xmm6,%xmm6
   1400043ff:	85 d2                	test   %edx,%edx
   140004401:	0f 84 58 fe ff ff    	je     14000425f <__powi+0xcf>
   140004407:	f2 0f 10 35 41 24 00 	movsd  0x2441(%rip),%xmm6        # 140006850 <.rdata+0x30>
   14000440e:	00 
   14000440f:	e9 4b fe ff ff       	jmp    14000425f <__powi+0xcf>
   140004414:	90                   	nop
   140004415:	90                   	nop
   140004416:	90                   	nop
   140004417:	90                   	nop
   140004418:	90                   	nop
   140004419:	90                   	nop
   14000441a:	90                   	nop
   14000441b:	90                   	nop
   14000441c:	90                   	nop
   14000441d:	90                   	nop
   14000441e:	90                   	nop
   14000441f:	90                   	nop

0000000140004420 <exp2l>:
   140004420:	db 2a                	fldt   (%rdx)
   140004422:	d9 e5                	fxam   
   140004424:	9b df e0             	fstsw  %ax
   140004427:	b6 45                	mov    $0x45,%dh
   140004429:	20 e6                	and    %ah,%dh
   14000442b:	80 fe 05             	cmp    $0x5,%dh
   14000442e:	74 3f                	je     14000446f <exp2l+0x4f>
   140004430:	d9 c0                	fld    %st(0)
   140004432:	48 83 ec 08          	sub    $0x8,%rsp
   140004436:	d9 7c 24 04          	fnstcw 0x4(%rsp)
   14000443a:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
   14000443f:	80 cc 0c             	or     $0xc,%ah
   140004442:	66 89 04 24          	mov    %ax,(%rsp)
   140004446:	d9 2c 24             	fldcw  (%rsp)
   140004449:	d9 fc                	frndint 
   14000444b:	d9 6c 24 04          	fldcw  0x4(%rsp)
   14000444f:	48 83 c4 08          	add    $0x8,%rsp
   140004453:	dc e9                	fsubr  %st,%st(1)
   140004455:	d9 c9                	fxch   %st(1)
   140004457:	d9 f0                	f2xm1  
   140004459:	d9 e8                	fld1   
   14000445b:	de c1                	faddp  %st,%st(1)
   14000445d:	d9 fd                	fscale 
   14000445f:	dd d9                	fstp   %st(1)
   140004461:	48 89 c8             	mov    %rcx,%rax
   140004464:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   14000446b:	00 
   14000446c:	db 39                	fstpt  (%rcx)
   14000446e:	c3                   	ret    
   14000446f:	a9 00 02 00 00       	test   $0x200,%eax
   140004474:	74 04                	je     14000447a <exp2l+0x5a>
   140004476:	dd d8                	fstp   %st(0)
   140004478:	d9 ee                	fldz   
   14000447a:	48 89 c8             	mov    %rcx,%rax
   14000447d:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   140004484:	00 
   140004485:	db 39                	fstpt  (%rcx)
   140004487:	c3                   	ret    
   140004488:	90                   	nop
   140004489:	90                   	nop
   14000448a:	90                   	nop
   14000448b:	90                   	nop
   14000448c:	90                   	nop
   14000448d:	90                   	nop
   14000448e:	90                   	nop
   14000448f:	90                   	nop

0000000140004490 <ldexp>:
   140004490:	48 83 ec 38          	sub    $0x38,%rsp
   140004494:	66 48 0f 7e c0       	movq   %xmm0,%rax
   140004499:	48 89 c1             	mov    %rax,%rcx
   14000449c:	48 c1 e9 20          	shr    $0x20,%rcx
   1400044a0:	41 89 c9             	mov    %ecx,%r9d
   1400044a3:	41 81 e1 ff ff ff 7f 	and    $0x7fffffff,%r9d
   1400044aa:	41 09 c1             	or     %eax,%r9d
   1400044ad:	41 0f 94 c0          	sete   %r8b
   1400044b1:	81 e1 00 00 f0 7f    	and    $0x7ff00000,%ecx
   1400044b7:	41 0f 94 c1          	sete   %r9b
   1400044bb:	45 08 c8             	or     %r9b,%r8b
   1400044be:	75 0c                	jne    1400044cc <ldexp+0x3c>
   1400044c0:	81 f9 00 00 f0 7f    	cmp    $0x7ff00000,%ecx
   1400044c6:	0f 84 8a 00 00 00    	je     140004556 <ldexp+0xc6>
   1400044cc:	66 0f ef c0          	pxor   %xmm0,%xmm0
   1400044d0:	66 48 0f 6e c8       	movq   %rax,%xmm1
   1400044d5:	66 0f 2e c8          	ucomisd %xmm0,%xmm1
   1400044d9:	7a 07                	jp     1400044e2 <ldexp+0x52>
   1400044db:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400044e0:	74 74                	je     140004556 <ldexp+0xc6>
   1400044e2:	66 0f ef d2          	pxor   %xmm2,%xmm2
   1400044e6:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   1400044eb:	dd 44 24 20          	fldl   0x20(%rsp)
   1400044ef:	f2 0f 2a d2          	cvtsi2sd %edx,%xmm2
   1400044f3:	f2 0f 11 54 24 28    	movsd  %xmm2,0x28(%rsp)
   1400044f9:	dd 44 24 28          	fldl   0x28(%rsp)
   1400044fd:	d9 c9                	fxch   %st(1)
   1400044ff:	d9 fd                	fscale 
   140004501:	dd d9                	fstp   %st(1)
   140004503:	dd 5c 24 20          	fstpl  0x20(%rsp)
   140004507:	48 8b 54 24 20       	mov    0x20(%rsp),%rdx
   14000450c:	48 89 d0             	mov    %rdx,%rax
   14000450f:	48 c1 e8 20          	shr    $0x20,%rax
   140004513:	89 c1                	mov    %eax,%ecx
   140004515:	81 e1 ff ff ff 7f    	and    $0x7fffffff,%ecx
   14000451b:	09 d1                	or     %edx,%ecx
   14000451d:	0f 94 c2             	sete   %dl
   140004520:	25 00 00 f0 7f       	and    $0x7ff00000,%eax
   140004525:	0f 94 c1             	sete   %cl
   140004528:	08 ca                	or     %cl,%dl
   14000452a:	75 07                	jne    140004533 <ldexp+0xa3>
   14000452c:	3d 00 00 f0 7f       	cmp    $0x7ff00000,%eax
   140004531:	74 12                	je     140004545 <ldexp+0xb5>
   140004533:	f2 0f 10 5c 24 20    	movsd  0x20(%rsp),%xmm3
   140004539:	66 0f ef c0          	pxor   %xmm0,%xmm0
   14000453d:	66 0f 2e d8          	ucomisd %xmm0,%xmm3
   140004541:	7a 0d                	jp     140004550 <ldexp+0xc0>
   140004543:	75 0b                	jne    140004550 <ldexp+0xc0>
   140004545:	e8 2e 01 00 00       	call   140004678 <_errno>
   14000454a:	c7 00 22 00 00 00    	movl   $0x22,(%rax)
   140004550:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
   140004556:	48 83 c4 38          	add    $0x38,%rsp
   14000455a:	c3                   	ret    
   14000455b:	90                   	nop
   14000455c:	90                   	nop
   14000455d:	90                   	nop
   14000455e:	90                   	nop
   14000455f:	90                   	nop

0000000140004560 <one>:
   140004560:	00 00                	add    %al,(%rax)
   140004562:	00 00                	add    %al,(%rax)
   140004564:	00 00                	add    %al,(%rax)
   140004566:	f0 3f                	lock (bad) 

0000000140004568 <limit>:
   140004568:	8f c2                	pop    %rdx
   14000456a:	f5                   	cmc    
   14000456b:	28 5c 8f d2          	sub    %bl,-0x2e(%rdi,%rcx,4)
   14000456f:	3f                   	(bad)  

0000000140004570 <log2l>:
   140004570:	dd 05 ea ff ff ff    	fldl   -0x16(%rip)        # 140004560 <one>
   140004576:	db 2a                	fldt   (%rdx)
   140004578:	d9 e5                	fxam   
   14000457a:	df e0                	fnstsw %ax
   14000457c:	d9 c0                	fld    %st(0)
   14000457e:	9e                   	sahf   
   14000457f:	72 37                	jb     1400045b8 <log2l+0x48>
   140004581:	d8 e2                	fsub   %st(2),%st
   140004583:	d9 c0                	fld    %st(0)
   140004585:	d9 e1                	fabs   
   140004587:	dc 1d db ff ff ff    	fcompl -0x25(%rip)        # 140004568 <limit>
   14000458d:	df e0                	fnstsw %ax
   14000458f:	80 e4 45             	and    $0x45,%ah
   140004592:	74 12                	je     1400045a6 <log2l+0x36>
   140004594:	dd d9                	fstp   %st(1)
   140004596:	d9 f9                	fyl2xp1 
   140004598:	48 89 c8             	mov    %rcx,%rax
   14000459b:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   1400045a2:	00 
   1400045a3:	db 39                	fstpt  (%rcx)
   1400045a5:	c3                   	ret    
   1400045a6:	dd d8                	fstp   %st(0)
   1400045a8:	d9 f1                	fyl2x  
   1400045aa:	48 89 c8             	mov    %rcx,%rax
   1400045ad:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   1400045b4:	00 
   1400045b5:	db 39                	fstpt  (%rcx)
   1400045b7:	c3                   	ret    
   1400045b8:	7a c7                	jp     140004581 <log2l+0x11>
   1400045ba:	dd d9                	fstp   %st(1)
   1400045bc:	dd d9                	fstp   %st(1)
   1400045be:	48 89 c8             	mov    %rcx,%rax
   1400045c1:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
   1400045c8:	00 
   1400045c9:	db 39                	fstpt  (%rcx)
   1400045cb:	c3                   	ret    
   1400045cc:	90                   	nop
   1400045cd:	90                   	nop
   1400045ce:	90                   	nop
   1400045cf:	90                   	nop

00000001400045d0 <__p__fmode>:
   1400045d0:	48 8b 05 79 23 00 00 	mov    0x2379(%rip),%rax        # 140006950 <.refptr.__imp__fmode>
   1400045d7:	48 8b 00             	mov    (%rax),%rax
   1400045da:	c3                   	ret    
   1400045db:	90                   	nop
   1400045dc:	90                   	nop
   1400045dd:	90                   	nop
   1400045de:	90                   	nop
   1400045df:	90                   	nop

00000001400045e0 <__p__commode>:
   1400045e0:	48 8b 05 59 23 00 00 	mov    0x2359(%rip),%rax        # 140006940 <.refptr.__imp__commode>
   1400045e7:	48 8b 00             	mov    (%rax),%rax
   1400045ea:	c3                   	ret    
   1400045eb:	90                   	nop
   1400045ec:	90                   	nop
   1400045ed:	90                   	nop
   1400045ee:	90                   	nop
   1400045ef:	90                   	nop

00000001400045f0 <__p__acmdln>:
   1400045f0:	48 8b 05 39 23 00 00 	mov    0x2339(%rip),%rax        # 140006930 <.refptr.__imp__acmdln>
   1400045f7:	48 8b 00             	mov    (%rax),%rax
   1400045fa:	c3                   	ret    
   1400045fb:	90                   	nop
   1400045fc:	90                   	nop
   1400045fd:	90                   	nop
   1400045fe:	90                   	nop
   1400045ff:	90                   	nop

0000000140004600 <_get_invalid_parameter_handler>:
   140004600:	48 8b 05 89 5b 00 00 	mov    0x5b89(%rip),%rax        # 14000a190 <handler>
   140004607:	c3                   	ret    
   140004608:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000460f:	00 

0000000140004610 <_set_invalid_parameter_handler>:
   140004610:	48 89 c8             	mov    %rcx,%rax
   140004613:	48 87 05 76 5b 00 00 	xchg   %rax,0x5b76(%rip)        # 14000a190 <handler>
   14000461a:	c3                   	ret    
   14000461b:	90                   	nop
   14000461c:	90                   	nop
   14000461d:	90                   	nop
   14000461e:	90                   	nop
   14000461f:	90                   	nop

0000000140004620 <__acrt_iob_func>:
   140004620:	53                   	push   %rbx
   140004621:	48 83 ec 20          	sub    $0x20,%rsp
   140004625:	89 cb                	mov    %ecx,%ebx
   140004627:	e8 24 00 00 00       	call   140004650 <__iob_func>
   14000462c:	89 d9                	mov    %ebx,%ecx
   14000462e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140004632:	48 c1 e2 04          	shl    $0x4,%rdx
   140004636:	48 01 d0             	add    %rdx,%rax
   140004639:	48 83 c4 20          	add    $0x20,%rsp
   14000463d:	5b                   	pop    %rbx
   14000463e:	c3                   	ret    
   14000463f:	90                   	nop

0000000140004640 <__C_specific_handler>:
   140004640:	ff 25 2a 6c 00 00    	jmp    *0x6c2a(%rip)        # 14000b270 <__imp___C_specific_handler>
   140004646:	90                   	nop
   140004647:	90                   	nop

0000000140004648 <__getmainargs>:
   140004648:	ff 25 2a 6c 00 00    	jmp    *0x6c2a(%rip)        # 14000b278 <__imp___getmainargs>
   14000464e:	90                   	nop
   14000464f:	90                   	nop

0000000140004650 <__iob_func>:
   140004650:	ff 25 32 6c 00 00    	jmp    *0x6c32(%rip)        # 14000b288 <__imp___iob_func>
   140004656:	90                   	nop
   140004657:	90                   	nop

0000000140004658 <__set_app_type>:
   140004658:	ff 25 32 6c 00 00    	jmp    *0x6c32(%rip)        # 14000b290 <__imp___set_app_type>
   14000465e:	90                   	nop
   14000465f:	90                   	nop

0000000140004660 <__setusermatherr>:
   140004660:	ff 25 32 6c 00 00    	jmp    *0x6c32(%rip)        # 14000b298 <__imp___setusermatherr>
   140004666:	90                   	nop
   140004667:	90                   	nop

0000000140004668 <_amsg_exit>:
   140004668:	ff 25 3a 6c 00 00    	jmp    *0x6c3a(%rip)        # 14000b2a8 <__imp__amsg_exit>
   14000466e:	90                   	nop
   14000466f:	90                   	nop

0000000140004670 <_cexit>:
   140004670:	ff 25 3a 6c 00 00    	jmp    *0x6c3a(%rip)        # 14000b2b0 <__imp__cexit>
   140004676:	90                   	nop
   140004677:	90                   	nop

0000000140004678 <_errno>:
   140004678:	ff 25 42 6c 00 00    	jmp    *0x6c42(%rip)        # 14000b2c0 <__imp__errno>
   14000467e:	90                   	nop
   14000467f:	90                   	nop

0000000140004680 <_initterm>:
   140004680:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b2d0 <__imp__initterm>
   140004686:	90                   	nop
   140004687:	90                   	nop

0000000140004688 <_onexit>:
   140004688:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b2d8 <__imp__onexit>
   14000468e:	90                   	nop
   14000468f:	90                   	nop

0000000140004690 <abort>:
   140004690:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b2e0 <__imp_abort>
   140004696:	90                   	nop
   140004697:	90                   	nop

0000000140004698 <calloc>:
   140004698:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b2e8 <__imp_calloc>
   14000469e:	90                   	nop
   14000469f:	90                   	nop

00000001400046a0 <exit>:
   1400046a0:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b2f0 <__imp_exit>
   1400046a6:	90                   	nop
   1400046a7:	90                   	nop

00000001400046a8 <fprintf>:
   1400046a8:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b2f8 <__imp_fprintf>
   1400046ae:	90                   	nop
   1400046af:	90                   	nop

00000001400046b0 <free>:
   1400046b0:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b300 <__imp_free>
   1400046b6:	90                   	nop
   1400046b7:	90                   	nop

00000001400046b8 <fwrite>:
   1400046b8:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b308 <__imp_fwrite>
   1400046be:	90                   	nop
   1400046bf:	90                   	nop

00000001400046c0 <log10>:
   1400046c0:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b310 <__imp_log10>
   1400046c6:	90                   	nop
   1400046c7:	90                   	nop

00000001400046c8 <malloc>:
   1400046c8:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b318 <__imp_malloc>
   1400046ce:	90                   	nop
   1400046cf:	90                   	nop

00000001400046d0 <memcpy>:
   1400046d0:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b320 <__imp_memcpy>
   1400046d6:	90                   	nop
   1400046d7:	90                   	nop

00000001400046d8 <signal>:
   1400046d8:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b328 <__imp_signal>
   1400046de:	90                   	nop
   1400046df:	90                   	nop

00000001400046e0 <strlen>:
   1400046e0:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b330 <__imp_strlen>
   1400046e6:	90                   	nop
   1400046e7:	90                   	nop

00000001400046e8 <strncmp>:
   1400046e8:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b338 <__imp_strncmp>
   1400046ee:	90                   	nop
   1400046ef:	90                   	nop

00000001400046f0 <system>:
   1400046f0:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b340 <__imp_system>
   1400046f6:	90                   	nop
   1400046f7:	90                   	nop

00000001400046f8 <tan>:
   1400046f8:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b348 <__imp_tan>
   1400046fe:	90                   	nop
   1400046ff:	90                   	nop

0000000140004700 <vfprintf>:
   140004700:	ff 25 4a 6c 00 00    	jmp    *0x6c4a(%rip)        # 14000b350 <__imp_vfprintf>
   140004706:	90                   	nop
   140004707:	90                   	nop
   140004708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000470f:	00 

0000000140004710 <VirtualQuery>:
   140004710:	ff 25 4a 6b 00 00    	jmp    *0x6b4a(%rip)        # 14000b260 <__imp_VirtualQuery>
   140004716:	90                   	nop
   140004717:	90                   	nop

0000000140004718 <VirtualProtect>:
   140004718:	ff 25 3a 6b 00 00    	jmp    *0x6b3a(%rip)        # 14000b258 <__imp_VirtualProtect>
   14000471e:	90                   	nop
   14000471f:	90                   	nop

0000000140004720 <TlsGetValue>:
   140004720:	ff 25 2a 6b 00 00    	jmp    *0x6b2a(%rip)        # 14000b250 <__imp_TlsGetValue>
   140004726:	90                   	nop
   140004727:	90                   	nop

0000000140004728 <Sleep>:
   140004728:	ff 25 1a 6b 00 00    	jmp    *0x6b1a(%rip)        # 14000b248 <__imp_Sleep>
   14000472e:	90                   	nop
   14000472f:	90                   	nop

0000000140004730 <SetUnhandledExceptionFilter>:
   140004730:	ff 25 0a 6b 00 00    	jmp    *0x6b0a(%rip)        # 14000b240 <__imp_SetUnhandledExceptionFilter>
   140004736:	90                   	nop
   140004737:	90                   	nop

0000000140004738 <LeaveCriticalSection>:
   140004738:	ff 25 fa 6a 00 00    	jmp    *0x6afa(%rip)        # 14000b238 <__imp_LeaveCriticalSection>
   14000473e:	90                   	nop
   14000473f:	90                   	nop

0000000140004740 <InitializeCriticalSection>:
   140004740:	ff 25 ea 6a 00 00    	jmp    *0x6aea(%rip)        # 14000b230 <__imp_InitializeCriticalSection>
   140004746:	90                   	nop
   140004747:	90                   	nop

0000000140004748 <GetStartupInfoA>:
   140004748:	ff 25 da 6a 00 00    	jmp    *0x6ada(%rip)        # 14000b228 <__imp_GetStartupInfoA>
   14000474e:	90                   	nop
   14000474f:	90                   	nop

0000000140004750 <GetLastError>:
   140004750:	ff 25 ca 6a 00 00    	jmp    *0x6aca(%rip)        # 14000b220 <__imp_GetLastError>
   140004756:	90                   	nop
   140004757:	90                   	nop

0000000140004758 <EnterCriticalSection>:
   140004758:	ff 25 ba 6a 00 00    	jmp    *0x6aba(%rip)        # 14000b218 <__imp_EnterCriticalSection>
   14000475e:	90                   	nop
   14000475f:	90                   	nop

0000000140004760 <DeleteCriticalSection>:
   140004760:	ff 25 aa 6a 00 00    	jmp    *0x6aaa(%rip)        # 14000b210 <__IAT_start__>
   140004766:	90                   	nop
   140004767:	90                   	nop
   140004768:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000476f:	00 

0000000140004770 <_ZSt3powIdiEN9__gnu_cxx11__promote_2IDTplcvNS1_IT_XsrSt12__is_integerIS2_E7__valueEE6__typeELi0EcvNS1_IT0_XsrS3_IS7_E7__valueEE6__typeELi0EEXsrS3_ISB_E7__valueEE6__typeES2_S7_>:
   140004770:	55                   	push   %rbp
   140004771:	48 89 e5             	mov    %rsp,%rbp
   140004774:	48 83 ec 20          	sub    $0x20,%rsp
   140004778:	f2 0f 11 45 10       	movsd  %xmm0,0x10(%rbp)
   14000477d:	89 55 18             	mov    %edx,0x18(%rbp)
   140004780:	66 0f ef c0          	pxor   %xmm0,%xmm0
   140004784:	f2 0f 2a 45 18       	cvtsi2sdl 0x18(%rbp),%xmm0
   140004789:	48 8b 45 10          	mov    0x10(%rbp),%rax
   14000478d:	66 0f 28 c8          	movapd %xmm0,%xmm1
   140004791:	66 48 0f 6e c0       	movq   %rax,%xmm0
   140004796:	e8 15 f3 ff ff       	call   140003ab0 <pow>
   14000479b:	66 48 0f 7e c0       	movq   %xmm0,%rax
   1400047a0:	66 48 0f 6e c0       	movq   %rax,%xmm0
   1400047a5:	48 83 c4 20          	add    $0x20,%rsp
   1400047a9:	5d                   	pop    %rbp
   1400047aa:	c3                   	ret    
   1400047ab:	90                   	nop
   1400047ac:	90                   	nop
   1400047ad:	90                   	nop
   1400047ae:	90                   	nop
   1400047af:	90                   	nop

00000001400047b0 <register_frame_ctor>:
   1400047b0:	e9 5b cd ff ff       	jmp    140001510 <__gcc_register_frame>
   1400047b5:	90                   	nop
   1400047b6:	90                   	nop
   1400047b7:	90                   	nop
   1400047b8:	90                   	nop
   1400047b9:	90                   	nop
   1400047ba:	90                   	nop
   1400047bb:	90                   	nop
   1400047bc:	90                   	nop
   1400047bd:	90                   	nop
   1400047be:	90                   	nop
   1400047bf:	90                   	nop

00000001400047c0 <__CTOR_LIST__>:
   1400047c0:	ff                   	(bad)  
   1400047c1:	ff                   	(bad)  
   1400047c2:	ff                   	(bad)  
   1400047c3:	ff                   	(bad)  
   1400047c4:	ff                   	(bad)  
   1400047c5:	ff                   	(bad)  
   1400047c6:	ff                   	(bad)  
   1400047c7:	ff                   	.byte 0xff

00000001400047c8 <.ctors>:
   1400047c8:	b1 27                	mov    $0x27,%cl
   1400047ca:	00 40 01             	add    %al,0x1(%rax)
   1400047cd:	00 00                	add    %al,(%rax)
	...

00000001400047d0 <.ctors.65535>:
   1400047d0:	b0 47                	mov    $0x47,%al
   1400047d2:	00 40 01             	add    %al,0x1(%rax)
	...

00000001400047e0 <__DTOR_LIST__>:
   1400047e0:	ff                   	(bad)  
   1400047e1:	ff                   	(bad)  
   1400047e2:	ff                   	(bad)  
   1400047e3:	ff                   	(bad)  
   1400047e4:	ff                   	(bad)  
   1400047e5:	ff                   	(bad)  
   1400047e6:	ff                   	(bad)  
   1400047e7:	ff 00                	incl   (%rax)
   1400047e9:	00 00                	add    %al,(%rax)
   1400047eb:	00 00                	add    %al,(%rax)
   1400047ed:	00 00                	add    %al,(%rax)
	...
