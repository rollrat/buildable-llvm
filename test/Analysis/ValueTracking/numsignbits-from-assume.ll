; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -instcombine -S | FileCheck %s

define i32 @computeNumSignBits_add1(i32 %in) {
; CHECK-LABEL: @computeNumSignBits_add1(
; CHECK-NEXT:    [[ADD:%.*]] = add i32 [[IN:%.*]], 1
; CHECK-NEXT:    [[COND:%.*]] = icmp ult i32 [[ADD]], 43
; CHECK-NEXT:    call void @llvm.assume(i1 [[COND]])
; CHECK-NEXT:    [[SH:%.*]] = shl nuw nsw i32 [[ADD]], 3
; CHECK-NEXT:    ret i32 [[SH]]
;
  %add = add i32 %in, 1
  %cond = icmp ule i32 %add, 42
  call void @llvm.assume(i1 %cond)
  %sh = shl i32 %add, 3
  ret i32 %sh
}

define i32 @computeNumSignBits_add2(i32 %in1, i32 %in2) {
; CHECK-LABEL: @computeNumSignBits_add2(
; CHECK-NEXT:    [[ADD:%.*]] = add i32 [[IN1:%.*]], [[IN2:%.*]]
; CHECK-NEXT:    [[COND:%.*]] = icmp ult i32 [[ADD]], 43
; CHECK-NEXT:    call void @llvm.assume(i1 [[COND]])
; CHECK-NEXT:    [[SH:%.*]] = shl nuw nsw i32 [[ADD]], 3
; CHECK-NEXT:    ret i32 [[SH]]
;
  %add = add i32 %in1, %in2
  %cond = icmp ule i32 %add, 42
  call void @llvm.assume(i1 %cond)
  %sh = shl i32 %add, 3
  ret i32 %sh
}

define i32 @computeNumSignBits_sub1(i32 %in) {
; CHECK-LABEL: @computeNumSignBits_sub1(
; CHECK-NEXT:    [[SUB:%.*]] = sub i32 1, [[IN:%.*]]
; CHECK-NEXT:    [[COND:%.*]] = icmp ult i32 [[SUB]], 43
; CHECK-NEXT:    call void @llvm.assume(i1 [[COND]])
; CHECK-NEXT:    [[SH:%.*]] = shl nuw nsw i32 [[SUB]], 3
; CHECK-NEXT:    ret i32 [[SH]]
;
  %sub = sub i32 1, %in
  %cond = icmp ule i32 %sub, 42
  call void @llvm.assume(i1 %cond)
  %sh = shl i32 %sub, 3
  ret i32 %sh
}

define i32 @computeNumSignBits_sub2(i32 %in) {
; CHECK-LABEL: @computeNumSignBits_sub2(
; CHECK-NEXT:    [[SUB:%.*]] = add i32 [[IN:%.*]], -1
; CHECK-NEXT:    [[COND:%.*]] = icmp ult i32 [[SUB]], 43
; CHECK-NEXT:    call void @llvm.assume(i1 [[COND]])
; CHECK-NEXT:    [[SH:%.*]] = shl nuw nsw i32 [[SUB]], 3
; CHECK-NEXT:    ret i32 [[SH]]
;
  %sub = sub i32 %in, 1
  %cond = icmp ule i32 %sub, 42
  call void @llvm.assume(i1 %cond)
  %sh = shl i32 %sub, 3
  ret i32 %sh
}

define i32 @computeNumSignBits_sub3(i32 %in1, i32 %in2) {
; CHECK-LABEL: @computeNumSignBits_sub3(
; CHECK-NEXT:    [[SUB:%.*]] = sub i32 [[IN1:%.*]], [[IN2:%.*]]
; CHECK-NEXT:    [[COND:%.*]] = icmp ult i32 [[SUB]], 43
; CHECK-NEXT:    call void @llvm.assume(i1 [[COND]])
; CHECK-NEXT:    [[SH:%.*]] = shl nuw nsw i32 [[SUB]], 3
; CHECK-NEXT:    ret i32 [[SH]]
;
  %sub = sub i32 %in1, %in2
  %cond = icmp ule i32 %sub, 42
  call void @llvm.assume(i1 %cond)
  %sh = shl i32 %sub, 3
  ret i32 %sh
}

define i32 @computeNumSignBits_mul(i32 %in1, i32 %in2) {
; CHECK-LABEL: @computeNumSignBits_mul(
; CHECK-NEXT:    [[MUL:%.*]] = mul i32 [[IN1:%.*]], [[IN2:%.*]]
; CHECK-NEXT:    [[COND:%.*]] = icmp ult i32 [[MUL]], 43
; CHECK-NEXT:    call void @llvm.assume(i1 [[COND]])
; CHECK-NEXT:    [[SH:%.*]] = shl nuw nsw i32 [[MUL]], 3
; CHECK-NEXT:    ret i32 [[SH]]
;
  %mul = mul i32 %in1, %in2
  %cond = icmp ule i32 %mul, 42
  call void @llvm.assume(i1 %cond)
  %sh = shl i32 %mul, 3
  ret i32 %sh
}

define i32 @computeNumSignBits_select(i32 %in, i1 %s) {
; CHECK-LABEL: @computeNumSignBits_select(
; CHECK-NEXT:    [[SEL:%.*]] = select i1 [[S:%.*]], i32 [[IN:%.*]], i32 1
; CHECK-NEXT:    [[COND:%.*]] = icmp ult i32 [[SEL]], 43
; CHECK-NEXT:    call void @llvm.assume(i1 [[COND]])
; CHECK-NEXT:    [[SH:%.*]] = shl nuw nsw i32 [[SEL]], 3
; CHECK-NEXT:    ret i32 [[SH]]
;
  %sel = select i1 %s, i32 %in, i32 1
  %cond = icmp ule i32 %sel, 42
  call void @llvm.assume(i1 %cond)
  %sh = shl i32 %sel, 3
  ret i32 %sh
}

declare void @llvm.assume(i1)
