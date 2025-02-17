/*Copyright 2020-2021 T-Head Semiconductor Co., Ltd.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/
#************************************************************

#*************Following is the generated instructions*****************

.text
.align 6
.global main
main:
 
      .option norvc
.global addi.w
addi.w:
      li x5, 0x4
      li x4, 0x5
      addiw x4, x4, 0xffffffffffffffff
      bne x4, x5, TEST_FAIL
      li x5, 0xffe
      li x4, 0x7ff
      addiw x4, x4, 0x7ff
      bne x4, x5, TEST_FAIL
      li x5, 0xfffffffffffff000
      li x4, 0xfffffffffffff800
      addiw x4, x4, 0xfffffffffffff800
      bne x4, x5, TEST_FAIL
      addiw x4, x4, 0x123
      addiw x5, x4, 0x0
      bne x4, x5, TEST_FAIL
      li x5, 0x0
      addiw x5, x5, 0x0
      addiw x0, x0, 0x0
      addiw x0, x0, 0x5
      bne x5, x0, TEST_FAIL
.global ADDI
ADDI:
      li x5, 0x4
      li x4, 0x5
      addi x4, x4, 0xffffffffffffffff
      bne x4, x5, TEST_FAIL
      li x5, 0xffe
      li x4, 0x7ff
      addi x4, x4, 0x7ff
      bne x4, x5, TEST_FAIL
      li x5, 0xfffffffffffff000
      li x4, 0xfffffffffffff800
      addi x4, x4, 0xfffffffffffff800
      bne x4, x5, TEST_FAIL
      addi x4, x4, 0x123
      addi x5, x4, 0x0
      bne x4, x5, TEST_FAIL
      li x5, 0x0
      addi x5, x5, 0x0
      addi x0, x0, 0x0
      addi x0, x0, 0x5
      bne x5, x0, TEST_FAIL
.global SLTI
SLTI:
      li x4, 0x1
      li x5, 0xfff
      slti x5, x5, 0xffffffffffffffff
      bne x5, x0, TEST_FAIL
      li x5, 0xfff
      slti x5, x5, 0x1
      bne x5, x0, TEST_FAIL
      li x5, 0xffffffffffffffff
      slti x5, x5, 0x1
      bne x5, x4, TEST_FAIL
      li x5, 0x1
      slti x5, x5, 0x1
      bne x5, x0, TEST_FAIL
      li x5, 0xffffffffffffffff
      slti x5, x5, 0xfffffffffffffffe
      bne x5, x0, TEST_FAIL
      li x5, 0xffffffffffffffff
      slti x5, x5, 0xffffffffffffffff
      bne x5, x0, TEST_FAIL
.global SLTIU
SLTIU:
      li x4, 0x1
      li x5, 0xffffffffffffffff
      sltiu x5, x5, 0x7ff
      bne x5, x0, TEST_FAIL
      li x5, 0xfff
      sltiu x5, x5, 0x1
      bne x5, x0, TEST_FAIL
      li x5, 0x1
      sltiu x5, x5, 0x7ff
      bne x5, x4, TEST_FAIL
      li x5, 0x7ff
      sltiu x5, x5, 0x7ff
      bne x5, x0, TEST_FAIL
.global ANDI
ANDI:
      li x4, 0xaaaaaaaaaaaaaaaa
      li x5, 0xaaaaaaaaaaaaaaaa
      andi x5, x5, 0xffffffffffffffff
      bne x4, x5, TEST_FAIL
      li x4, 0x2aa
      li x5, 0xaaaaaaaaaaaaaaaa
      andi x5, x5, 0x7ff
      bne x4, x5, TEST_FAIL
      li x4, 0x0
      li x5, 0xaaaaaaaaaaaaaaaa
      andi x5, x5, 0x0
      bne x4, x5, TEST_FAIL
.global ORI
ORI:
      li x4, 0xffffffffffffffff
      li x5, 0xaaaaaaaaaaaaaaaa
      ori x5, x5, 0xffffffffffffffff
      bne x4, x5, TEST_FAIL
      li x4, 0xaaaaaaaaaaaaafff
      li x5, 0xaaaaaaaaaaaaaaaa
      ori x5, x5, 0x7ff
      bne x4, x5, TEST_FAIL
      li x4, 0xaaaaaaaaaaaaaaaa
      li x5, 0xaaaaaaaaaaaaaaaa
      ori x5, x5, 0x0
      bne x4, x5, TEST_FAIL
.global XORI
XORI:
      li x4, 0xabcdabcdabcdabcd
      xori x5, x4, 0xffffffffffffffff
      not x6, x4
      bne x6, x5, TEST_FAIL
      li x4, 0xabcdabcdabcdffff
      li x6, 0xabcdabcdabcdfff0
      xori x5, x4, 0xf
      bne x6, x5, TEST_FAIL
      li x4, 0xabcdabcdabcdabcd
      li x6, 0xabcdabcdabcdabcd
      xori x5, x4, 0x0
      bne x6, x5, TEST_FAIL
.global SLLI
SLLI:
      li x4, 0xabcd1234abcd1234
      slli x2, x4, 0
      bne x2, x4, TEST_FAIL
      li x4, 0xabcd1234abcd1234
      slli x2, x4, 63
      bne x2, x0, TEST_FAIL
      li x4, 0xaaaaaaaaaaaaaaaa
      slli x2, x4, 36
      li x3, 0xaaaaaaa000000000
      bne x2, x3, TEST_FAIL
.global SLLIW
SLLIW:
      li x4, 0xabcd1234abcd1234
      slliw x2, x4, 0
      li x3, 0xffffffffabcd1234
      bne x2, x3, TEST_FAIL
      li x4, 0xabcd1234abcd1234
      slliw x2, x4, 31
      bne x2, x0, TEST_FAIL
      li x4, 0xaaaaaaaaaaaaaaaa
      slliw x2, x4, 5
      li x3, 0x0000000055555540
      bne x2, x3, TEST_FAIL
.global SRLI
SRLI:
      li x2, 0xabcd1234abcd1234
      srli x3, x2, 0
      bne x2, x3, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      srli x3, x2, 63
      li x4, 0x1
      bne x3, x4, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      srli x2, x2, 1
      li x3, 0x5555555555555555
      bne x2, x3, TEST_FAIL
.global SRLIW
SRLIW:
      li x4, 0xabcd1234abcd1234
      srliw x2, x4, 0
      li x3, 0xffffffffabcd1234
      bne x2, x3, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      srliw x3, x2, 31
      li x4, 0x1
      bne x3, x4, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      srliw x2, x2, 1
      li x3, 0x55555555
      bne x2, x3, TEST_FAIL
.global SRAI
SRAI:
      li x2, 0xaaaaaaaaaaaaaaaa
      srai x2, x2, 63
      li x3, 0xffffffffffffffff
      bne x2, x3, TEST_FAIL
      li x2, 0x5555555555555555
      srai x2, x2, 63
      bne x2, x0, TEST_FAIL
      li x2, 0x5555555555555555
      srai x2, x2, 1
      li x3, 0x2aaaaaaaaaaaaaaa
      bne x2, x3, TEST_FAIL
      li x2, 0xabcd1234abcd1234
      srai x2, x2, 0
      li x3, 0xabcd1234abcd1234
      bne x2, x3, TEST_FAIL
.global SRAIW
SRAIW:
      li x2, 0xaaaaaaaaaaaaaaaa
      sraiw x2, x2, 31
      li x3, 0xffffffffffffffff
      bne x2, x3, TEST_FAIL
      li x2, 0x5555555555555555
      sraiw x2, x2, 31
      li x3, 0
      bne x2, x3, TEST_FAIL
      li x2, 0x5555555555555555
      sraiw x2, x2, 1
      li x3, 0x2aaaaaaa
      bne x2, x3, TEST_FAIL
      li x2, 0xabcd1234abcd1234
      sraiw x2, x2, 0
      li x3, 0xffffffffabcd1234
      bne x2, x3, TEST_FAIL
.global LUI
LUI:
      lui x2, 0x7bcd1
      li x3, 0x7bcd1000
      bne x2, x3, TEST_FAIL
      lui x2, 0x89abc
      li x3, 0xffffffff89abc000
      bne x2, x3, TEST_FAIL
      .option rvc
.global AUIPC
AUIPC:
      auipc x2, 0x0
      li x3, 0xa00a
      c.add x2, x3
      auipc x4, 0xa
      bne x2, x4, TEST_FAIL
      auipc x2, 0x0
      li x3, 0x80000010
      addw x2, x3, x2
      auipc x4, 0x80000
      bne x2, x4, TEST_FAIL
      .option norvc
.global ADD
ADD:
      li x3, 0xffffffffffffffff
      li x4, 0xffffffffffffffff
      add x5, x3, x4
      li x6, 0xfffffffffffffffe
      bne x5, x6, TEST_FAIL
      li x3, 0x8000000000000000
      li x4, 0x8000000000000000
      add x5, x3, x4
      li x6, 0x0
      bne x5, x6, TEST_FAIL
      li x3, 0x7fffffffffffffff
      li x4, 0x7fffffffffffffff
      add x5, x3, x4
      li x6, 0xfffffffffffffffe
      bne x5, x6, TEST_FAIL
.global ADDW
ADDW:
      li x3, 0xabcdabcdffffffff
      li x4, 0xabcdabcdffffffff
      addw x5, x3, x4
      li x6, 0xfffffffffffffffe
      bne x5, x6, TEST_FAIL
      li x3, 0x80000000
      li x4, 0x80000000
      addw x5, x3, x4
      li x6, 0x0
      bne x5, x6, TEST_FAIL
      li x3, 0xabcdabcd7fffffff
      li x4, 0xabcdabcd7fffffff
      addw x5, x3, x4
      li x6, 0xfffffffffffffffe
      bne x5, x6, TEST_FAIL
.global SUB
SUB:
      li x3, 0x8000000000000000
      li x4, 0x7fffffffffffffff
      sub x5, x3, x4
      li x6, 0x1
      bne x5, x6, TEST_FAIL
      li x3, 0x7fffffffffffffff
      li x4, 0x8000000000000000
      sub x5, x3, x4
      li x6, 0xffffffffffffffff
      bne x5, x6, TEST_FAIL
      li x3, 0xf
      li x4, 0x2
      sub x5, x3, x4
      li x6, 0xd
      bne x5, x6, TEST_FAIL
.global SUBW
SUBW:
      li x3, 0xabcdabcd80000000
      li x4, 0xabcdabcd7fffffff
      subw x5, x3, x4
      li x6, 0x1
      bne x5, x6, TEST_FAIL
      li x3, 0xabcdabcd7fffffff
      li x4, 0xabcdabcd80000000
      subw x5, x3, x4
      li x6, 0xffffffffffffffff
      bne x5, x6, TEST_FAIL
      li x3, 0xf
      li x4, 0x2
      subw x5, x3, x4
      li x6, 0xd
      bne x5, x6, TEST_FAIL
.global SLT
SLT:
      li x3, 0x1
      li x4, 0x0
      li x5, 0x8000000000000000
      li x6, 0xffffffffffffffff
      li x8, 0xfffffffffffffffe
      slt x7, x3, x3
      bne x7, x4, TEST_FAIL
      slt x7, x3, x4
      bne x7, x4, TEST_FAIL
      slt x7, x4, x3
      bne x7, x3, TEST_FAIL
      slt x7, x5, x3
      bne x7, x3, TEST_FAIL
      slt x7, x6, x8
      bne x7, x4, TEST_FAIL
.global SLTU
SLTU:
      li x3, 0x1
      li x4, 0x0
      li x5, 0x8000000000000000
      li x6, 0xffffffffffffffff
      sltu x7, x3, x3
      bne x7, x4, TEST_FAIL
      sltu x7, x3, x4
      bne x7, x4, TEST_FAIL
      sltu x7, x4, x3
      bne x7, x3, TEST_FAIL
      sltu x7, x5, x3
      bne x7, x4, TEST_FAIL
.global AND
AND:
      li x3, 0x0
      li x4, 0xffffffffffffffff
      li x5, 0xabcdabcdabcdabcd
      and x6, x5, x4
      bne x6, x5, TEST_FAIL
      li x5, 0xabcdabcdabcdabcd
      and x6, x5, x3
      bne x6, x3, TEST_FAIL
.global OR
OR:
      li x3, 0x0
      li x4, 0xffffffffffffffff
      li x5, 0xabcdabcdabcdabcd
      or x6, x5, x4
      bne x6, x4, TEST_FAIL
      li x5, 0xabcdabcdabcdabcd
      or x6, x5, x3
      bne x6, x5, TEST_FAIL
.global XOR
XOR:
      li x3, 0x0
      li x4, 0xffffffffffffffff
      li x5, 0xabcdabcdabcdabcd
      xor x6, x5, x4
      not x5, x5
      bne x6, x5, TEST_FAIL
      li x5, 0xabcdabcdabcdabcd
      xor x6, x5, x3
      bne x6, x5, TEST_FAIL
.global SLL
SLL:
      li x4, 0xabcd1234abcd1234
      sll x2, x4, x0
      bne x2, x4, TEST_FAIL
      li x4, 0xabcd1234abcd1234
      li x5, 63
      sll x2, x4, x5
      li x3, 0x0
      bne x2, x3, TEST_FAIL
      li x4, 0xaaaaaaaaaaaaaaaa
      li x5, 0x8
      sll x2, x4, x5
      li x3, 0xaaaaaaaaaaaaaa00
      bne x2, x3, TEST_FAIL
      li x4, 0xaaaaaaaaaaaaaaaa
      li x5, 0x41
      sll x2, x4, x5
      li x3, 0x5555555555555554
      bne x2, x3, TEST_FAIL
.global SLLW
SLLW:
      li x4, 0xabcd1234
      li x3, 0xffffffffabcd1234
      sllw x2, x4, x0
      bne x2, x3, TEST_FAIL
      li x4, 0xabcd1234abcd1234
      li x5, 31
      sllw x2, x4, x5
      li x3, 0x0
      bne x2, x3, TEST_FAIL
      li x4, 0xaaaaaaaaaaaaaaaa
      li x5, 0x8
      sllw x2, x4, x5
      li x3, 0xffffffffaaaaaa00
      bne x2, x3, TEST_FAIL
      li x4, 0xaaaaaaaaaaaaaaaa
      li x5, 0x21
      sllw x2, x4, x5
      li x3, 0x55555554
      bne x2, x3, TEST_FAIL
.global SRL
SRL:
      li x2, 0xabcd1234abcd1234
      srl x3, x2, x0
      bne x2, x3, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      li x5, 63
      srl x3, x2, x5
      li x4, 0x1
      bne x3, x4, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      li x5, 0x1
      srl x2, x2, x5
      li x3, 0x5555555555555555
      bne x2, x3, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      li x5, 0x41
      srl x2, x2, x5
      li x3, 0x5555555555555555
      bne x2, x3, TEST_FAIL
.global SRLW
SRLW:
      li x2, 0xabcd1234
      li x4, 0xffffffffabcd1234
      srlw x3, x2, x0
      bne x4, x3, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      li x5, 31
      srlw x3, x2, x5
      li x4, 0x1
      bne x3, x4, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      li x5, 0x1
      srlw x2, x2, x5
      li x3, 0x55555555
      bne x2, x3, TEST_FAIL
      li x2, 0xaaaaaaaaaaaaaaaa
      li x5, 0x21
      srlw x2, x2, x5
      li x3, 0x55555555
      bne x2, x3, TEST_FAIL
.global SRA
SRA:
      li x2, 0xaaaaaaaaaaaaaaaa
      li x5, 0x3f
      sra x2, x2, x5
      li x3, 0xffffffffffffffff
      bne x2, x3, TEST_FAIL
      li x2, 0x5555555555555555
      li x5, 0x3f
      sra x2, x2, x5
      li x3, 0
      bne x2, x3, TEST_FAIL
      li x2, 0x5555555555555555
      li x5, 0x1
      sra x2, x2, x5
      li x3, 0x2aaaaaaaaaaaaaaa
      bne x2, x3, TEST_FAIL
      li x2, 0x5555555555555555
      li x5, 0x41
      sra x2, x2, x5
      li x3, 0x2aaaaaaaaaaaaaaa
      bne x2, x3, TEST_FAIL
      li x2, 0xabcd1234abcd1234
      sra x2, x2, x0
      li x3, 0xabcd1234abcd1234
      bne x2, x3, TEST_FAIL
.global SRAW
SRAW:
      li x2, 0xaaaaaaaaaaaaaaaa
      li x5, 0x1f
      sraw x2, x2, x5
      li x3, 0xffffffffffffffff
      bne x2, x3, TEST_FAIL
      li x2, 0x5555555555555555
      li x5, 0x1f
      sraw x2, x2, x5
      li x3, 0
      bne x2, x3, TEST_FAIL
      li x2, 0x5555555555555555
      li x5, 0x1
      sraw x2, x2, x5
      li x3, 0x2aaaaaaa
      bne x2, x3, TEST_FAIL
      li x2, 0x5555555555555555
      li x5, 0x21
      sraw x2, x2, x5
      li x3, 0x2aaaaaaa
      bne x2, x3, TEST_FAIL
      li x2, 0xabcd1234abcd1234
      sraw x2, x2, x0
      li x3, 0xffffffffabcd1234
      bne x2, x3, TEST_FAIL
.global MUL
MUL:
      li x3, 0x8000000000000000
      li x4, 0x7fffffffffffffff
      li x10,0xabcdeabcde
      mul x5, x0, x3
      bne x5, x0, TEST_FAIL
      mul x5, x0, x0
      bne x5, x0, TEST_FAIL
      mul x5, x0, x4
      bne x5, x0, TEST_FAIL
      mul x5, x4, x4
      li x6, 0x1
      bne x5, x6, TEST_FAIL
      mul x5, x4, x0
      bne x5, x0, TEST_FAIL
      mul x5, x4, x3
      li x6, 0x8000000000000000
      bne x5, x6, TEST_FAIL
      mul x5, x4, x10
      li x6, 0xffffff5432154322
      bne x5, x6, TEST_FAIL
      mul x5, x3, x3
      li x6, 0x0
      bne x5, x6, TEST_FAIL
      mul x5, x3, x0
      bne x5, x0, TEST_FAIL
      mul x5, x3, x4
      li x6, 0x8000000000000000
      bne x6, x5, TEST_FAIL
      mul x5, x3, x10
      li x6, 0x0
      bne x6, x5, TEST_FAIL
      mul x5, x10, x10
      li x6, 0xbd3a1a4d5d2ed084
      bne x6, x5, TEST_FAIL
.global MULW
MULW:
      li x3, 0xabcdabcd80000000
      li x4, 0x7fffffff
      li x10,0xabcde
      mulw x5, x0, x3
      bne x5, x0, TEST_FAIL
      mulw x5, x0, x0
      bne x5, x0, TEST_FAIL
      mulw x5, x0, x4
      bne x5, x0, TEST_FAIL
      mulw x5, x4, x4
      li x6, 0x1
      bne x5, x6, TEST_FAIL
      mulw x5, x4, x0
      bne x5, x0, TEST_FAIL
      mulw x5, x4, x3
      li x6, 0xffffffff80000000
      bne x5, x6, TEST_FAIL
      mulw x5, x4, x10
      li x6, 0xfffffffffff54322
      bne x5, x6, TEST_FAIL
      mulw x5, x3, x3
      li x6, 0x0
      bne x5, x6, TEST_FAIL
      mulw x5, x3, x0
      bne x5, x0, TEST_FAIL
      mulw x5, x3, x4
      li x6, 0xffffffff80000000
      bne x6, x5, TEST_FAIL
      mulw x5, x3, x10
      li x6, 0x0
      bne x6, x5, TEST_FAIL
      mulw x5, x10, x10
      li x6, 0x4caed084
      bne x6, x5, TEST_FAIL
.global MULH
MULH:
      li x3, 0x7fffffffffffffff
      li x4, 0x8000000000000000
      li x10,0xabcde
      li x11,0xabcdeabcde
      mulh x5, x0, x3
      bne x5, x0, TEST_FAIL
      mulh x5, x0, x0
      bne x5, x0, TEST_FAIL
      mulh x5, x0, x4
      bne x5, x0, TEST_FAIL
      mulh x5, x4, x3
      li x6, 0xc000000000000000
      bne x5, x6, TEST_FAIL
      mulh x5, x4, x0
      bne x5, x0, TEST_FAIL
      mulh x5, x4, x4
      li x6, 0x4000000000000000
      bne x5, x6, TEST_FAIL
      mulh x5, x4, x10
      li x6, 0xfffffffffffaa191
      bne x5, x6, TEST_FAIL
      mulh x5, x11, x11
      li x6, 0x734c
      bne x6, x5, TEST_FAIL
.global MULHU
MULHU:
      li x3, 0xffffffffffffffff
      li x4, 0x23456
      li x10, 0xabcde
      mulhu x5, x0, x3
      bne x5, x0, TEST_FAIL
      mulhu x5, x0, x0
      bne x5, x0, TEST_FAIL
      mulhu x5, x0, x4
      bne x5, x0, TEST_FAIL
      mulhu x5, x4, x3
      li x6, 0x23455
      bne x5, x6, TEST_FAIL
      mulhu x5, x4, x4
      li x6,0x0
      bne x5, x6, TEST_FAIL
      mulhu x5, x3, x3
      li x6, 0xfffffffffffffffe
      bne x5, x6, TEST_FAIL
      mulhu x5, x3, x4
      li x6, 0x23455
      bne x6, x5, TEST_FAIL
.global MULHSU
MULHSU:
      li x3, 0x8000000000000000
      li x4, 0x7fffffffffffffff
      li x10,0x23456
      mulhsu x5, x0, x3
      bne x5, x0, TEST_FAIL
      mulhsu x5, x0, x0
      bne x5, x0, TEST_FAIL
      mulhsu x5, x0, x4
      bne x5, x0, TEST_FAIL
      mulhsu x5, x0, x10
      bne x5, x0, TEST_FAIL
      mulhsu x5, x4, x3
      li x6, 0x3fffffffffffffff
      bne x5, x6, TEST_FAIL
      mulhsu x5, x4, x4
      li x6, 0x3fffffffffffffff
      bne x5, x6, TEST_FAIL
      mulhsu x5, x4, x10
      li x6, 0x11a2a
      bne x5, x6, TEST_FAIL
      mulhsu x5, x3, x3
      li x6, 0xc000000000000000
      bne x5, x6, TEST_FAIL
      mulhsu x5, x3, x4
      li x6, 0xc000000000000000
      bne x6, x5, TEST_FAIL
      mulhsu x5, x3, x10
      li x6, 0xfffffffffffee5d5
      bne x6, x5, TEST_FAIL
.global DIV
DIV:
      li x2, 0x8000000000000000
      li x3, 0xabcdabcdabcdabcd
      li x4, 0x789a789a789a789a
      li x5, 0xffffffffffffffff
      div x6, x0, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      div x6, x3, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      div x6, x4, x3
      li x7, 0xffffffffffffffff
      bne x6, x7, TEST_FAIL
      div x6, x3, x0
      mv x7, x5
      bne x6, x7, TEST_FAIL
      div x6, x2, x5
      mv x7, x2
      bne x6, x7, TEST_FAIL
.global DIVW
DIVW:
      li x2, 0xabcdabcd80000000
      li x3, 0xabcdabcdabcdabcd
      li x4, 0x789a789a789a789a
      li x5, 0xffffffffffffffff
      divw x6, x0, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      divw x6, x3, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      divw x6, x4, x3
      li x7, 0xffffffffffffffff
      bne x6, x7, TEST_FAIL
      divw x6, x3, x0
      mv x7, x5
      bne x6, x7, TEST_FAIL
      divw x6, x2, x5
      li x7, 0xffffffff80000000
      bne x6, x7, TEST_FAIL
.global DIVU
DIVU:
      li x2, 0x8000000000000000
      li x3, 0xabcdabcdabcdabcd
      li x4, 0x789a789a789a789a
      li x5, 0xffffffffffffffff
      divu x6, x0, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      divu x6, x3, x4
      li x7, 0x1
      bne x6, x7, TEST_FAIL
      divu x6, x4, x3
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      divu x6, x3, x0
      mv x7, x5
      bne x6, x7, TEST_FAIL
      divu x6, x2, x5
      mv x7, x0
      bne x6, x7, TEST_FAIL
.global DIVUW
DIVUW:
      li x2, 0xabcdabcd80000000
      li x3, 0xabcdabcdabcdabcd
      li x4, 0x789a789a789a789a
      li x5, 0xffffffffffffffff
      divuw x6, x0, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      divuw x6, x3, x4
      li x7, 0x1
      bne x6, x7, TEST_FAIL
      divuw x6, x4, x3
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      divuw x6, x3, x0
      mv x7, x5
      bne x6, x7, TEST_FAIL
      divuw x6, x2, x5
      mv x7, x0
      bne x6, x7, TEST_FAIL
.global REM
REM:
      li x2, 0x8000000000000000
      li x3, 0xabcdabcdabcdabcd
      li x4, 0x789a789a789a789a
      li x5, 0xffffffffffffffff
      rem x6, x0, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      rem x6, x3, x4
      li x7, 0xabcdabcdabcdabcd
      bne x6, x7, TEST_FAIL
      rem x6, x4, x3
      li x7, 0x2468246824682467
      bne x6, x7, TEST_FAIL
      rem x6, x3, x0
      mv x7, x3
      bne x6, x7, TEST_FAIL
      rem x6, x2, x5
      mv x7, x0
      bne x6, x7, TEST_FAIL
.global REMW
REMW:
      li x2, 0xabcdabcd80000000
      li x3, 0xabcdabcdabcdabcd
      li x4, 0x789a789a789a789a
      li x5, 0xffffffffffffffff
      remw x6, x0, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      remw x6, x3, x4
      li x7, 0xffffffffabcdabcd
      bne x6, x7, TEST_FAIL
      remw x6, x4, x3
      li x7, 0x24682467
      bne x6, x7, TEST_FAIL
      remw x6, x3, x0
      li x31, 0xffffffffabcdabcd
      mv x7, x31
      bne x6, x7, TEST_FAIL
      remw x6, x2, x5
      mv x7, x0
      bne x6, x7, TEST_FAIL
.global REMU
REMU:
      li x2, 0x8000000000000000
      li x3, 0xabcdabcdabcdabcd
      li x4, 0x789a789a789a789a
      li x5, 0xffffffffffffffff
      remu x6, x0, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      remu x6, x3, x4
      li x7, 0x3333333333333333
      bne x6, x7, TEST_FAIL
      remu x6, x4, x3
      li x7, 0x789a789a789a789a
      bne x6, x7, TEST_FAIL
      remu x6, x3, x0
      mv x7, x3
      bne x6, x7, TEST_FAIL
      remu x6, x2, x5
      mv x7, x2
      bne x6, x7, TEST_FAIL
.global REMUW
REMUW:
      li x2, 0xabcdabcd80000000
      li x3, 0xabcdabcdabcdabcd
      li x4, 0x789a789a789a789a
      li x5, 0xffffffffffffffff
      remuw x6, x0, x4
      li x7, 0x0
      bne x6, x7, TEST_FAIL
      remuw x6, x3, x4
      li x7, 0x33333333
      bne x6, x7, TEST_FAIL
      remuw x6, x4, x3
      li x7, 0x789a789a
      bne x6, x7, TEST_FAIL
      remuw x6, x3, x0
      li x7, 0xffffffffabcdabcd
      bne x6, x7, TEST_FAIL
      remuw x6, x2, x5
      li x7, 0xffffffff80000000
      bne x6, x7, TEST_FAIL
      .option rvc
.global CLI
CLI:
      c.li x4, 0x1f
      li x5, 0x1f
      bne x4, x5, TEST_FAIL
      c.li x4, -32
      li x5, -32
      bne x4, x5, TEST_FAIL
.global CLUI
CLUI:
      c.lui x4, 0xfffe0
      li x5, 0xfffffffffffe0000
      bne x4, x5, TEST_FAIL
      c.lui x4, 0x1f
      li x5, 0x1f000
      bne x4, x5, TEST_FAIL
.global CADDI
CADDI:
      li x4, 0x8000000000000000
      li x5, 0x7fffffffffffffe0
      c.addi x4, -32
      bne x4, x5, TEST_FAIL
      li x4, 0x7fffffffffffffff
      li x5, 0x800000000000001e
      c.addi x4, 31
      bne x4, x5, TEST_FAIL
.global CADDIW
CADDIW:
      li x4, 0xabcdabcd80000000
      li x5, 0x7fffffe0
      c.addiw x4, -32
      bne x4, x5, TEST_FAIL
      li x4, 0x7fffffff
      li x5, 0xffffffff8000001e
      c.addiw x4, 31
      bne x4, x5, TEST_FAIL
.global CADDI16SP
CADDI16SP:
      li x2, 0x0
      li x3, -512
      c.addi16sp x2, -512
      bne x2, x3, TEST_FAIL
      li x2, 0xffffffffffffff20
      li x3, 0xfffffffffffffee0
      c.addi16sp x2, -64
      bne x2, x3, TEST_FAIL
      li x2, 0x0
      li x3, 0x1f0
      c.addi16sp x2, 0x1f0
      bne x2, x3, TEST_FAIL
.global CADDI4SPN
CADDI4SPN:
      li x2, 0x0
      li x3, 0x3fc
      c.addi4spn x8, x2, 0x3fc
      bne x8, x3, TEST_FAIL
      li x2, 0x0
      li x3, 124
      c.addi4spn x8, x2,0x7c
      bne x8, x3, TEST_FAIL
.global CSLLI
CSLLI:
      li x3, 0xaaaaaaaaaaaaaaaa
      li x4, 0x0
      c.slli x3, 0x3f
      bne x3, x4, TEST_FAIL
      li x3, 0xaaaa
      li x4, 0x55550000
      c.slli x3, 0xf
      bne x3, x4, TEST_FAIL
      li x8, 0xaaaaaaaaaaaaaaaa
      li x4, 0x1
      c.srli x8, 0x3f
      bne x8, x4, TEST_FAIL
      li x8, 0x5555555555555555
      li x4, 0x555555555555555
      c.srli x8, 0x4
      bne x8, x4, TEST_FAIL
      li x8, 0xffffffffffffffff
      li x4, 0xfffffffffffffff
      c.srli x8, 0x4
      bne x8, x4, TEST_FAIL
.global CSRAI
CSRAI:
      li x8, 0xaaaaaaaaaaaaaaaa
      li x4, 0xffffffffffffffff
      c.srai x8, 0x3f
      bne x8, x4, TEST_FAIL
      li x8, 0x5555555555555555
      li x4, 0x555555555555555
      c.srai x8, 0x4
      bne x8, x4, TEST_FAIL
.global CANDI
CANDI:
      li x8, 0xaaaaaaaaaaaaaaaa
      li x4, 0xaaaaaaaaaaaaaaaa
      c.andi x8, -1
      bne x8, x4, TEST_FAIL
      li x8, 0xaaaaaaaaaaaaaaaa
      li x4, 0xa
      c.andi x8, 0x1f
      bne x8, x4, TEST_FAIL
      li x8, 0xaaaaaaaa
      li x4, 0xaaaaaaa0
      c.andi x8, -32
      bne x8, x4, TEST_FAIL
.global CMV
CMV:
      li x4, 0xabcdabcdabcdabcd
      li x5, 0x0
      c.mv x5, x4
      bne x4, x5, TEST_FAIL
.global CADD
CADD:
      li x3, 0xffffffffffffffff
      li x4, 0xffffffffffffffff
      c.add x3, x4
      li x5, 0xfffffffffffffffe
      bne x3, x5, TEST_FAIL
      li x3, 0x8000000000000000
      li x4, 0x8000000000000000
      c.add x3, x4
      li x5, 0x0
      bne x3, x5, TEST_FAIL
      li x3, 0x7fffffffffffffff
      li x4, 0x7fffffffffffffff
      c.add x3, x4
      li x5, 0xfffffffffffffffe
      bne x3, x5, TEST_FAIL
.global CADDW
CADDW:
      li x8, 0xabcdabcdffffffff
      li x9, 0xabcdabcdffffffff
      c.addw x8, x9
      li x10, 0xfffffffffffffffe
      bne x8, x10, TEST_FAIL
      li x8, 0xabcdabcd80000000
      li x9, 0xabcdabcd80000000
      c.addw x8, x9
      li x10, 0x0
      bne x8, x10, TEST_FAIL
      li x8, 0xabcdabcd7fffffff
      li x9, 0xabcdabcd7fffffff
      c.addw x8, x9
      li x10, 0xfffffffffffffffe
      bne x8, x10, TEST_FAIL
.global CAND
CAND:
      li x8, 0x0
      li x9, 0xffffffffffffffff
      li x5, 0xabcdabcdabcdabcd
      li x10, 0xabcdabcdabcdabcd
      c.and x10, x9
      bne x10, x5, TEST_FAIL
      li x10, 0xabcdabcdabcdabcd
      c.and x10, x8
      bne x10, x8, TEST_FAIL
.global COR
COR:
      li x8, 0x0
      li x9, 0xffffffffffffffff
      li x5, 0xabcdabcdabcdabcd
      li x10, 0xabcdabcdabcdabcd
      c.or x10, x9
      bne x10, x9, TEST_FAIL
      li x5, 0xabcdabcdabcdabcd
      li x10, 0xabcdabcdabcdabcd
      c.or x10, x8
      bne x10, x5, TEST_FAIL
.global CXOR
CXOR:
      li x8, 0x0
      li x9, 0xffffffffffffffff
      li x10, 0xabcdabcdabcdabcd
      not x5, x10
      c.xor x10, x9
      bne x10, x5, TEST_FAIL
      li x5, 0xabcdabcdabcdabcd
      li x10, 0xabcdabcdabcdabcd
      c.xor x10, x8
      bne x10, x5, TEST_FAIL
.global CSUB
CSUB:
      li x8, 0x800000000000000
      li x9, 0x7ffffffffffffff
      c.sub x8, x9
      li x5, 0x1
      bne x8, x5, TEST_FAIL
      li x8, 0x7fffffffffffffff
      li x9, 0x8000000000000000
      c.sub x8, x9
      li x5, 0xffffffffffffffff
      bne x8, x5, TEST_FAIL
      li x8, 0xf
      li x9, 0x2
      c.sub x8, x9
      li x5, 0xd
      bne x8, x5, TEST_FAIL
.global CSUBW
CSUBW:
      li x8, 0xabcdabcd80000000
      li x9, 0xabcdabcd7fffffff
      c.subw x8, x9
      li x5, 0x1
      bne x8, x5, TEST_FAIL
      li x8, 0xabcdabcd7fffffff
      li x9, 0xabcdabcd80000000
      c.subw x8, x9
      li x5, 0xffffffffffffffff
      bne x8, x5, TEST_FAIL
      li x8, 0xf
      li x9, 0x2
      c.subw x8, x9
      li x5, 0xd
      bne x8, x5, TEST_FAIL
      .option norvc
.global STORE1
STORE1:
      li x3,0xffffffffffffffff
      li x8,0xaaaaaaaaaaaaaaaa
      li x4,0x000000000000a000
      sd x8,0xfffffffffffffff8(x4)
      ld x5,0xfffffffffffffff8(x4)
      bne x8,x5,TEST_FAIL
      sd x8,0x7f8(x4)
      ld x5,0x7f8(x4)
      bne x8,x5,TEST_FAIL
      sd x3,0x0(x4)
      ld x5,0x0(x4)
      bne x3,x5,TEST_FAIL
.global STORE2
STORE2:
      li x6,0xffffffff80000000
      li x8,0x0000000080000000
      li x9,0xaaaaaaaaaaaaaaaa
      li x10,0xaaaaaaaa80000000
      sd x9,0x0(x4)
      sw x6,0x0(x4)
      lwu x7,0x0(x4)
      lw x5,0x0(x4)
      ld x11,0x0(x4)
      bne x7,x8,TEST_FAIL
      bne x6,x5,TEST_FAIL
      bne x11,x10,TEST_FAIL
.global STORE3
STORE3:
      sw x6,0xfffffffffffffffc(x4)
      lwu x7,0xfffffffffffffffc(x4)
      lw x5,0xfffffffffffffffc(x4)
      bne x7,x8,TEST_FAIL
      bne x6,x5,TEST_FAIL
      sw x6,0x7fc(x4)
      lwu x7,0x7fc(x4)
      lw x5,0x7fc(x4)
      bne x7,x8,TEST_FAIL
      bne x6,x5,TEST_FAIL
.global STORE4
STORE4:
      li x6,0xffffffffffff8000
      li x8,0x0000000000008000
      li x9,0xaaaaaaaaaaaaaaaa
      li x10,0xaaaaaaaaaaaa8000
      li x31,0xffffffffaaaa8000
      sd x9,0x0(x4)
      sh x6,0x0(x4)
      lhu x7,0x0(x4)
      lh x5,0x0(x4)
      lw x11,0x0(x4)
      bne x7,x8,TEST_FAIL
      bne x6,x5,TEST_FAIL
      bne x11,x31,TEST_FAIL
.global STORE5
STORE5:
      sh x6,0xfffffffffffffffe(x4)
      lhu x7,0xfffffffffffffffe(x4)
      lh x5,0xfffffffffffffffe(x4)
      bne x7,x8,TEST_FAIL
      bne x6,x5,TEST_FAIL
.global STORE6
STORE6:
      sh x6,0x7fe(x4)
      lhu x7,0x7fe(x4)
      lh x5,0x7fe(x4)
      bne x7,x8,TEST_FAIL
      bne x6,x5,TEST_FAIL
.global STORE7
STORE7:
      li x3,0xffffffffffffffff
      li x8,0x00000000000000ff
      li x9,0xaaaaaaaaaaaaaaaa
      li x10,0xaaaaaaaaaaaaaaff
      li x31,0xffffffffaaaaaaff
      sd x9,0x0(x4)
      sb x3,0x0(x4)
      lbu x7,0x0(x4)
      lb x5,0x0(x4)
      lw x11,0x0(x4)
      bne x7,x8,TEST_FAIL
      bne x3,x5,TEST_FAIL
      bne x31,x11,TEST_FAIL
.global STORE8
STORE8:
      sb x3,0xffffffffffffffff(x4)
      lbu x7,0xffffffffffffffff(x4)
      lb x5,0xffffffffffffffff(x4)
      bne x7,x8,TEST_FAIL
      bne x3,x5,TEST_FAIL
      sb x3,0x7ff(x4)
      lbu x7,0x7ff(x4)
      lb x5,0x7ff(x4)
      bne x7,x8,TEST_FAIL
      bne x3,x5,TEST_FAIL
      li x8,0xaaaaaaaaaaaaaaaa
      li x4,0x000000000010000
      li x5,0x000000000010000
.global strb0
strb0:
      li x29,0x000000000020000
      sd x0,0x0(x29)
      srb x8,x4,x5,0
      ld x31,0x0(x29)
      li x30,0xaa
      bne x30,x31,TEST_FAIL
.global strb1
strb1:
      li x29,0x000000000030000
      sd x0,0x0(x29)
      srb x8,x4,x5,1
      ld x31,0x0(x29)
      li x30,0xaa
      bne x30,x31,TEST_FAIL
.global strb2
strb2:
      li x29,0x000000000050000
      sd x0,0x0(x29)
      srb x8,x4,x5,2
      ld x31,0x0(x29)
      li x30,0xaa
      bne x30,x31,TEST_FAIL
.global strb3
strb3:
      li x29,0x000000000090000
      sd x0,0x0(x29)
      srb x8,x4,x5,3
      ld x31,0x0(x29)
      li x30,0xaa
      bne x30,x31,TEST_FAIL
.global strh0
strh0:
      li x29,0x000000000020000
      sd x0,0x0(x29)
      srh x8,x4,x5,0
      ld x31,0x0(x29)
      li x30,0xaaaa
      bne x30,x31,TEST_FAIL
.global strh1
strh1:
      li x29,0x000000000030000
      sd x0,0x0(x29)
      srh x8,x4,x5,1
      ld x31,0x0(x29)
      li x30,0xaaaa
      bne x30,x31,TEST_FAIL
.global strh2
strh2:
      li x29,0x000000000050000
      sd x0,0x0(x29)
      srh x8,x4,x5,2
      ld x31,0x0(x29)
      li x30,0xaaaa
      bne x30,x31,TEST_FAIL
.global strh3
strh3:
      li x29,0x000000000090000
      sd x0,0x0(x29)
      srh x8,x4,x5,3
      ld x31,0x0(x29)
      li x30,0xaaaa
      bne x30,x31,TEST_FAIL
.global strw0
strw0:
      li x29,0x000000000020000
      sd x0,0x0(x29)
      srw x8,x4,x5,0
      ld x31,0x0(x29)
      li x30,0xaaaaaaaa
      bne x30,x31,TEST_FAIL
.global strw1
strw1:
      li x29,0x000000000030000
      sd x0,0x0(x29)
      srw x8,x4,x5,1
      ld x31,0x0(x29)
      li x30,0xaaaaaaaa
      bne x30,x31,TEST_FAIL
.global strw2
strw2:
      li x29,0x000000000050000
      sd x0,0x0(x29)
      srw x8,x4,x5,2
      ld x31,0x0(x29)
      li x30,0xaaaaaaaa
      bne x30,x31,TEST_FAIL
.global strw3
strw3:
      li x29,0x000000000090000
      sd x0,0x0(x29)
      srw x8,x4,x5,3
      ld x31,0x0(x29)
      li x30,0xaaaaaaaa
      bne x30,x31,TEST_FAIL
.global strd0
strd0:
      li x29,0x000000000020000
      sd x0,0x0(x29)
      srd x8,x4,x5,0
      ld x31,0x0(x29)
      li x30,0xaaaaaaaaaaaaaaaa
      bne x30,x31,TEST_FAIL
.global strd1
strd1:
      li x29,0x000000000030000
      sd x0,0x0(x29)
      srd x8,x4,x5,1
      ld x31,0x0(x29)
      li x30,0xaaaaaaaaaaaaaaaa
      bne x30,x31,TEST_FAIL
.global strd2
strd2:
      li x29,0x000000000050000
      sd x0,0x0(x29)
      srd x8,x4,x5,2
      ld x31,0x0(x29)
      li x30,0xaaaaaaaaaaaaaaaa
      bne x30,x31,TEST_FAIL
.global strd3
strd3:
      li x29,0x000000000090000
      sd x0,0x0(x29)
      srd x8,x4,x5,3
      ld x31,0x0(x29)
      li x30,0xaaaaaaaaaaaaaaaa
      bne x30,x31,TEST_FAIL
      li x8,0xaaaaaaaaaaaaaaaa
      li x4,0x000000000010000
      li x5,0x000000000010000
.global sutrb0
sutrb0:
      li x29,0x000000000020000
      sd x0,0x0(x29)
      surb x8,x4,x5,0
      ld x31,0x0(x29)
      li x30,0xaa
      bne x30,x31,TEST_FAIL
.global sturb1
sturb1:
      li x29,0x000000000030000
      sd x0,0x0(x29)
      surb x8,x4,x5,1
      ld x31,0x0(x29)
      li x30,0xaa
      bne x30,x31,TEST_FAIL
.global sturb2
sturb2:
      li x29,0x000000000050000
      sd x0,0x0(x29)
      surb x8,x4,x5,2
      ld x31,0x0(x29)
      li x30,0xaa
      bne x30,x31,TEST_FAIL
.global sturb3
sturb3:
      li x29,0x000000000090000
      sd x0,0x0(x29)
      surb x8,x4,x5,3
      ld x31,0x0(x29)
      li x30,0xaa
      bne x30,x31,TEST_FAIL
.global sturh0
sturh0:
      li x29,0x000000000020000
      sd x0,0x0(x29)
      surh x8,x4,x5,0
      ld x31,0x0(x29)
      li x30,0xaaaa
      bne x30,x31,TEST_FAIL
.global sturh1
sturh1:
      li x29,0x000000000030000
      sd x0,0x0(x29)
      surh x8,x4,x5,1
      ld x31,0x0(x29)
      li x30,0xaaaa
      bne x30,x31,TEST_FAIL
.global sturh2
sturh2:
      li x29,0x000000000050000
      sd x0,0x0(x29)
      surh x8,x4,x5,2
      ld x31,0x0(x29)
      li x30,0xaaaa
      bne x30,x31,TEST_FAIL
.global sturh3
sturh3:
      li x29,0x000000000090000
      sd x0,0x0(x29)
      surh x8,x4,x5,3
      ld x31,0x0(x29)
      li x30,0xaaaa
      bne x30,x31,TEST_FAIL
.global sturw0
sturw0:
      li x29,0x000000000020000
      sd x0,0x0(x29)
      surw x8,x4,x5,0
      ld x31,0x0(x29)
      li x30,0xaaaaaaaa
      bne x30,x31,TEST_FAIL
.global sturw1
sturw1:
      li x29,0x000000000030000
      sd x0,0x0(x29)
      surw x8,x4,x5,1
      ld x31,0x0(x29)
      li x30,0xaaaaaaaa
      bne x30,x31,TEST_FAIL
.global sturw2
sturw2:
      li x29,0x000000000050000
      sd x0,0x0(x29)
      surw x8,x4,x5,2
      ld x31,0x0(x29)
      li x30,0xaaaaaaaa
      bne x30,x31,TEST_FAIL
.global sturw3
sturw3:
      li x29,0x000000000090000
      sd x0,0x0(x29)
      surw x8,x4,x5,3
      ld x31,0x0(x29)
      li x30,0xaaaaaaaa
      bne x30,x31,TEST_FAIL
.global sturd0
sturd0:
      li x29,0x000000000020000
      sd x0,0x0(x29)
      surd x8,x4,x5,0
      ld x31,0x0(x29)
      li x30,0xaaaaaaaaaaaaaaaa
      bne x30,x31,TEST_FAIL
.global sturd1
sturd1:
      li x29,0x000000000030000
      sd x0,0x0(x29)
      surd x8,x4,x5,1
      ld x31,0x0(x29)
      li x30,0xaaaaaaaaaaaaaaaa
      bne x30,x31,TEST_FAIL
.global sturd2
sturd2:
      li x29,0x000000000050000
      sd x0,0x0(x29)
      surd x8,x4,x5,2
      ld x31,0x0(x29)
      li x30,0xaaaaaaaaaaaaaaaa
      bne x30,x31,TEST_FAIL
.global sturd3
sturd3:
      li x29,0x000000000090000
      sd x0,0x0(x29)
      surd x8,x4,x5,3
      ld x31,0x0(x29)
      li x30,0xaaaaaaaaaaaaaaaa
      bne x30,x31,TEST_FAIL
.global double_ld_st_1
double_ld_st_1:
      li x12,0x786755d775fe6756
      fmv.d.x f12,x12
      fsd f12,-2048(x4)
      fld f19,-2048(x4)
      fmv.x.d x19,f19
      bne x12,x19, TEST_FAIL
.global double_ld_st_2
double_ld_st_2:
      li x12,0x786755d775fe6756
      fmv.d.x f12,x12
      fsd f12,0x7f8(x4)
      fld f19,0x7f8(x4)
      fmv.x.d x19,f19
      bne x12,x19, TEST_FAIL
.global float_ld_st_1
float_ld_st_1:
      li x14,0x786755d775fe6756
      li x13,0xffffffff75fe6756
      fmv.d.x f14,x14
      fsw f14,-2048(x4)
      flw f20,-2048(x4)
      fmv.x.d x20,f20
      bne x13,x20, TEST_FAIL
.global float_ld_st_2
float_ld_st_2:
      li x14,0x786755d775fe6756
      li x13,0xffffffff75fe6756
      fmv.d.x f14,x14
      fsw f14,0x7fc(x4)
      flw f20,0x7fc(x4)
      fmv.x.d x20,f20
      bne x13,x20, TEST_FAIL
      jal x1,BRANCH_LABEL
.global A
A:
      jal x0,JREG_LABEL
.global BRANCH_LABEL
BRANCH_LABEL:
      li x4,0x8000000000000000
      li x3,0xffffffffffffffff
      beq x0,x4,TEST_FAIL
      beq x4,x4,BNE_LABEL
      beq x0,x0,TEST_FAIL
.global BNE_LABEL
BNE_LABEL:
      bne x4,x4,TEST_FAIL
      bne x0,x4,BLT_LABEL
      beq x0,x0,TEST_FAIL
.global BLT_LABEL
BLT_LABEL:
      blt x0,x4,TEST_FAIL
      blt x4,x4,TEST_FAIL
      blt x4,x0,BGE_LABEL
      beq x0,x0,TEST_FAIL
.global BGE_LABEL
BGE_LABEL:
      bge x4,x3,TEST_FAIL
      bge x3,x4,BGEE_LABEL
      beq x0,x0,TEST_FAIL
.global BGEE_LABEL
BGEE_LABEL:
      bge x3,x3,BGEU_LABEL
      beq x0,x0,TEST_FAIL
.global BGEU_LABEL
BGEU_LABEL:
      bgeu x4,x3,TEST_FAIL
      bgeu x3,x4,BGEUE_LABEL
      beq x0,x0,TEST_FAIL
.global BGEUE_LABEL
BGEUE_LABEL:
      bgeu x3,x3,BLTU_LABEL
      beq x0,x0,TEST_FAIL
.global BLTU_LABEL
BLTU_LABEL:
      bltu x4,x0,TEST_FAIL
      bltu x4,x4,TEST_FAIL
      bltu x0,x4,J_LABEL
      beq x0,x0,TEST_FAIL
.global J_LABEL
J_LABEL:
      jalr x1,x1,0x0
.global B
B:
      jal x0,C_LABEL
.global JREG_LABEL
JREG_LABEL:
      jalr x0,x1,0x0
.global C_LABEL
C_LABEL:
      .option rvc
      li x8,0xffffffffffffffff
      li x9,0xaaaaaaaaaaaaaaaa
.global A2
A2:
      li x10,0x0000b000
      c.sd x8,0x0(x10)
      ld x11,0x0(x10)
      bne x8,x11,TEST_FAIL
      c.sd x8,0xf8(x10)
      ld x11,0xf8(x10)
      bne x8,x11,TEST_FAIL
      c.sd x8,0x38(x10)
      ld x11,0x38(x10)
      bne x8,x11,TEST_FAIL
      c.sd x8,0x80(x10)
      ld x11,0x80(x10)
      bne x8,x11,TEST_FAIL
.global A1
A1:
      sd x9,0x80(x10)
      c.ld x11,0x80(x10)
      bne x9,x11,TEST_FAIL
      sd x9,0x38(x10)
      c.ld x11,0x38(x10)
      bne x9,x11,TEST_FAIL
      sd x9,0xf8(x10)
      c.ld x11,0xf8(x10)
      bne x9,x11,TEST_FAIL
      sd x9,0x0(x10)
      c.ld x11,0x0(x10)
      bne x9,x11,TEST_FAIL
      li x8,0xffffffffffffffff
      li x9,0xaaaaaaaaaaaaaaaa
.global A3
A3:
      li x10,0x0000b000
      c.sw x8,0x0(x10)
      lw x11,0x0(x10)
      bne x8,x11,TEST_FAIL
      c.sw x8,0x7c(x10)
      lw x11,0x7c(x10)
      bne x8,x11,TEST_FAIL
      c.sw x8,0x3c(x10)
      lw x11,0x3c(x10)
      bne x8,x11,TEST_FAIL
      c.sw x8,0x40(x10)
      lw x11,0x40(x10)
      bne x8,x11,TEST_FAIL
.global A9
A9:
      sw x9,0x40(x10)
      c.lw x11,0x40(x10)
      li x31,0xffffffffaaaaaaaa
      bne x31,x11,TEST_FAIL
      sw x9,0x3c(x10)
      c.lw x11,0x3c(x10)
      li x31,0xffffffffaaaaaaaa
      bne x31,x11,TEST_FAIL
      sw x9,0x7c(x10)
      c.lw x11,0x7c(x10)
      li x31,0xffffffffaaaaaaaa
      bne x31,x11,TEST_FAIL
      sw x9,0x0(x10)
      c.lw x11,0x0(x10)
      li x31,0xffffffffaaaaaaaa
      bne x31,x11,TEST_FAIL
.global A5
A5:
      li x8,0x5555555555555555
      li x9,0xaaaaaaaaaaaaaaaa
      li x2,110000
      mv x7,x2
      c.sdsp x8,0x0(sp)
      ld x12,0x0(x7)
      bne x8,x12,TEST_FAIL
      c.sdsp x9,0x1f8(sp)
      ld x12,0x1f8(x7)
      bne x9,x12,TEST_FAIL
      c.sdsp x8,0x80(sp)
      ld x12,0x80(x7)
      bne x8,x12,TEST_FAIL
      c.sdsp x8,0x78(sp)
      ld x12,0x78(x7)
      bne x8,x12,TEST_FAIL
.global A6
A6:
      sd x7,0x0(x7)
      c.ldsp x12,0x0(sp)
      bne x7,x12,TEST_FAIL
      sd x7,0x80(x7)
      c.ldsp x12,0x80(sp)
      bne x7,x12,TEST_FAIL
      sd x7,0x1f8(x7)
      c.ldsp x12,0x1f8(sp)
      bne x7,x12,TEST_FAIL
      sd x7,0x78(x7)
      c.ldsp x12,0x78(sp)
      bne x7,x12,TEST_FAIL
      c.sdsp x9,0x1f8(sp)
      c.ldsp x12,0x1f8(sp)
      bne x9,x12,TEST_FAIL
.global A7
A7:
      li x8,0x5555555555555555
      li x9,0xaaaaaaaaaaaaaaaa
      li x2,110000
      mv x7,x2
      c.swsp x8,0x0(sp)
      lw x12,0x0(x7)
      li x31,0x55555555
      bne x31,x12,TEST_FAIL
      c.swsp x9,0xfc(sp)
      lw x12,0xfc(x7)
      li x30,0xffffffffaaaaaaaa
      bne x30,x12,TEST_FAIL
      c.swsp x8,0x80(sp)
      lw x12,0x80(x7)
      li x31,0x55555555
      bne x31,x12,TEST_FAIL
      c.swsp x8,0x7c(sp)
      lw x12,0x7c(x7)
      li x31,0x55555555
      bne x31,x12,TEST_FAIL
.global A8
A8:
      sw x7,0x0(x7)
      c.lwsp x12,0x0(sp)
      bne x7,x12,TEST_FAIL
      sw x7,0x80(x7)
      c.lwsp x12,0x80(sp)
      bne x7,x12,TEST_FAIL
      sw x7,0xfc(x7)
      c.lwsp x12,0xfc(sp)
      bne x7,x12,TEST_FAIL
      sw x7,0x7c(x7)
      c.lwsp x12,0x7c(sp)
      bne x7,x12,TEST_FAIL
      c.swsp x9,0xfc(sp)
      c.lwsp x12,0xfc(sp)
      li x31, 0xffffffffaaaaaaaa
      bne x31,x12,TEST_FAIL
.global c_double_ld_st
c_double_ld_st:
      li x12,0x98778fffff907864
      fmv.d.x f12,x12
      c.fsd f12,0xf8(x10)
      c.fld f13,0xf8(x10)
      fmv.x.d x19,f13
      bne x12,x19, TEST_FAIL
.global c_double_ld_st_2
c_double_ld_st_2:
      li x14,0x786755d775fe6756
      fmv.d.x f14,x14
      c.fsd f14,0x0(x10)
      c.fld f13,0x0(x10)
      fmv.x.d x20,f13
      bne x14,x20, TEST_FAIL
.global c_double_ld_st_sp
c_double_ld_st_sp:
      li x12,0x894231678564fda2
      fmv.d.x f12,x12
      c.fsdsp f12,0x1f8(x2)
      c.fldsp f19,0x1f8(x2)
      fmv.x.d x19,f19
      bne x12,x19, TEST_FAIL
.global c_double_ld_st_sp_2
c_double_ld_st_sp_2:
      li x12,0xfdad34455482da13
      fmv.d.x f12,x12
      c.fsdsp f12,0x0(x2)
      c.fldsp f19,0x0(x2)
      fmv.x.d x19,f19
      bne x12,x19, TEST_FAIL
      jal x2,JR_LABEL1
.global C
C:
      c.jr x1
.global JR_LABEL1
JR_LABEL1:
      c.j  BRANCH_LABEL_16
      beq x8,x8,TEST_FAIL
.global BRANCH_LABEL_16
BRANCH_LABEL_16:
      li x10,0x8000000000000000
      li x9,0x0000000000000000
      li x8,0xffffffffffffffff
      c.beqz x8,TEST_FAIL
      c.beqz x10,TEST_FAIL
      c.beqz x9,BNEZ_LABEL
      beq x0,x0,TEST_FAIL
.global BNEZ_LABEL
BNEZ_LABEL:
      c.bnez x9,TEST_FAIL
      c.bnez x10,C_J
.global C_J
C_J:
      c.jalr x2
.global D
D:
      jal x1,FENCE_LABEL
      beq x0,x0,TEST_FAIL
.global FENCE_LABEL
FENCE_LABEL:
      li x8,0x0
      li x9,0x0
      li x10,0xffffffffffffffff
      li x11,0xaaa
.global MIE_CSRRWL
MIE_CSRRWL:
      csrrw x1,mie,x10
      csrrw x1,mie,x0
      li x2,0xfff
      and x1,x1,x2
      bne x1,x11,TEST_FAIL
      csrrw x1,mie,x11
      bne x1,x9,TEST_FAIL
      csrrw x0,mie,x9
      bne x0,x8,TEST_FAIL
.global MIE_CSRRWI
MIE_CSRRWI:
      csrrwi x1,mie,0x1f
      bne x1,x9,TEST_FAIL
      csrrwi x1,mie,0x0
      li x12,0xa
      bne x1,x12,TEST_FAIL
      csrrwi x1,mie,0x1f
      bne x1,x9,TEST_FAIL
      csrrwi x0,mie,0x1f
      bne x0,x8,TEST_FAIL
      csrrw x0,mie,x9
.global MIE_CSRRS
MIE_CSRRS:
      csrrs x1,mie,x10
      bne x1,x9,TEST_FAIL
      csrrs x1,mie,x0
      li x2,0xfff
      and x1,x1,x2
      bne x1,x11,TEST_FAIL
      csrrs x1,mie,x8
      li x2,0xfff
      and x1,x1,x2
      bne x1,x11,TEST_FAIL
      csrrs x1,mie,x0
      li x2,0xfff
      and x1,x1,x2
      bne x1,x11,TEST_FAIL
      csrrs x0,mie,x0
      bne x0,x8,TEST_FAIL
      csrrw x0,mie,x11
.global MIE_CSRRC
MIE_CSRRC:
      csrrc x1,mie,x8
      bne x1,x11,TEST_FAIL
      csrrc x1,mie,x0
      bne x1,x11,TEST_FAIL
      csrrc x1,mie,x10
      bne x1,x11,TEST_FAIL
      csrrc x1,mie,x0
      bne x1,x9,TEST_FAIL
      csrrw x0,mie,x11
      csrrc x0,mie,x0
      bne x0,x8,TEST_FAIL
      csrrw x0,mie,x9
.global MIE_CSRRSI
MIE_CSRRSI:
      csrrsi x1,mie,0x0
      bne x1,x9,TEST_FAIL
      csrrsi x1,mie,0x1f
      bne x1,x9,TEST_FAIL
      csrrsi x1,mie,0x0
      li x12,0xa
      bne x1,x12,TEST_FAIL
      csrrsi x0,mie,0x0
      bne x0,x8,TEST_FAIL
      csrrw x0,mie,x10
.global MIE_CSRRCI
MIE_CSRRCI:
      csrrci x1,mie,0x0
      li x2,0xfff
      and x1,x1,x2
      bne x1,x11,TEST_FAIL
      csrrci x1,mie,0x0
      li x2,0xfff
      and x1,x1,x2
      bne x1,x11,TEST_FAIL
      csrrci x0,mie,0x1f
      bne x0,x8,TEST_FAIL
      csrrci x1,mie,0x0
      li x2,0xfff
      and x1,x1,x2
      li x12,0xaa0
      bne x1,x12,TEST_FAIL
      csrrw x0,mie,x9

.global a_inst
a_inst:
      li x2,0x10000
      li x3,0x20000
      li x11,0x10000
      li x12,0x10008
.global check_lr
check_lr:
      sw   x11,0x0(x2)
      lr.w x13,0x0(x2)
      lw   x14,0x0(x2)
      bne  x13,x14,TEST_FAIL
.global check_sc
check_sc:
      sw   x11,0x0(x2)
      lr.w x0,0x0(x3)
      sc.w x0,x11,(x3)
      lw   x13,0x0(x2)
      lw   x14,0x0(x3)
      bne  x13,x14,TEST_FAIL

.global check_amoswap
check_amoswap:
      ori x11,x11,0x00000024A      
      andi x11,x11,-8
      li x15,0xD777CA25BB980856      
      sd x15,0x000000000(x11)      
      li x9,0xE3434812C6482D68      
      amoswap.d x13,x9, (x11)      
      bne x15,x13,TEST_FAIL
      ld x16,(x11)
      bne x16,x9,TEST_FAIL
.global check_amoadd
check_amoadd:
      ori x11,x11,0x0000002AC      
      andi x11,x11,-8
      li x15,0x3C76E8FBD95888C1      
      sd x15,0x000000000(x11)      
      li x9,0xDB483507CBC52F0F      
      amoadd.d x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      ld x16,(x11)
      add x9,x9,x15
      bne x16,x9,TEST_FAIL
.global check_amoor
check_amoor:
      ori x11,x11,0x00000042A      
      andi x11,x11,-8
      li x15,0x15E0C8ABA1ADBAB6      
      sd x15,0x000000000(x11)      
      li x9,0xC0C293DF16F60603      
      amoor.d x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      ld x16,(x11)
      or x9,x9,x15
      bne x16,x9,TEST_FAIL
.global check_amoand
check_amoand:
      ori x11,x11,0x0000005B1      
      andi x11,x11,-8
      li x15,0xDB633D4EB949799B      
      sd x15,0x000000000(x11)      
      li x9,0x1D8923A570E63AF6      
      amoand.d x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      ld x16,(x11)
      and x9,x9,x15
      bne x16,x9,TEST_FAIL
.global check_amoxor
check_amoxor:
      ori x11,x11,0x00000067B      
      andi x11,x11,-8
      li x15,0xDCAB6DBBF9C65CC2      
      sd x15,0x000000000(x11)      
      li x9,0xBE6DBF4C4CCE1B93      
      amoxor.d x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      ld x16,(x11)
      xor x9,x9,x15
      bne x16,x9,TEST_FAIL
.global check_amomin
check_amomin:
      ori x11,x11,0x00000073C      
      andi x11,x11,-8
      li x15,0x914AA80CF74A1F3      
      sd x15,0x000000000(x11)      
      li x9,0x4B3A91CD3EB0E100      
      amomin.d x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      ld x16,(x11)
      blt x9,x13,mem_val
      mv x9,x13
.global mem_val
mem_val:
      mv x9,x9
      bne x16,x9,TEST_FAIL
.global check_amominu
check_amominu:
      ori x11,x11,0x000000281      
      andi x11,x11,-8
      li x15,0x47E5C00BDF5001B2      
      sd x15,0x000000000(x11)      
      li x9,0xC2A4F93901AA970E      
      amominu.d x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      ld x16,(x11)
      bltu x9,x13,mem_val2
      mv x9,x13
.global mem_val2
mem_val2:
      mv x9,x9
      bne x16,x9,TEST_FAIL
.global check_amomax
check_amomax:
      ori x11,x11,0x00000035F      
      andi x11,x11,-8
      li x15,0x422A83AD7A959902      
      sd x15,0x000000000(x11)      
      li x9,0x6ED2A57104419E8D      
      amomax.d x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      ld x16,(x11)
      bge x9,x13,mem_val3
      mv x9,x13
.global mem_val3
mem_val3:
      mv x9,x9
      bne x16,x9,TEST_FAIL
.global check_amomaxu
check_amomaxu:
      ori x11,x11,0x00000023D      
      andi x11,x11,-8
      li x15,0xDFCF4ACD38C9FBE9      
      sd x15,0x000000000(x11)      
      li x9,0x4BD4607A94336FE5      
      amomaxu.d x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      ld x16,(x11)
      bgeu x9,x13,mem_val4
      mv x9,x13
.global mem_val4
mem_val4:
      mv x9,x9
      bne x16,x9,TEST_FAIL
      li x9,0
      li x15,0
.global check_amoswap_w
check_amoswap_w:
      ori x11,x11,0x0000001D8      
      andi x11,x11,-8
      li x15,0x026775BDA      
      sw x15,0x000000000(x11)      
      li x9,0x00DD7B0FD      
      amoswap.w.aqrl x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      lwu x16,(x11)
      bne x16,x9,TEST_FAIL
.global check_amoadd_w
check_amoadd_w:
      ori x11,x11,0x00000047C      
      andi x11,x11,-8
      li x15,0x0764E1A4E      
      sw x15,0x000000000(x11)      
      li x9,0x036571F5E      
      amoadd.w.rl x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      lwu x16,(x11)
      add x9,x9,x15
      bne x16,x9,TEST_FAIL
.global check_amoor_w
check_amoor_w:
      ori x11,x11,0x0000001A0      
      andi x11,x11,-8
      li x15,0x03C6C8F73      
      sw x15,0x000000000(x11)      
      li x9,0x06E7A8DC1      
      amoor.w x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      lwu x16,(x11)
      or x9,x9,x15
      bne x16,x9,TEST_FAIL
.global check_amoand_w
check_amoand_w:
      ori x11,x11,0x000000133      
      andi x11,x11,-8
      li x15,0x00B2A1584      
      sw x15,0x000000000(x11)      
      li x9,0x06A7FC67D      
      amoand.w.rl x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      lwu x16,(x11)
      and x9,x9,x15
      bne x16,x9,TEST_FAIL
.global check_amoxor_w
check_amoxor_w:
      ori x11,x11,0x0000001E1      
      andi x11,x11,-8
      li x15,0x06E74E6D8      
      sw x15,0x000000000(x11)      
      li x9,0x0377E61C5      
      amoxor.w.aq x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      lwu x16,(x11)
      xor x9,x9,x15
      bne x16,x9,TEST_FAIL
.global check_amomin_w
check_amomin_w:
      ori x11,x11,0x0000005AA      
      andi x11,x11,-8
      li x15,0x05DABE60E      
      sw x15,0x000000000(x11)      
      li x9,0x04C2CFBB3      
      amomin.w.aqrl x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      lwu x16,(x11)
      blt x9,x13,mem_val_w
      mv x9,x13
.global mem_val_w
mem_val_w:
      mv x9,x9
      bne x16,x9,TEST_FAIL
.global check_amominu_w
check_amominu_w:
      ori x11,x11,0x00000076E      
      andi x11,x11,-8
      li x15,0x00E464664      
      sw x15,0x000000000(x11)      
      li x9,0x065FC3D17      
      amominu.w.aqrl x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      lwu x16,(x11)
      bltu x9,x13,mem_val2_w
      mv x9,x13
.global mem_val2_w
mem_val2_w:
      mv x9,x9
      bne x16,x9,TEST_FAIL
.global check_amomax_w
check_amomax_w:
      ori x11,x11,0x00000007D      
      andi x11,x11,-8
      li x15,0x0290926ED      
      sw x15,0x000000000(x11)      
      li x9,0x058C998F5      
      amomax.w x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      lwu x16,(x11)
      bge x9,x13,mem_val3_w
      mv x9,x13
.global mem_val3_w
mem_val3_w:
      mv x9,x9
      bne x16,x9,TEST_FAIL
.global check_amomaxu_w
check_amomaxu_w:
      ori x11,x11,0x0000002F5      
      andi x11,x11,-8
      li x15,0x07391BD71      
      sw x15,0x000000000(x11)      
      li x9,0x048ECBBF1      
      amomaxu.w.rl x13,x9, (x11)      
      bne x15,x13, TEST_FAIL
      lwu x16,(x11)
      bgeu x9,x13,mem_val4_w
      mv x9,x13
.global mem_val4_w
mem_val4_w:
      mv x9,x9
      bne x16,x9,TEST_FAIL

.global TEST_EXIT
TEST_EXIT:
  la   x1, __exit
  jr   x1
.global TEST_FAIL
TEST_FAIL:
   la   x1, __fail 
  jr   x1
.global TEST_WFI
TEST_WFI:
  wfi
