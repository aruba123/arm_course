
.global main
.extern printf

.data
outfmt:.asciz "This is my output \"Hello world\"\n"

.text
main:
      sub sp,sp,#8 
      str lr ,[sp,#4]

      ldr r0, =outfmt
      bl printf


      mov r0,#0
     ldr lr,[sp,#4]
     add sp,sp,#8
     bx lr



