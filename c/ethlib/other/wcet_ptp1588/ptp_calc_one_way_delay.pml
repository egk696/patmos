---
format: pml-0.1
triple: patmos-unknown-unknown-elf
machine-functions:
- name: 17
  level: machinecode
  mapsto: ptp_calc_one_way_delay
  arguments:
  - name: "%t1"
    index: 0
    registers:
    - r3
  - name: "%t2"
    index: 1
    registers:
    - r4
  - name: "%t3"
    index: 2
    registers:
    - r5
  - name: "%t4"
    index: 3
    registers:
    - r6
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: SUBr
      size: 4
      address: 139540
    - index: 1
      opcode: SUBr
      size: 4
      address: 139544
    - index: 2
      opcode: ADDr
      size: 4
      address: 139548
    - index: 3
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 139552
    - index: 4
      opcode: SRi
      size: 4
      address: 139556
    - index: 5
      opcode: ADDr
      size: 4
      address: 139560
    - index: 6
      opcode: SRAi
      size: 4
      address: 139564
    address: 139540
  subfunctions:
  - name: 0
    blocks:
    - 0
bitcode-functions:
- name: ptp_calc_one_way_delay
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: sub
    - index: 1
      opcode: sub
    - index: 2
      opcode: add
    - index: 3
      opcode: sdiv
    - index: 4
      opcode: ret
relation-graphs:
- src:
    function: ptp_calc_one_way_delay
    level: bitcode
  dst:
    function: 17
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 1
    dst-successors:
    - 1
  - name: 1
    type: exit
  status: valid
timing:
- scope:
    function: 17
  cycles: 7
  level: machinecode
  origin: platin
  cache-max-cycles-instr: 0
  cache-min-hits-instr: 0
  cache-max-misses-instr: 0
  cache-max-cycles-stack: 0
  cache-max-misses-stack: 0
  cache-max-cycles-data: 0
  cache-min-hits-data: 0
  cache-max-misses-data: 0
  cache-max-cycles: 0
  profile:
  - reference:
      function: 17
      edgesource: 0
    cycles: 7
    wcet-frequency: 1
    wcet-contribution: 7
