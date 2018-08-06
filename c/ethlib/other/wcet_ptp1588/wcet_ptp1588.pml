---
format:          pml-0.1
triple:          patmos-unknown-unknown-elf
machine-functions: 
  - name:            17
    level:           machinecode
    mapsto:          ptp_calc_one_way_delay
    arguments:       
      - name:            '%t1'
        index:           0
        registers:       [ r3 ]
      - name:            '%t2'
        index:           1
        registers:       [ r4 ]
      - name:            '%t3'
        index:           2
        registers:       [ r5 ]
      - name:            '%t4'
        index:           3
        registers:       [ r6 ]
    hash:            0
    blocks:          
      - name:            0
        mapsto:          entry
        predecessors:    [  ]
        successors:      [  ]
        instructions:    
          - index:           0
            opcode:          SUBr
            size:            4
          - index:           1
            opcode:          SUBr
            size:            4
          - index:           2
            opcode:          ADDr
            size:            4
          - index:           3
            opcode:          RET
            size:            4
            branch-type:     return
            branch-delay-slots: 3
          - index:           4
            opcode:          SRi
            size:            4
          - index:           5
            opcode:          ADDr
            size:            4
          - index:           6
            opcode:          SRAi
            size:            4
    subfunctions:    
      - name:            0
        blocks:          [ 0 ]
...
---
format:          pml-0.1
triple:          patmos-unknown-unknown-elf
bitcode-functions: 
  - name:            ptp_calc_one_way_delay
    level:           bitcode
    hash:            0
    blocks:          
      - name:            entry
        predecessors:    [  ]
        successors:      [  ]
        instructions:    
          - index:           0
            opcode:          sub
          - index:           1
            opcode:          sub
          - index:           2
            opcode:          add
          - index:           3
            opcode:          sdiv
          - index:           4
            opcode:          ret
...
---
format:          pml-0.1
triple:          patmos-unknown-unknown-elf
relation-graphs: 
  - src:             
      function:        ptp_calc_one_way_delay
      level:           bitcode
    dst:             
      function:        17
      level:           machinecode
    nodes:           
      - name:            0
        type:            entry
        src-block:       entry
        dst-block:       0
        src-successors:  [ 1 ]
        dst-successors:  [ 1 ]
      - name:            1
        type:            exit
    status:          valid
...
