addi $a1,$0,10 #����һ����
addi $a2,$0,32 #ѭ��32��
label0:
beq $0,$a2,label1#��ѭ����0��ʱ������ѭ��
and $a3,$a1,1
add $t1,$t1,$a3#t1�洢���
sra $a1,$a1,1
subi $a2,$a2,1
j label0
label1:
addi $t2,$0,32
sub $t3,$t2,$t1
#��һ���˷�
add $t4,$0,$t1
label2:
beq $0,$t1,label3
add $t5,$t3,$t5
subi $t1,$t1,1
j label2
label3:
