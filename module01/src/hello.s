.global _start
.section  .data
msg:
.ascii  "Hello ARM linux!\n"
len  = . -msg
.section  .text
_start:
   mov r0, #1
   ldr r1, =msg
   mov r2,#17
   mov r7,#4
   svc #0

   mov r0,#0
   mov r7,#1
   svc  #0

