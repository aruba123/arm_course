
.global main
.extern printf
.extern scanf

.data  
prompt:        .asciz "Enter a floating point number:  " 
scanfmt :      .asciz "%f"
outfmt :       .asciz "You entered: %f\n" 
  .align 2
num:            .float 0.0

.text 
main:    
      sub sp,sp, #8
      str lr,[sp,#4]
      ldr r0, =prompt
      bl printf

     ldr r0,  =scanfmt
     ldr r1, =num
     bl scanf
     

     ldr r1,=num 
     vldr s0,[r1]                         @load float into s0
     vcvt.f64.f32 d0,s0                  @convert float to double for printf
     vmov r2,r3,d0                        @move double into r2,r3


     ldr  r0,  =outfmt
     bl printf 

     ldr lr, [sp,#4]
     add  sp, sp, #8
     mov r0, #0
     bx lr    
     
