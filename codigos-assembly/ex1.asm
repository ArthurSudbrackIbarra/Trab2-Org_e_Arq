main
    ldi r3,0
    ldi r5,string

    ldi r6,end

    bnz r7,repeat
end
    stw r3,0xf002
    hcf
repeat
    ldb r4,r5

    bez r4,end-of-word

    sub r4,32

    bez r4,check-spaces
continue
    and r2,r4,r4

    add r5,1

    bnz r7,repeat
check-spaces
    bez r2,continue
    add r3,1
    bnz r7,continue
end-of-word
    bez r2,r6
    add r3,1
    bnz r7,r6

string "Melancia Hipopotamo    Couve"

