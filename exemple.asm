DD	EQU	$200
II	EQU	$300
XB	EQU	$400
PG	EQU	$450

	ORG	DD
	ADDD	4
	ADDD	$AB54
	ADDD	56
	ADDD	375
	ADDB	$D4
	ADDB	129
	ADDB	$1200
	ADDB	5670
	LSL	%101

	ORG	II
	ADDD	#-56
	ADDD	#-$45
	ADDD	#-$2FF
	ADDD	#-%100110
	ADDD	#56
	ADDD	#$45
	ADDD	#$2FF
	ADDD	#%100110
	ADDD	#@1377
	ADCA	#$BD

	ORG	XB
	EORA	14,PC
	EORA	-5,SP
	EORA	-5,X
	EORA	15,Y
	EORA	-243,X
	EORA	250,SP
	EORA	-12345,Y
	EORA	22345,Y
	EORA	[$22,Y]
	EORA	[$1023,Y]
	EORA	3,-SP
	EORA	6,SP-
	EORA	-1,SP-
	EORA	-8,-SP
	EORA	5,SP+
	EORA	7,+SP
	EORA	-2,SP+
	EORA	-4,+SP
	EORA	A,X
	EORA	D,PC
	EORA	D,SP
	EORA	D,X
	EORA	[D,X]
	EORA	[D,SP]

	ORG	PG
	CALL	$FFEE,8
	CALL	$56,14
	CALL	$F3,Y,2
	CALL	31652,X,4
	CALL	-2,SP+,12

	ORG	$500
	DBEQ	A,$5F4
	TBNE	D,$41A

	ORG	$600
	BRCLR	$2A,$80,$584
	BRCLR	$2A,$80,$675
	BRCLR	$1240,$05,$593
	BRCLR	$1240,$05,$663
	BRA	$596
	BRA	$675
	LBRA	$0007
	LBRA	$1840

	ASLD	
	SWI	
	IDIVS	
	XGDY	

	ORG	$655
LOOP	ADDD	#LBL
	ADDD	#BIM
BIM	ADDD	#LOOP
LBL	EQU	$1250
