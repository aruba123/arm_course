.global main
.extern printf
.extern scanf

.data 
prompt: .asciz "Enter your age:  "
scanfmt: .asciz "%d"
outfmt: .asciz "Your age is %d\n"
age:  .word 0 

.text
main:
    sub sp,sp,#8
    str lr, [sp,#4]

    ldr  r0, = prompt
    bl  printf

   ldr  r0, =scanfmt
   ldr  r1, =age
   bl  scanf
   
   ldr r0,= outfmt
   ldr r1,=age
   ldr r1,[r1]
   bl printf

   mov r0,#0
   ldr lr, [sp,#4]
   add sp,sp,#8
   bx lr

 
