.text
main:
  lw  a1,0(x0)     
  beq a1,x0,fail    
  ori a2,x0,1      
  xor a3,a3,a3     
 loop:
      add a3, a3, a2    
    beq a2, a1, finish   
    addi a2, a2, 1    
    jal x0, loop       
 finish:
    sw a3, 4(x0)      
 pass:
  lui    a0,0xc10
  addi    a0,a0,-18 
  ecall             
 fail:
  lui    a0,0xdeade
  addi    a0,a0,-339 
  ecall              
