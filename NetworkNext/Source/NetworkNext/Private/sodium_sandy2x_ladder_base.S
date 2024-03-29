#ifdef IN_SANDY2X

#include "sodium_sandy2x_ladder_base_namespace.h"
#include "sodium_sandy2x_consts_namespace.h"
.p2align 5

#ifdef ASM_HIDE_SYMBOL
ASM_HIDE_SYMBOL ladder_base
ASM_HIDE_SYMBOL _ladder_base
#endif
.globl ladder_base
.globl _ladder_base
#ifdef __ELF__
.type  ladder_base, @function
.type _ladder_base, @function
#endif
ladder_base:
_ladder_base:

mov %rsp,%r11
and $31,%r11
add $1568,%r11
sub %r11,%rsp
movq %r11,1536(%rsp)
movq %r12,1544(%rsp)
movq %r13,1552(%rsp)
vmovdqa v0_0(%rip),%xmm0
vmovdqa v1_0(%rip),%xmm1
vmovdqa v9_0(%rip),%xmm2
vmovdqa %xmm2,0(%rsp)
vmovdqa %xmm0,16(%rsp)
vmovdqa %xmm0,32(%rsp)
vmovdqa %xmm0,48(%rsp)
vmovdqa %xmm0,64(%rsp)
vmovdqa %xmm1,80(%rsp)
vmovdqa %xmm0,96(%rsp)
vmovdqa %xmm0,112(%rsp)
vmovdqa %xmm0,128(%rsp)
vmovdqa %xmm0,144(%rsp)
vmovdqa %xmm1,%xmm0
vpxor %xmm1,%xmm1,%xmm1
vpxor %xmm2,%xmm2,%xmm2
vpxor %xmm3,%xmm3,%xmm3
vpxor %xmm4,%xmm4,%xmm4
vpxor %xmm5,%xmm5,%xmm5
vpxor %xmm6,%xmm6,%xmm6
vpxor %xmm7,%xmm7,%xmm7
vpxor %xmm8,%xmm8,%xmm8
vpxor %xmm9,%xmm9,%xmm9
movq   0(%rsi),%rdx
movq   8(%rsi),%rcx
movq   16(%rsi),%r8
movq   24(%rsi),%r9
shrd $1,%rcx,%rdx
shrd $1,%r8,%rcx
shrd $1,%r9,%r8
shr  $1,%r9
xorq 0(%rsi),%rdx
xorq 8(%rsi),%rcx
xorq 16(%rsi),%r8
xorq 24(%rsi),%r9
leaq 512(%rsp),%rsi
mov  $64,%rax

.p2align 4
._ladder_base_small_loop:
mov  %rdx,%r10
mov  %rcx,%r11
mov  %r8,%r12
mov  %r9,%r13
shr  $1,%rdx
shr  $1,%rcx
shr  $1,%r8
shr  $1,%r9
and  $1,%r10d
and  $1,%r11d
and  $1,%r12d
and  $1,%r13d
neg  %r10
neg  %r11
neg  %r12
neg  %r13
movl   %r10d,0(%rsi)
movl   %r11d,256(%rsi)
movl   %r12d,512(%rsi)
movl   %r13d,768(%rsi)
add  $4,%rsi
sub  $1,%rax
jne ._ladder_base_small_loop
mov  $255,%rdx
add  $760,%rsi

.p2align 4
._ladder_base_loop:
sub  $1,%rdx
vbroadcastss 0(%rsi),%xmm10
sub  $4,%rsi
vmovdqa 0(%rsp),%xmm11
vmovdqa 80(%rsp),%xmm12
vpxor %xmm11,%xmm0,%xmm13
vpand %xmm10,%xmm13,%xmm13
vpxor %xmm13,%xmm0,%xmm0
vpxor %xmm13,%xmm11,%xmm11
vpxor %xmm12,%xmm1,%xmm13
vpand %xmm10,%xmm13,%xmm13
vpxor %xmm13,%xmm1,%xmm1
vpxor %xmm13,%xmm12,%xmm12
vmovdqa 16(%rsp),%xmm13
vmovdqa 96(%rsp),%xmm14
vpxor %xmm13,%xmm2,%xmm15
vpand %xmm10,%xmm15,%xmm15
vpxor %xmm15,%xmm2,%xmm2
vpxor %xmm15,%xmm13,%xmm13
vpxor %xmm14,%xmm3,%xmm15
vpand %xmm10,%xmm15,%xmm15
vpxor %xmm15,%xmm3,%xmm3
vpxor %xmm15,%xmm14,%xmm14
vmovdqa %xmm13,0(%rsp)
vmovdqa %xmm14,16(%rsp)
vmovdqa 32(%rsp),%xmm13
vmovdqa 112(%rsp),%xmm14
vpxor %xmm13,%xmm4,%xmm15
vpand %xmm10,%xmm15,%xmm15
vpxor %xmm15,%xmm4,%xmm4
vpxor %xmm15,%xmm13,%xmm13
vpxor %xmm14,%xmm5,%xmm15
vpand %xmm10,%xmm15,%xmm15
vpxor %xmm15,%xmm5,%xmm5
vpxor %xmm15,%xmm14,%xmm14
vmovdqa %xmm13,32(%rsp)
vmovdqa %xmm14,80(%rsp)
vmovdqa 48(%rsp),%xmm13
vmovdqa 128(%rsp),%xmm14
vpxor %xmm13,%xmm6,%xmm15
vpand %xmm10,%xmm15,%xmm15
vpxor %xmm15,%xmm6,%xmm6
vpxor %xmm15,%xmm13,%xmm13
vpxor %xmm14,%xmm7,%xmm15
vpand %xmm10,%xmm15,%xmm15
vpxor %xmm15,%xmm7,%xmm7
vpxor %xmm15,%xmm14,%xmm14
vmovdqa %xmm13,48(%rsp)
vmovdqa %xmm14,96(%rsp)
vmovdqa 64(%rsp),%xmm13
vmovdqa 144(%rsp),%xmm14
vpxor %xmm13,%xmm8,%xmm15
vpand %xmm10,%xmm15,%xmm15
vpxor %xmm15,%xmm8,%xmm8
vpxor %xmm15,%xmm13,%xmm13
vpxor %xmm14,%xmm9,%xmm15
vpand %xmm10,%xmm15,%xmm15
vpxor %xmm15,%xmm9,%xmm9
vpxor %xmm15,%xmm14,%xmm14
vmovdqa %xmm13,64(%rsp)
vmovdqa %xmm14,112(%rsp)
vpaddq subc0(%rip),%xmm11,%xmm10
vpsubq %xmm12,%xmm10,%xmm10
vpaddq %xmm12,%xmm11,%xmm11
vpunpckhqdq %xmm10,%xmm11,%xmm12
vpunpcklqdq %xmm10,%xmm11,%xmm10
vpaddq %xmm1,%xmm0,%xmm11
vpaddq subc0(%rip),%xmm0,%xmm0
vpsubq %xmm1,%xmm0,%xmm0
vpunpckhqdq %xmm11,%xmm0,%xmm1
vpunpcklqdq %xmm11,%xmm0,%xmm0
vpmuludq %xmm0,%xmm10,%xmm11
vpmuludq %xmm1,%xmm10,%xmm13
vmovdqa %xmm1,128(%rsp)
vpaddq %xmm1,%xmm1,%xmm1
vpmuludq %xmm0,%xmm12,%xmm14
vmovdqa %xmm0,144(%rsp)
vpaddq %xmm14,%xmm13,%xmm13
vpmuludq %xmm1,%xmm12,%xmm0
vmovdqa %xmm1,160(%rsp)
vpaddq %xmm3,%xmm2,%xmm1
vpaddq subc2(%rip),%xmm2,%xmm2
vpsubq %xmm3,%xmm2,%xmm2
vpunpckhqdq %xmm1,%xmm2,%xmm3
vpunpcklqdq %xmm1,%xmm2,%xmm1
vpmuludq %xmm1,%xmm10,%xmm2
vpaddq %xmm2,%xmm0,%xmm0
vpmuludq %xmm3,%xmm10,%xmm2
vmovdqa %xmm3,176(%rsp)
vpaddq %xmm3,%xmm3,%xmm3
vpmuludq %xmm1,%xmm12,%xmm14
vmovdqa %xmm1,192(%rsp)
vpaddq %xmm14,%xmm2,%xmm2
vpmuludq %xmm3,%xmm12,%xmm1
vmovdqa %xmm3,208(%rsp)
vpaddq %xmm5,%xmm4,%xmm3
vpaddq subc2(%rip),%xmm4,%xmm4
vpsubq %xmm5,%xmm4,%xmm4
vpunpckhqdq %xmm3,%xmm4,%xmm5
vpunpcklqdq %xmm3,%xmm4,%xmm3
vpmuludq %xmm3,%xmm10,%xmm4
vpaddq %xmm4,%xmm1,%xmm1
vpmuludq %xmm5,%xmm10,%xmm4
vmovdqa %xmm5,224(%rsp)
vpaddq %xmm5,%xmm5,%xmm5
vpmuludq %xmm3,%xmm12,%xmm14
vmovdqa %xmm3,240(%rsp)
vpaddq %xmm14,%xmm4,%xmm4
vpaddq %xmm7,%xmm6,%xmm3
vpaddq subc2(%rip),%xmm6,%xmm6
vpsubq %xmm7,%xmm6,%xmm6
vpunpckhqdq %xmm3,%xmm6,%xmm7
vpunpcklqdq %xmm3,%xmm6,%xmm3
vpmuludq %xmm3,%xmm10,%xmm6
vpmuludq %xmm5,%xmm12,%xmm14
vmovdqa %xmm5,256(%rsp)
vpmuludq v19_19(%rip),%xmm5,%xmm5
vmovdqa %xmm5,272(%rsp)
vpaddq %xmm14,%xmm6,%xmm6
vpmuludq %xmm7,%xmm10,%xmm5
vmovdqa %xmm7,288(%rsp)
vpaddq %xmm7,%xmm7,%xmm7
vpmuludq %xmm3,%xmm12,%xmm14
vmovdqa %xmm3,304(%rsp)
vpaddq %xmm14,%xmm5,%xmm5
vpmuludq v19_19(%rip),%xmm3,%xmm3
vmovdqa %xmm3,320(%rsp)
vpaddq %xmm9,%xmm8,%xmm3
vpaddq subc2(%rip),%xmm8,%xmm8
vpsubq %xmm9,%xmm8,%xmm8
vpunpckhqdq %xmm3,%xmm8,%xmm9
vpunpcklqdq %xmm3,%xmm8,%xmm3
vmovdqa %xmm3,336(%rsp)
vpmuludq %xmm7,%xmm12,%xmm8
vmovdqa %xmm7,352(%rsp)
vpmuludq v19_19(%rip),%xmm7,%xmm7
vmovdqa %xmm7,368(%rsp)
vpmuludq %xmm3,%xmm10,%xmm7
vpaddq %xmm7,%xmm8,%xmm8
vpmuludq %xmm9,%xmm10,%xmm7
vmovdqa %xmm9,384(%rsp)
vpaddq %xmm9,%xmm9,%xmm9
vpmuludq %xmm3,%xmm12,%xmm10
vpaddq %xmm10,%xmm7,%xmm7
vpmuludq v19_19(%rip),%xmm3,%xmm3
vmovdqa %xmm3,400(%rsp)
vpmuludq v19_19(%rip),%xmm12,%xmm12
vpmuludq %xmm9,%xmm12,%xmm3
vmovdqa %xmm9,416(%rsp)
vpaddq %xmm3,%xmm11,%xmm11
vmovdqa 0(%rsp),%xmm3
vmovdqa 16(%rsp),%xmm9
vpaddq subc2(%rip),%xmm3,%xmm10
vpsubq %xmm9,%xmm10,%xmm10
vpaddq %xmm9,%xmm3,%xmm3
vpunpckhqdq %xmm10,%xmm3,%xmm9
vpunpcklqdq %xmm10,%xmm3,%xmm3
vpmuludq 144(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm0,%xmm0
vpmuludq 128(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm2,%xmm2
vpmuludq 192(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm1,%xmm1
vpmuludq 176(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm4,%xmm4
vpmuludq 240(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm6,%xmm6
vpmuludq 224(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm5,%xmm5
vpmuludq 304(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm8,%xmm8
vpmuludq 288(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm7,%xmm7
vpmuludq v19_19(%rip),%xmm3,%xmm3
vpmuludq 336(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm11,%xmm11
vpmuludq 384(%rsp),%xmm3,%xmm3
vpaddq %xmm3,%xmm13,%xmm13
vpmuludq 144(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm2,%xmm2
vpmuludq 160(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm1,%xmm1
vpmuludq 192(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm4,%xmm4
vpmuludq 208(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm6,%xmm6
vpmuludq 240(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm5,%xmm5
vpmuludq 256(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm8,%xmm8
vpmuludq 304(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm7,%xmm7
vpmuludq v19_19(%rip),%xmm9,%xmm9
vpmuludq 352(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm11,%xmm11
vpmuludq 336(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm13,%xmm13
vpmuludq 416(%rsp),%xmm9,%xmm9
vpaddq %xmm9,%xmm0,%xmm0
vmovdqa 32(%rsp),%xmm3
vmovdqa 80(%rsp),%xmm9
vpaddq subc2(%rip),%xmm3,%xmm10
vpsubq %xmm9,%xmm10,%xmm10
vpaddq %xmm9,%xmm3,%xmm3
vpunpckhqdq %xmm10,%xmm3,%xmm9
vpunpcklqdq %xmm10,%xmm3,%xmm3
vpmuludq 144(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm1,%xmm1
vpmuludq 128(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm4,%xmm4
vpmuludq 192(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm6,%xmm6
vpmuludq 176(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm5,%xmm5
vpmuludq 240(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm8,%xmm8
vpmuludq 224(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm7,%xmm7
vpmuludq v19_19(%rip),%xmm3,%xmm3
vpmuludq 304(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm11,%xmm11
vpmuludq 288(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm13,%xmm13
vpmuludq 336(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm0,%xmm0
vpmuludq 384(%rsp),%xmm3,%xmm3
vpaddq %xmm3,%xmm2,%xmm2
vpmuludq 144(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm4,%xmm4
vpmuludq 160(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm6,%xmm6
vpmuludq 192(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm5,%xmm5
vpmuludq 208(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm8,%xmm8
vpmuludq 240(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm7,%xmm7
vpmuludq v19_19(%rip),%xmm9,%xmm9
vpmuludq 256(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm11,%xmm11
vpmuludq 304(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm13,%xmm13
vpmuludq 352(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm0,%xmm0
vpmuludq 336(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm2,%xmm2
vpmuludq 416(%rsp),%xmm9,%xmm9
vpaddq %xmm9,%xmm1,%xmm1
vmovdqa 48(%rsp),%xmm3
vmovdqa 96(%rsp),%xmm9
vpaddq subc2(%rip),%xmm3,%xmm10
vpsubq %xmm9,%xmm10,%xmm10
vpaddq %xmm9,%xmm3,%xmm3
vpunpckhqdq %xmm10,%xmm3,%xmm9
vpunpcklqdq %xmm10,%xmm3,%xmm3
vpmuludq 144(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm6,%xmm6
vpmuludq 128(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm5,%xmm5
vpmuludq 192(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm8,%xmm8
vpmuludq 176(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm7,%xmm7
vpmuludq v19_19(%rip),%xmm3,%xmm3
vpmuludq 240(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm11,%xmm11
vpmuludq 224(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm13,%xmm13
vpmuludq 304(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm0,%xmm0
vpmuludq 288(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm2,%xmm2
vpmuludq 336(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm1,%xmm1
vpmuludq 384(%rsp),%xmm3,%xmm3
vpaddq %xmm3,%xmm4,%xmm4
vpmuludq 144(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm5,%xmm5
vpmuludq 160(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm8,%xmm8
vpmuludq 192(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm7,%xmm7
vpmuludq v19_19(%rip),%xmm9,%xmm9
vpmuludq 208(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm11,%xmm11
vpmuludq 240(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm13,%xmm13
vpmuludq 256(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm0,%xmm0
vpmuludq 304(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm2,%xmm2
vpmuludq 352(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm1,%xmm1
vpmuludq 336(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm4,%xmm4
vpmuludq 416(%rsp),%xmm9,%xmm9
vpaddq %xmm9,%xmm6,%xmm6
vmovdqa 64(%rsp),%xmm3
vmovdqa 112(%rsp),%xmm9
vpaddq subc2(%rip),%xmm3,%xmm10
vpsubq %xmm9,%xmm10,%xmm10
vpaddq %xmm9,%xmm3,%xmm3
vpunpckhqdq %xmm10,%xmm3,%xmm9
vpunpcklqdq %xmm10,%xmm3,%xmm3
vpmuludq 144(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm8,%xmm8
vpmuludq 128(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm7,%xmm7
vpmuludq v19_19(%rip),%xmm3,%xmm3
vpmuludq 192(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm11,%xmm11
vpmuludq 176(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm13,%xmm13
vpmuludq 240(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm0,%xmm0
vpmuludq 224(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm2,%xmm2
vpmuludq 304(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm1,%xmm1
vpmuludq 288(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm4,%xmm4
vpmuludq 336(%rsp),%xmm3,%xmm10
vpaddq %xmm10,%xmm6,%xmm6
vpmuludq 384(%rsp),%xmm3,%xmm3
vpaddq %xmm3,%xmm5,%xmm5
vpmuludq 144(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm7,%xmm7
vpmuludq v19_19(%rip),%xmm9,%xmm9
vpmuludq 160(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm11,%xmm11
vpmuludq 192(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm13,%xmm13
vpmuludq 208(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm0,%xmm0
vpmuludq 240(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm2,%xmm2
vpmuludq 256(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm1,%xmm1
vpmuludq 304(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm4,%xmm4
vpmuludq 352(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm6,%xmm6
vpmuludq 336(%rsp),%xmm9,%xmm3
vpaddq %xmm3,%xmm5,%xmm5
vpmuludq 416(%rsp),%xmm9,%xmm9
vpaddq %xmm9,%xmm8,%xmm8
vpsrlq $25,%xmm4,%xmm3
vpaddq %xmm3,%xmm6,%xmm6
vpand m25(%rip),%xmm4,%xmm4
vpsrlq $26,%xmm11,%xmm3
vpaddq %xmm3,%xmm13,%xmm13
vpand m26(%rip),%xmm11,%xmm11
vpsrlq $26,%xmm6,%xmm3
vpaddq %xmm3,%xmm5,%xmm5
vpand m26(%rip),%xmm6,%xmm6
vpsrlq $25,%xmm13,%xmm3
vpaddq %xmm3,%xmm0,%xmm0
vpand m25(%rip),%xmm13,%xmm13
vpsrlq $25,%xmm5,%xmm3
vpaddq %xmm3,%xmm8,%xmm8
vpand m25(%rip),%xmm5,%xmm5
vpsrlq $26,%xmm0,%xmm3
vpaddq %xmm3,%xmm2,%xmm2
vpand m26(%rip),%xmm0,%xmm0
vpsrlq $26,%xmm8,%xmm3
vpaddq %xmm3,%xmm7,%xmm7
vpand m26(%rip),%xmm8,%xmm8
vpsrlq $25,%xmm2,%xmm3
vpaddq %xmm3,%xmm1,%xmm1
vpand m25(%rip),%xmm2,%xmm2
vpsrlq $25,%xmm7,%xmm3
vpsllq $4,%xmm3,%xmm9
vpaddq %xmm3,%xmm11,%xmm11
vpsllq $1,%xmm3,%xmm3
vpaddq %xmm3,%xmm9,%xmm9
vpaddq %xmm9,%xmm11,%xmm11
vpand m25(%rip),%xmm7,%xmm7
vpsrlq $26,%xmm1,%xmm3
vpaddq %xmm3,%xmm4,%xmm4
vpand m26(%rip),%xmm1,%xmm1
vpsrlq $26,%xmm11,%xmm3
vpaddq %xmm3,%xmm13,%xmm13
vpand m26(%rip),%xmm11,%xmm11
vpsrlq $25,%xmm4,%xmm3
vpaddq %xmm3,%xmm6,%xmm6
vpand m25(%rip),%xmm4,%xmm4
vpunpcklqdq %xmm13,%xmm11,%xmm3
vpunpckhqdq %xmm13,%xmm11,%xmm9
vpaddq subc0(%rip),%xmm9,%xmm10
vpsubq %xmm3,%xmm10,%xmm10
vpaddq %xmm9,%xmm3,%xmm3
vpunpckhqdq %xmm3,%xmm10,%xmm9
vpunpcklqdq %xmm3,%xmm10,%xmm10
vpmuludq %xmm10,%xmm10,%xmm3
vpaddq %xmm10,%xmm10,%xmm10
vpmuludq %xmm9,%xmm10,%xmm11
vpunpcklqdq %xmm2,%xmm0,%xmm12
vpunpckhqdq %xmm2,%xmm0,%xmm0
vpaddq subc2(%rip),%xmm0,%xmm2
vpsubq %xmm12,%xmm2,%xmm2
vpaddq %xmm0,%xmm12,%xmm12
vpunpckhqdq %xmm12,%xmm2,%xmm0
vpunpcklqdq %xmm12,%xmm2,%xmm2
vpmuludq %xmm2,%xmm10,%xmm12
vpaddq %xmm9,%xmm9,%xmm13
vpmuludq %xmm13,%xmm9,%xmm9
vpaddq %xmm9,%xmm12,%xmm12
vpmuludq %xmm0,%xmm10,%xmm9
vpmuludq %xmm2,%xmm13,%xmm14
vpaddq %xmm14,%xmm9,%xmm9
vpunpcklqdq %xmm4,%xmm1,%xmm14
vpunpckhqdq %xmm4,%xmm1,%xmm1
vpaddq subc2(%rip),%xmm1,%xmm4
vpsubq %xmm14,%xmm4,%xmm4
vpaddq %xmm1,%xmm14,%xmm14
vpunpckhqdq %xmm14,%xmm4,%xmm1
vpunpcklqdq %xmm14,%xmm4,%xmm4
vmovdqa %xmm1,0(%rsp)
vpaddq %xmm1,%xmm1,%xmm1
vmovdqa %xmm1,16(%rsp)
vpmuludq v19_19(%rip),%xmm1,%xmm1
vmovdqa %xmm1,32(%rsp)
vpmuludq %xmm4,%xmm10,%xmm1
vpmuludq %xmm2,%xmm2,%xmm14
vpaddq %xmm14,%xmm1,%xmm1
vpmuludq 0(%rsp),%xmm10,%xmm14
vpmuludq %xmm4,%xmm13,%xmm15
vpaddq %xmm15,%xmm14,%xmm14
vpunpcklqdq %xmm5,%xmm6,%xmm15
vpunpckhqdq %xmm5,%xmm6,%xmm5
vpaddq subc2(%rip),%xmm5,%xmm6
vpsubq %xmm15,%xmm6,%xmm6
vpaddq %xmm5,%xmm15,%xmm15
vpunpckhqdq %xmm15,%xmm6,%xmm5
vpunpcklqdq %xmm15,%xmm6,%xmm6
vmovdqa %xmm6,48(%rsp)
vpmuludq v19_19(%rip),%xmm6,%xmm6
vmovdqa %xmm6,64(%rsp)
vmovdqa %xmm5,80(%rsp)
vpmuludq v38_38(%rip),%xmm5,%xmm5
vmovdqa %xmm5,96(%rsp)
vpmuludq 48(%rsp),%xmm10,%xmm5
vpaddq %xmm0,%xmm0,%xmm6
vpmuludq %xmm6,%xmm0,%xmm0
vpaddq %xmm0,%xmm5,%xmm5
vpmuludq 80(%rsp),%xmm10,%xmm0
vpmuludq %xmm4,%xmm6,%xmm15
vpaddq %xmm15,%xmm0,%xmm0
vpmuludq %xmm6,%xmm13,%xmm15
vpaddq %xmm15,%xmm1,%xmm1
vpmuludq %xmm6,%xmm2,%xmm15
vpaddq %xmm15,%xmm14,%xmm14
vpunpcklqdq %xmm7,%xmm8,%xmm15
vpunpckhqdq %xmm7,%xmm8,%xmm7
vpaddq subc2(%rip),%xmm7,%xmm8
vpsubq %xmm15,%xmm8,%xmm8
vpaddq %xmm7,%xmm15,%xmm15
vpunpckhqdq %xmm15,%xmm8,%xmm7
vpunpcklqdq %xmm15,%xmm8,%xmm8
vmovdqa %xmm8,112(%rsp)
vpmuludq v19_19(%rip),%xmm8,%xmm8
vmovdqa %xmm8,160(%rsp)
vpmuludq 112(%rsp),%xmm10,%xmm8
vpmuludq %xmm7,%xmm10,%xmm10
vpmuludq v38_38(%rip),%xmm7,%xmm15
vpmuludq %xmm15,%xmm7,%xmm7
vpaddq %xmm7,%xmm8,%xmm8
vpmuludq %xmm15,%xmm13,%xmm7
vpaddq %xmm7,%xmm3,%xmm3
vpmuludq %xmm15,%xmm2,%xmm7
vpaddq %xmm7,%xmm11,%xmm11
vpmuludq 80(%rsp),%xmm13,%xmm7
vpaddq %xmm7,%xmm7,%xmm7
vpaddq %xmm7,%xmm8,%xmm8
vpmuludq 16(%rsp),%xmm13,%xmm7
vpaddq %xmm7,%xmm5,%xmm5
vpmuludq 48(%rsp),%xmm13,%xmm7
vpaddq %xmm7,%xmm0,%xmm0
vpmuludq 112(%rsp),%xmm13,%xmm7
vpaddq %xmm7,%xmm10,%xmm10
vpmuludq %xmm15,%xmm6,%xmm7
vpaddq %xmm7,%xmm12,%xmm12
vpmuludq %xmm15,%xmm4,%xmm7
vpaddq %xmm7,%xmm9,%xmm9
vpaddq %xmm2,%xmm2,%xmm2
vpmuludq %xmm4,%xmm2,%xmm7
vpaddq %xmm7,%xmm5,%xmm5
vpmuludq 160(%rsp),%xmm2,%xmm7
vpaddq %xmm7,%xmm3,%xmm3
vpmuludq 160(%rsp),%xmm6,%xmm7
vpaddq %xmm7,%xmm11,%xmm11
vpmuludq 0(%rsp),%xmm2,%xmm7
vpaddq %xmm7,%xmm0,%xmm0
vpmuludq 48(%rsp),%xmm2,%xmm7
vpaddq %xmm7,%xmm8,%xmm8
vpmuludq 80(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpmuludq 96(%rsp),%xmm4,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpmuludq %xmm4,%xmm4,%xmm2
vpaddq %xmm2,%xmm8,%xmm8
vpaddq %xmm4,%xmm4,%xmm2
vpmuludq 160(%rsp),%xmm2,%xmm4
vpaddq %xmm4,%xmm12,%xmm12
vpmuludq 16(%rsp),%xmm15,%xmm4
vpaddq %xmm4,%xmm1,%xmm1
vpmuludq 48(%rsp),%xmm15,%xmm4
vpaddq %xmm4,%xmm14,%xmm14
vpmuludq 96(%rsp),%xmm6,%xmm4
vpaddq %xmm4,%xmm3,%xmm3
vmovdqa 16(%rsp),%xmm4
vpmuludq 160(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm9,%xmm9
vpmuludq 16(%rsp),%xmm6,%xmm4
vpaddq %xmm4,%xmm8,%xmm8
vpmuludq 48(%rsp),%xmm6,%xmm4
vpaddq %xmm4,%xmm10,%xmm10
vpmuludq 80(%rsp),%xmm15,%xmm4
vpaddq %xmm4,%xmm4,%xmm4
vpaddq %xmm4,%xmm5,%xmm5
vpmuludq 112(%rsp),%xmm15,%xmm4
vpaddq %xmm4,%xmm0,%xmm0
vmovdqa 48(%rsp),%xmm4
vpaddq %xmm4,%xmm4,%xmm4
vpmuludq 160(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm1,%xmm1
vmovdqa 80(%rsp),%xmm4
vpaddq %xmm4,%xmm4,%xmm4
vpmuludq 160(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm14,%xmm14
vpmuludq 64(%rsp),%xmm2,%xmm4
vpaddq %xmm4,%xmm3,%xmm3
vmovdqa 16(%rsp),%xmm4
vpmuludq 64(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm11,%xmm11
vmovdqa 16(%rsp),%xmm4
vpmuludq 96(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm12,%xmm12
vmovdqa 48(%rsp),%xmm4
vpmuludq 96(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm9,%xmm9
vpmuludq 0(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vmovdqa 32(%rsp),%xmm2
vpmuludq 0(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm3,%xmm3
vmovdqa 64(%rsp),%xmm2
vpmuludq 48(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vmovdqa 96(%rsp),%xmm2
vpmuludq 80(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm1,%xmm1
vmovdqa 160(%rsp),%xmm2
vpmuludq 112(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vpsrlq $26,%xmm3,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpand m26(%rip),%xmm3,%xmm3
vpsrlq $25,%xmm14,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vpand m25(%rip),%xmm14,%xmm14
vpsrlq $25,%xmm11,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vpand m25(%rip),%xmm11,%xmm11
vpsrlq $26,%xmm5,%xmm2
vpaddq %xmm2,%xmm0,%xmm0
vpand m26(%rip),%xmm5,%xmm5
vpsrlq $26,%xmm12,%xmm2
vpaddq %xmm2,%xmm9,%xmm9
vpand m26(%rip),%xmm12,%xmm12
vpsrlq $25,%xmm0,%xmm2
vpaddq %xmm2,%xmm8,%xmm8
vpand m25(%rip),%xmm0,%xmm0
vpsrlq $25,%xmm9,%xmm2
vpaddq %xmm2,%xmm1,%xmm1
vpand m25(%rip),%xmm9,%xmm9
vpsrlq $26,%xmm8,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpand m26(%rip),%xmm8,%xmm8
vpsrlq $26,%xmm1,%xmm2
vpaddq %xmm2,%xmm14,%xmm14
vpand m26(%rip),%xmm1,%xmm1
vpsrlq $25,%xmm10,%xmm2
vpsllq $4,%xmm2,%xmm4
vpaddq %xmm2,%xmm3,%xmm3
vpsllq $1,%xmm2,%xmm2
vpaddq %xmm2,%xmm4,%xmm4
vpaddq %xmm4,%xmm3,%xmm3
vpand m25(%rip),%xmm10,%xmm10
vpsrlq $25,%xmm14,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vpand m25(%rip),%xmm14,%xmm14
vpsrlq $26,%xmm3,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpand m26(%rip),%xmm3,%xmm3
vpunpckhqdq %xmm11,%xmm3,%xmm2
vmovdqa %xmm2,0(%rsp)
vpunpcklqdq %xmm11,%xmm3,%xmm2
vpmuludq v9_9(%rip),%xmm2,%xmm2
vmovdqa %xmm2,80(%rsp)
vpunpckhqdq %xmm9,%xmm12,%xmm2
vmovdqa %xmm2,16(%rsp)
vpunpcklqdq %xmm9,%xmm12,%xmm2
vpmuludq v9_9(%rip),%xmm2,%xmm2
vmovdqa %xmm2,96(%rsp)
vpunpckhqdq %xmm14,%xmm1,%xmm2
vmovdqa %xmm2,32(%rsp)
vpunpcklqdq %xmm14,%xmm1,%xmm1
vpmuludq v9_9(%rip),%xmm1,%xmm1
vmovdqa %xmm1,112(%rsp)
vpunpckhqdq %xmm0,%xmm5,%xmm1
vmovdqa %xmm1,48(%rsp)
vpunpcklqdq %xmm0,%xmm5,%xmm0
vpmuludq v9_9(%rip),%xmm0,%xmm0
vmovdqa %xmm0,160(%rsp)
vpunpckhqdq %xmm10,%xmm8,%xmm0
vmovdqa %xmm0,64(%rsp)
vpunpcklqdq %xmm10,%xmm8,%xmm0
vpmuludq v9_9(%rip),%xmm0,%xmm0
vmovdqa %xmm0,208(%rsp)
vmovdqa 144(%rsp),%xmm0
vpmuludq %xmm0,%xmm0,%xmm1
vpaddq %xmm0,%xmm0,%xmm0
vmovdqa 128(%rsp),%xmm2
vpmuludq %xmm2,%xmm0,%xmm3
vmovdqa 192(%rsp),%xmm4
vpmuludq %xmm4,%xmm0,%xmm5
vmovdqa 176(%rsp),%xmm6
vpmuludq %xmm6,%xmm0,%xmm7
vmovdqa 240(%rsp),%xmm8
vpmuludq %xmm8,%xmm0,%xmm9
vpmuludq 224(%rsp),%xmm0,%xmm10
vpmuludq 304(%rsp),%xmm0,%xmm11
vpmuludq 288(%rsp),%xmm0,%xmm12
vpmuludq 336(%rsp),%xmm0,%xmm13
vmovdqa 384(%rsp),%xmm14
vpmuludq %xmm14,%xmm0,%xmm0
vpmuludq v38_38(%rip),%xmm14,%xmm15
vpmuludq %xmm15,%xmm14,%xmm14
vpaddq %xmm14,%xmm13,%xmm13
vpaddq %xmm6,%xmm6,%xmm14
vpmuludq %xmm14,%xmm6,%xmm6
vpaddq %xmm6,%xmm11,%xmm11
vpaddq %xmm2,%xmm2,%xmm6
vpmuludq %xmm6,%xmm2,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vpmuludq %xmm15,%xmm6,%xmm2
vpaddq %xmm2,%xmm1,%xmm1
vpmuludq %xmm15,%xmm4,%xmm2
vpaddq %xmm2,%xmm3,%xmm3
vpmuludq 256(%rsp),%xmm6,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpmuludq 304(%rsp),%xmm6,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vpmuludq 352(%rsp),%xmm6,%xmm2
vpaddq %xmm2,%xmm13,%xmm13
vpmuludq 336(%rsp),%xmm6,%xmm2
vpaddq %xmm2,%xmm0,%xmm0
vpmuludq %xmm4,%xmm6,%xmm2
vpaddq %xmm2,%xmm7,%xmm7
vpmuludq %xmm14,%xmm6,%xmm2
vpaddq %xmm2,%xmm9,%xmm9
vpmuludq %xmm8,%xmm6,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpmuludq %xmm15,%xmm14,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vpmuludq %xmm15,%xmm8,%xmm2
vpaddq %xmm2,%xmm7,%xmm7
vpmuludq %xmm4,%xmm4,%xmm2
vpaddq %xmm2,%xmm9,%xmm9
vpmuludq %xmm14,%xmm4,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpaddq %xmm4,%xmm4,%xmm2
vpmuludq %xmm8,%xmm2,%xmm4
vpaddq %xmm4,%xmm11,%xmm11
vpmuludq 400(%rsp),%xmm2,%xmm4
vpaddq %xmm4,%xmm1,%xmm1
vpmuludq 400(%rsp),%xmm14,%xmm4
vpaddq %xmm4,%xmm3,%xmm3
vpmuludq 224(%rsp),%xmm2,%xmm4
vpaddq %xmm4,%xmm12,%xmm12
vpmuludq 304(%rsp),%xmm2,%xmm4
vpaddq %xmm4,%xmm13,%xmm13
vpmuludq 288(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm0,%xmm0
vpmuludq 368(%rsp),%xmm8,%xmm2
vpaddq %xmm2,%xmm3,%xmm3
vpmuludq %xmm8,%xmm14,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vpmuludq %xmm8,%xmm8,%xmm2
vpaddq %xmm2,%xmm13,%xmm13
vpaddq %xmm8,%xmm8,%xmm2
vpmuludq 400(%rsp),%xmm2,%xmm4
vpaddq %xmm4,%xmm5,%xmm5
vpmuludq 256(%rsp),%xmm15,%xmm4
vpaddq %xmm4,%xmm9,%xmm9
vpmuludq 304(%rsp),%xmm15,%xmm4
vpaddq %xmm4,%xmm10,%xmm10
vpmuludq 368(%rsp),%xmm14,%xmm4
vpaddq %xmm4,%xmm1,%xmm1
vmovdqa 256(%rsp),%xmm4
vpmuludq 400(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm7,%xmm7
vpmuludq 256(%rsp),%xmm14,%xmm4
vpaddq %xmm4,%xmm13,%xmm13
vpmuludq 304(%rsp),%xmm14,%xmm4
vpaddq %xmm4,%xmm0,%xmm0
vpmuludq 352(%rsp),%xmm15,%xmm4
vpaddq %xmm4,%xmm11,%xmm11
vpmuludq 336(%rsp),%xmm15,%xmm4
vpaddq %xmm4,%xmm12,%xmm12
vmovdqa 304(%rsp),%xmm4
vpaddq %xmm4,%xmm4,%xmm4
vpmuludq 400(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm9,%xmm9
vpmuludq 320(%rsp),%xmm2,%xmm4
vpaddq %xmm4,%xmm1,%xmm1
vmovdqa 256(%rsp),%xmm4
vpmuludq 320(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm3,%xmm3
vmovdqa 256(%rsp),%xmm4
vpmuludq 368(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm5,%xmm5
vmovdqa 304(%rsp),%xmm4
vpmuludq 368(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm7,%xmm7
vmovdqa 352(%rsp),%xmm4
vpmuludq 400(%rsp),%xmm4,%xmm4
vpaddq %xmm4,%xmm10,%xmm10
vpmuludq 224(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm0,%xmm0
vmovdqa 272(%rsp),%xmm2
vpmuludq 224(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm1,%xmm1
vmovdqa 320(%rsp),%xmm2
vpmuludq 304(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vmovdqa 368(%rsp),%xmm2
vpmuludq 288(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm9,%xmm9
vmovdqa 400(%rsp),%xmm2
vpmuludq 336(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpsrlq $26,%xmm1,%xmm2
vpaddq %xmm2,%xmm3,%xmm3
vpand m26(%rip),%xmm1,%xmm1
vpsrlq $25,%xmm10,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpand m25(%rip),%xmm10,%xmm10
vpsrlq $25,%xmm3,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vpand m25(%rip),%xmm3,%xmm3
vpsrlq $26,%xmm11,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vpand m26(%rip),%xmm11,%xmm11
vpsrlq $26,%xmm5,%xmm2
vpaddq %xmm2,%xmm7,%xmm7
vpand m26(%rip),%xmm5,%xmm5
vpsrlq $25,%xmm12,%xmm2
vpaddq %xmm2,%xmm13,%xmm13
vpand m25(%rip),%xmm12,%xmm12
vpsrlq $25,%xmm7,%xmm2
vpaddq %xmm2,%xmm9,%xmm9
vpand m25(%rip),%xmm7,%xmm7
vpsrlq $26,%xmm13,%xmm2
vpaddq %xmm2,%xmm0,%xmm0
vpand m26(%rip),%xmm13,%xmm13
vpsrlq $26,%xmm9,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpand m26(%rip),%xmm9,%xmm9
vpsrlq $25,%xmm0,%xmm2
vpsllq $4,%xmm2,%xmm4
vpaddq %xmm2,%xmm1,%xmm1
vpsllq $1,%xmm2,%xmm2
vpaddq %xmm2,%xmm4,%xmm4
vpaddq %xmm4,%xmm1,%xmm1
vpand m25(%rip),%xmm0,%xmm0
vpsrlq $25,%xmm10,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpand m25(%rip),%xmm10,%xmm10
vpsrlq $26,%xmm1,%xmm2
vpaddq %xmm2,%xmm3,%xmm3
vpand m26(%rip),%xmm1,%xmm1
vpunpckhqdq %xmm3,%xmm1,%xmm2
vpunpcklqdq %xmm3,%xmm1,%xmm1
vmovdqa %xmm1,176(%rsp)
vpaddq subc0(%rip),%xmm2,%xmm3
vpsubq %xmm1,%xmm3,%xmm3
vpunpckhqdq %xmm3,%xmm2,%xmm1
vpunpcklqdq %xmm3,%xmm2,%xmm2
vmovdqa %xmm2,192(%rsp)
vmovdqa %xmm1,224(%rsp)
vpsllq $1,%xmm1,%xmm1
vmovdqa %xmm1,240(%rsp)
vpmuludq v121666_121666(%rip),%xmm3,%xmm3
vmovdqa 80(%rsp),%xmm1
vpunpcklqdq %xmm1,%xmm3,%xmm2
vpunpckhqdq %xmm1,%xmm3,%xmm1
vpunpckhqdq %xmm7,%xmm5,%xmm3
vpunpcklqdq %xmm7,%xmm5,%xmm4
vmovdqa %xmm4,256(%rsp)
vpaddq subc2(%rip),%xmm3,%xmm5
vpsubq %xmm4,%xmm5,%xmm5
vpunpckhqdq %xmm5,%xmm3,%xmm4
vpunpcklqdq %xmm5,%xmm3,%xmm3
vmovdqa %xmm3,272(%rsp)
vmovdqa %xmm4,288(%rsp)
vpsllq $1,%xmm4,%xmm4
vmovdqa %xmm4,304(%rsp)
vpmuludq v121666_121666(%rip),%xmm5,%xmm5
vmovdqa 96(%rsp),%xmm3
vpunpcklqdq %xmm3,%xmm5,%xmm4
vpunpckhqdq %xmm3,%xmm5,%xmm3
vpunpckhqdq %xmm10,%xmm9,%xmm5
vpunpcklqdq %xmm10,%xmm9,%xmm6
vmovdqa %xmm6,320(%rsp)
vpaddq subc2(%rip),%xmm5,%xmm7
vpsubq %xmm6,%xmm7,%xmm7
vpunpckhqdq %xmm7,%xmm5,%xmm6
vpunpcklqdq %xmm7,%xmm5,%xmm5
vmovdqa %xmm5,336(%rsp)
vmovdqa %xmm6,352(%rsp)
vpsllq $1,%xmm6,%xmm6
vmovdqa %xmm6,368(%rsp)
vpmuludq v121666_121666(%rip),%xmm7,%xmm7
vmovdqa 112(%rsp),%xmm5
vpunpcklqdq %xmm5,%xmm7,%xmm6
vpunpckhqdq %xmm5,%xmm7,%xmm5
vpunpckhqdq %xmm12,%xmm11,%xmm7
vpunpcklqdq %xmm12,%xmm11,%xmm8
vmovdqa %xmm8,384(%rsp)
vpaddq subc2(%rip),%xmm7,%xmm9
vpsubq %xmm8,%xmm9,%xmm9
vpunpckhqdq %xmm9,%xmm7,%xmm8
vpunpcklqdq %xmm9,%xmm7,%xmm7
vmovdqa %xmm7,400(%rsp)
vmovdqa %xmm8,416(%rsp)
vpsllq $1,%xmm8,%xmm8
vmovdqa %xmm8,432(%rsp)
vpmuludq v121666_121666(%rip),%xmm9,%xmm9
vmovdqa 160(%rsp),%xmm7
vpunpcklqdq %xmm7,%xmm9,%xmm8
vpunpckhqdq %xmm7,%xmm9,%xmm7
vpunpckhqdq %xmm0,%xmm13,%xmm9
vpunpcklqdq %xmm0,%xmm13,%xmm0
vmovdqa %xmm0,160(%rsp)
vpaddq subc2(%rip),%xmm9,%xmm10
vpsubq %xmm0,%xmm10,%xmm10
vpunpckhqdq %xmm10,%xmm9,%xmm0
vpunpcklqdq %xmm10,%xmm9,%xmm9
vmovdqa %xmm9,448(%rsp)
vmovdqa %xmm0,464(%rsp)
vpsllq $1,%xmm0,%xmm0
vmovdqa %xmm0,480(%rsp)
vpmuludq v121666_121666(%rip),%xmm10,%xmm10
vmovdqa 208(%rsp),%xmm0
vpunpcklqdq %xmm0,%xmm10,%xmm9
vpunpckhqdq %xmm0,%xmm10,%xmm0
vpsrlq $26,%xmm2,%xmm10
vpaddq %xmm10,%xmm1,%xmm1
vpand m26(%rip),%xmm2,%xmm2
vpsrlq $25,%xmm5,%xmm10
vpaddq %xmm10,%xmm8,%xmm8
vpand m25(%rip),%xmm5,%xmm5
vpsrlq $25,%xmm1,%xmm10
vpaddq %xmm10,%xmm4,%xmm4
vpand m25(%rip),%xmm1,%xmm1
vpsrlq $26,%xmm8,%xmm10
vpaddq %xmm10,%xmm7,%xmm7
vpand m26(%rip),%xmm8,%xmm8
vpsrlq $26,%xmm4,%xmm10
vpaddq %xmm10,%xmm3,%xmm3
vpand m26(%rip),%xmm4,%xmm4
vpsrlq $25,%xmm7,%xmm10
vpaddq %xmm10,%xmm9,%xmm9
vpand m25(%rip),%xmm7,%xmm7
vpsrlq $25,%xmm3,%xmm10
vpaddq %xmm10,%xmm6,%xmm6
vpand m25(%rip),%xmm3,%xmm3
vpsrlq $26,%xmm9,%xmm10
vpaddq %xmm10,%xmm0,%xmm0
vpand m26(%rip),%xmm9,%xmm9
vpsrlq $26,%xmm6,%xmm10
vpaddq %xmm10,%xmm5,%xmm5
vpand m26(%rip),%xmm6,%xmm6
vpsrlq $25,%xmm0,%xmm10
vpsllq $4,%xmm10,%xmm11
vpaddq %xmm10,%xmm2,%xmm2
vpsllq $1,%xmm10,%xmm10
vpaddq %xmm10,%xmm11,%xmm11
vpaddq %xmm11,%xmm2,%xmm2
vpand m25(%rip),%xmm0,%xmm0
vpsrlq $25,%xmm5,%xmm10
vpaddq %xmm10,%xmm8,%xmm8
vpand m25(%rip),%xmm5,%xmm5
vpsrlq $26,%xmm2,%xmm10
vpaddq %xmm10,%xmm1,%xmm1
vpand m26(%rip),%xmm2,%xmm2
vpunpckhqdq %xmm1,%xmm2,%xmm10
vmovdqa %xmm10,80(%rsp)
vpunpcklqdq %xmm1,%xmm2,%xmm1
vpunpckhqdq %xmm3,%xmm4,%xmm2
vmovdqa %xmm2,96(%rsp)
vpunpcklqdq %xmm3,%xmm4,%xmm2
vpunpckhqdq %xmm5,%xmm6,%xmm3
vmovdqa %xmm3,112(%rsp)
vpunpcklqdq %xmm5,%xmm6,%xmm3
vpunpckhqdq %xmm7,%xmm8,%xmm4
vmovdqa %xmm4,128(%rsp)
vpunpcklqdq %xmm7,%xmm8,%xmm4
vpunpckhqdq %xmm0,%xmm9,%xmm5
vmovdqa %xmm5,144(%rsp)
vpunpcklqdq %xmm0,%xmm9,%xmm0
vmovdqa 176(%rsp),%xmm5
vpaddq %xmm5,%xmm1,%xmm1
vpunpcklqdq %xmm1,%xmm5,%xmm6
vpunpckhqdq %xmm1,%xmm5,%xmm1
vpmuludq 224(%rsp),%xmm6,%xmm5
vpmuludq 192(%rsp),%xmm1,%xmm7
vpaddq %xmm7,%xmm5,%xmm5
vpmuludq 272(%rsp),%xmm6,%xmm7
vpmuludq 240(%rsp),%xmm1,%xmm8
vpaddq %xmm8,%xmm7,%xmm7
vpmuludq 288(%rsp),%xmm6,%xmm8
vpmuludq 272(%rsp),%xmm1,%xmm9
vpaddq %xmm9,%xmm8,%xmm8
vpmuludq 336(%rsp),%xmm6,%xmm9
vpmuludq 304(%rsp),%xmm1,%xmm10
vpaddq %xmm10,%xmm9,%xmm9
vpmuludq 352(%rsp),%xmm6,%xmm10
vpmuludq 336(%rsp),%xmm1,%xmm11
vpaddq %xmm11,%xmm10,%xmm10
vpmuludq 400(%rsp),%xmm6,%xmm11
vpmuludq 368(%rsp),%xmm1,%xmm12
vpaddq %xmm12,%xmm11,%xmm11
vpmuludq 416(%rsp),%xmm6,%xmm12
vpmuludq 400(%rsp),%xmm1,%xmm13
vpaddq %xmm13,%xmm12,%xmm12
vpmuludq 448(%rsp),%xmm6,%xmm13
vpmuludq 432(%rsp),%xmm1,%xmm14
vpaddq %xmm14,%xmm13,%xmm13
vpmuludq 464(%rsp),%xmm6,%xmm14
vpmuludq 448(%rsp),%xmm1,%xmm15
vpaddq %xmm15,%xmm14,%xmm14
vpmuludq 192(%rsp),%xmm6,%xmm6
vpmuludq v19_19(%rip),%xmm1,%xmm1
vpmuludq 480(%rsp),%xmm1,%xmm1
vpaddq %xmm1,%xmm6,%xmm6
vmovdqa 256(%rsp),%xmm1
vpaddq %xmm1,%xmm2,%xmm2
vpunpcklqdq %xmm2,%xmm1,%xmm15
vpunpckhqdq %xmm2,%xmm1,%xmm1
vpmuludq 192(%rsp),%xmm15,%xmm2
vpaddq %xmm2,%xmm7,%xmm7
vpmuludq 224(%rsp),%xmm15,%xmm2
vpaddq %xmm2,%xmm8,%xmm8
vpmuludq 272(%rsp),%xmm15,%xmm2
vpaddq %xmm2,%xmm9,%xmm9
vpmuludq 288(%rsp),%xmm15,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpmuludq 336(%rsp),%xmm15,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpmuludq 352(%rsp),%xmm15,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vpmuludq 400(%rsp),%xmm15,%xmm2
vpaddq %xmm2,%xmm13,%xmm13
vpmuludq 416(%rsp),%xmm15,%xmm2
vpaddq %xmm2,%xmm14,%xmm14
vpmuludq v19_19(%rip),%xmm15,%xmm15
vpmuludq 448(%rsp),%xmm15,%xmm2
vpaddq %xmm2,%xmm6,%xmm6
vpmuludq 464(%rsp),%xmm15,%xmm15
vpaddq %xmm15,%xmm5,%xmm5
vpmuludq 192(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm8,%xmm8
vpmuludq 240(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm9,%xmm9
vpmuludq 272(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpmuludq 304(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpmuludq 336(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vpmuludq 368(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm13,%xmm13
vpmuludq 400(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm14,%xmm14
vpmuludq v19_19(%rip),%xmm1,%xmm1
vpmuludq 432(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm6,%xmm6
vpmuludq 448(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vpmuludq 480(%rsp),%xmm1,%xmm1
vpaddq %xmm1,%xmm7,%xmm7
vmovdqa 320(%rsp),%xmm1
vpaddq %xmm1,%xmm3,%xmm3
vpunpcklqdq %xmm3,%xmm1,%xmm2
vpunpckhqdq %xmm3,%xmm1,%xmm1
vpmuludq 192(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm9,%xmm9
vpmuludq 224(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm10,%xmm10
vpmuludq 272(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm11,%xmm11
vpmuludq 288(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm12,%xmm12
vpmuludq 336(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm13,%xmm13
vpmuludq 352(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm14,%xmm14
vpmuludq v19_19(%rip),%xmm2,%xmm2
vpmuludq 400(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm6,%xmm6
vpmuludq 416(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm5,%xmm5
vpmuludq 448(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm7,%xmm7
vpmuludq 464(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm8,%xmm8
vpmuludq 192(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpmuludq 240(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm11,%xmm11
vpmuludq 272(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vpmuludq 304(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm13,%xmm13
vpmuludq 336(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm14,%xmm14
vpmuludq v19_19(%rip),%xmm1,%xmm1
vpmuludq 368(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm6,%xmm6
vpmuludq 400(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vpmuludq 432(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm7,%xmm7
vpmuludq 448(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm8,%xmm8
vpmuludq 480(%rsp),%xmm1,%xmm1
vpaddq %xmm1,%xmm9,%xmm9
vmovdqa 384(%rsp),%xmm1
vpaddq %xmm1,%xmm4,%xmm4
vpunpcklqdq %xmm4,%xmm1,%xmm2
vpunpckhqdq %xmm4,%xmm1,%xmm1
vpmuludq 192(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm11,%xmm11
vpmuludq 224(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm12,%xmm12
vpmuludq 272(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm13,%xmm13
vpmuludq 288(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm14,%xmm14
vpmuludq v19_19(%rip),%xmm2,%xmm2
vpmuludq 336(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm6,%xmm6
vpmuludq 352(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm5,%xmm5
vpmuludq 400(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm7,%xmm7
vpmuludq 416(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm8,%xmm8
vpmuludq 448(%rsp),%xmm2,%xmm3
vpaddq %xmm3,%xmm9,%xmm9
vpmuludq 464(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpmuludq 192(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vpmuludq 240(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm13,%xmm13
vpmuludq 272(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm14,%xmm14
vpmuludq v19_19(%rip),%xmm1,%xmm1
vpmuludq 304(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm6,%xmm6
vpmuludq 336(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm5,%xmm5
vpmuludq 368(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm7,%xmm7
vpmuludq 400(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm8,%xmm8
vpmuludq 432(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm9,%xmm9
vpmuludq 448(%rsp),%xmm1,%xmm2
vpaddq %xmm2,%xmm10,%xmm10
vpmuludq 480(%rsp),%xmm1,%xmm1
vpaddq %xmm1,%xmm11,%xmm11
vmovdqa 160(%rsp),%xmm1
vpaddq %xmm1,%xmm0,%xmm0
vpunpcklqdq %xmm0,%xmm1,%xmm2
vpunpckhqdq %xmm0,%xmm1,%xmm0
vpmuludq 192(%rsp),%xmm2,%xmm1
vpaddq %xmm1,%xmm13,%xmm13
vpmuludq 224(%rsp),%xmm2,%xmm1
vpaddq %xmm1,%xmm14,%xmm14
vpmuludq v19_19(%rip),%xmm2,%xmm2
vpmuludq 272(%rsp),%xmm2,%xmm1
vpaddq %xmm1,%xmm6,%xmm6
vpmuludq 288(%rsp),%xmm2,%xmm1
vpaddq %xmm1,%xmm5,%xmm5
vpmuludq 336(%rsp),%xmm2,%xmm1
vpaddq %xmm1,%xmm7,%xmm7
vpmuludq 352(%rsp),%xmm2,%xmm1
vpaddq %xmm1,%xmm8,%xmm8
vpmuludq 400(%rsp),%xmm2,%xmm1
vpaddq %xmm1,%xmm9,%xmm9
vpmuludq 416(%rsp),%xmm2,%xmm1
vpaddq %xmm1,%xmm10,%xmm10
vpmuludq 448(%rsp),%xmm2,%xmm1
vpaddq %xmm1,%xmm11,%xmm11
vpmuludq 464(%rsp),%xmm2,%xmm2
vpaddq %xmm2,%xmm12,%xmm12
vpmuludq 192(%rsp),%xmm0,%xmm1
vpaddq %xmm1,%xmm14,%xmm14
vpmuludq v19_19(%rip),%xmm0,%xmm0
vpmuludq 240(%rsp),%xmm0,%xmm1
vpaddq %xmm1,%xmm6,%xmm6
vpmuludq 272(%rsp),%xmm0,%xmm1
vpaddq %xmm1,%xmm5,%xmm5
vpmuludq 304(%rsp),%xmm0,%xmm1
vpaddq %xmm1,%xmm7,%xmm7
vpmuludq 336(%rsp),%xmm0,%xmm1
vpaddq %xmm1,%xmm8,%xmm8
vpmuludq 368(%rsp),%xmm0,%xmm1
vpaddq %xmm1,%xmm9,%xmm9
vpmuludq 400(%rsp),%xmm0,%xmm1
vpaddq %xmm1,%xmm10,%xmm10
vpmuludq 432(%rsp),%xmm0,%xmm1
vpaddq %xmm1,%xmm11,%xmm11
vpmuludq 448(%rsp),%xmm0,%xmm1
vpaddq %xmm1,%xmm12,%xmm12
vpmuludq 480(%rsp),%xmm0,%xmm0
vpaddq %xmm0,%xmm13,%xmm13
vpsrlq $26,%xmm6,%xmm0
vpaddq %xmm0,%xmm5,%xmm5
vpand m26(%rip),%xmm6,%xmm6
vpsrlq $25,%xmm10,%xmm0
vpaddq %xmm0,%xmm11,%xmm11
vpand m25(%rip),%xmm10,%xmm10
vpsrlq $25,%xmm5,%xmm0
vpaddq %xmm0,%xmm7,%xmm7
vpand m25(%rip),%xmm5,%xmm5
vpsrlq $26,%xmm11,%xmm0
vpaddq %xmm0,%xmm12,%xmm12
vpand m26(%rip),%xmm11,%xmm11
vpsrlq $26,%xmm7,%xmm0
vpaddq %xmm0,%xmm8,%xmm8
vpand m26(%rip),%xmm7,%xmm7
vpsrlq $25,%xmm12,%xmm0
vpaddq %xmm0,%xmm13,%xmm13
vpand m25(%rip),%xmm12,%xmm12
vpsrlq $25,%xmm8,%xmm0
vpaddq %xmm0,%xmm9,%xmm9
vpand m25(%rip),%xmm8,%xmm8
vpsrlq $26,%xmm13,%xmm0
vpaddq %xmm0,%xmm14,%xmm14
vpand m26(%rip),%xmm13,%xmm13
vpsrlq $26,%xmm9,%xmm0
vpaddq %xmm0,%xmm10,%xmm10
vpand m26(%rip),%xmm9,%xmm9
vpsrlq $25,%xmm14,%xmm0
vpsllq $4,%xmm0,%xmm1
vpaddq %xmm0,%xmm6,%xmm6
vpsllq $1,%xmm0,%xmm0
vpaddq %xmm0,%xmm1,%xmm1
vpaddq %xmm1,%xmm6,%xmm6
vpand m25(%rip),%xmm14,%xmm14
vpsrlq $25,%xmm10,%xmm0
vpaddq %xmm0,%xmm11,%xmm11
vpand m25(%rip),%xmm10,%xmm10
vpsrlq $26,%xmm6,%xmm0
vpaddq %xmm0,%xmm5,%xmm5
vpand m26(%rip),%xmm6,%xmm6
vpunpckhqdq %xmm5,%xmm6,%xmm1
vpunpcklqdq %xmm5,%xmm6,%xmm0
vpunpckhqdq %xmm8,%xmm7,%xmm3
vpunpcklqdq %xmm8,%xmm7,%xmm2
vpunpckhqdq %xmm10,%xmm9,%xmm5
vpunpcklqdq %xmm10,%xmm9,%xmm4
vpunpckhqdq %xmm12,%xmm11,%xmm7
vpunpcklqdq %xmm12,%xmm11,%xmm6
vpunpckhqdq %xmm14,%xmm13,%xmm9
vpunpcklqdq %xmm14,%xmm13,%xmm8
cmp  $0,%rdx
jne ._ladder_base_loop
vmovdqu %xmm1,80(%rdi)
vmovdqu %xmm0,0(%rdi)
vmovdqu %xmm3,96(%rdi)
vmovdqu %xmm2,16(%rdi)
vmovdqu %xmm5,112(%rdi)
vmovdqu %xmm4,32(%rdi)
vmovdqu %xmm7,128(%rdi)
vmovdqu %xmm6,48(%rdi)
vmovdqu %xmm9,144(%rdi)
vmovdqu %xmm8,64(%rdi)
movq 1536(%rsp),%r11
movq 1544(%rsp),%r12
movq 1552(%rsp),%r13
add %r11,%rsp
ret

#endif

.globl ladder_base_S_dummy
