 .org $2000
 LDA #$40;;;;;;;;;;;;;;;;;;;;;
 STA $80
 LDA #$26;;;;;;;;;;;;;;;;;;;;;
 STA $81
 
 LDA #$00;;;;;;;;;;;;;;;;;;;;;
 STA $82
 LDA #$20;;;;;;;;;;;;;;;;;;;;;
 STA $83
 
 LDA #$00;;;;;;;;;;;;;;;;;;;;;
 BNE FLAG_NEXT1
 
 LDX #$06
 LDY #$00
MOVE_LOOP1:
 LDA ($80),Y
 STA ($82),Y
 INY
 BNE MOVE_LOOP1
 INC $81
 INC $83
 DEX
 BNE MOVE_LOOP1
 LDX #$40
MOVE_LOOP2:
 LDA ($80),Y
 STA ($82),Y
 INY
 DEX
 BNE MOVE_LOOP2
 RTS
 
FLAG_NEXT1:
 CMP #$03
 BCC FLAG_NEXT2
 RTS
FLAG_NEXT2:
 CMP #$01
 BNE START

 LDX #$06
 LDY #$00
 TYA
MOVE_LOOP3:
 STA ($82),Y
 INY
 BNE MOVE_LOOP3
 INC $83
 DEX
 BNE MOVE_LOOP3
 LDX #$40
MOVE_LOOP4:
 STA ($82),Y
 INY
 DEX
 BNE MOVE_LOOP4
 
 LDA #$00;;;;;;;;;;;;;;;;;;;;;
 STA $82
 LDA #$20;;;;;;;;;;;;;;;;;;;;;
 STA $83
 
START:
 LDY #$00
 LDA ($80),Y
 CMP #$40
 BCS DATA_NEXT1
 AND #$3F
 BNE LET_OTHER1
 LDA #$40
LET_OTHER1:
 CLC
 ADC $82
 STA $82
 BCC INC_NEXT1
 INC $83
INC_NEXT1:
 LDA #$00
 BEQ END
DATA_NEXT1:
 CMP #$80
 BCS DATA_NEXT2
 AND #$3F
 BNE LET_OTHER2
 LDA #$40
LET_OTHER2:
 TAX
 LDY #$00
CHG_LOOP1:
 CLC
 LDA ($82),Y
 ADC #$FF
 STA ($82),Y
 INC $82
 BNE INC_NEXT3
 INC $83
INC_NEXT3:
 DEX
 BNE CHG_LOOP1
END:
 INC $80
 BNE INC_NEXT4
 INC $81
INC_NEXT4:
EEEE:
 LDY #$00
 LDA ($80),Y
 CMP #$C1
 BNE START
 RTS
DATA_NEXT2:
 CMP #$C0
 BCS DATA_NEXT3
 AND #$3F
 BNE LET_OTHER3
 LDA #$40
LET_OTHER3:
 TAX
 LDY #$00
 INC $80
 BNE CHG_LOOP2
 INC $81
CHG_LOOP2:
 CLC
 LDA ($80),Y
 ADC ($82),Y
 STA ($82),Y
 INC $80
 BNE INC_NEXT6
 INC $81
INC_NEXT6:
 INC $82
 BNE INC_NEXT7
 INC $83
INC_NEXT7:
 DEX
 BNE CHG_LOOP2
 BEQ EEEE
DATA_NEXT3:
 AND #$3F
 BNE LET_OTHER4
 LDA #$40
LET_OTHER4:
 TAX
 INC $80
 BNE INC_NEXT8
 INC $81
INC_NEXT8:
 LDY #$00
 LDA ($80),Y
 STA $84
CHG_LOOP3:
 CLC
 LDA ($82),Y
 ADC $84
 STA ($82),Y
 INC $82
 BNE INC_NEXT9
 INC $83
INC_NEXT9:
 DEX
 BNE CHG_LOOP3
 BEQ END