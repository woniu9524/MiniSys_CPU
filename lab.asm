addi $a1,$0,10 #输入一个数
addi $a2,$0,32 #循环32次
label0:
beq $0,$a2,label1#当循环到0的时候，跳出循环
and $a3,$a1,1
add $t1,$t1,$a3#t1存储结果
sra $a1,$a1,1
subi $a2,$a2,1
j label0
label1:
addi $t2,$0,32
sub $t3,$t2,$t1
#做一个乘法
add $t4,$0,$t1
label2:
beq $0,$t1,label3
add $t5,$t3,$t5
subi $t1,$t1,1
j label2
label3:
