main
    ldi r2,0
    ldi r3,0
    ldi r5,15

    ldi r6,end

    bnz r7,repeat

end
    stw r3,0xf002
    hcf
repeat
    ldi r1,array
    add r1,r1,r2
    add r1,r1,r2
    ldw r1,r1

    add r3,r3,r1

    add r2,1

    sub r4,r2,r5

    bez r4,r6

    bnz r7,repeat

array 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15