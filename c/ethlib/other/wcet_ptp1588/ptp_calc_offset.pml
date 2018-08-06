---
format: pml-0.1
triple: patmos-unknown-unknown-elf
machine-functions:
- name: 18
  level: machinecode
  mapsto: ptp_calc_offset
  arguments:
  - name: "%t1"
    index: 0
    registers:
    - r3
  - name: "%t2"
    index: 1
    registers:
    - r4
  - name: "%delay"
    index: 2
    registers:
    - r5
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 139572
    - index: 1
      opcode: NOP
      size: 4
      address: 139576
    - index: 2
      opcode: SUBr
      size: 4
      address: 139580
    - index: 3
      opcode: SUBr
      size: 4
      address: 139584
    address: 139572
  subfunctions:
  - name: 0
    blocks:
    - 0
bitcode-functions:
- name: ptp_calc_offset
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
      opcode: ret
relation-graphs:
- src:
    function: ptp_calc_offset
    level: bitcode
  dst:
    function: 18
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
    function: 18
  cycles: 4
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
      function: 18
      edgesource: 0
    cycles: 4
    wcet-frequency: 1
    wcet-contribution: 4
