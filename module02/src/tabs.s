.global main 
.extern printf

.data  
outfmt: .asciz  "The number\t35\tis between tabs\n"

.text
main: 
    sub sp,sp, #8
str lr,[sp,#4]

   ldr r0, =outfmt
   bl printf

   mov r0 , #0
ldr lr ,[sp,#4]
add sp,sp, #8
bx lr

