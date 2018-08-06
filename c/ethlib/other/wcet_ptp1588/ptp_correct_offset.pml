---
format: pml-0.1
triple: patmos-unknown-unknown-elf
machine-functions:
- name: 19
  level: machinecode
  mapsto: ptp_correct_offset
  hash: 0
  blocks:
  - name: 0
    mapsto: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: LIl
      size: 8
      address: 139604
    - index: 1
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139612
    - index: 2
      opcode: LIl
      size: 8
      address: 139616
    - index: 3
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 139624
    - index: 4
      opcode: LWC
      size: 4
      memmode: load
      memtype: cache
      address: 139628
    - index: 5
      opcode: MFS
      size: 4
      address: 139632
    - index: 6
      opcode: CMPIEQ
      size: 4
      address: 139636
    - index: 7
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 139640
    - index: 8
      opcode: RET
      size: 4
      branch-type: return
      branch-delay-slots: 3
      address: 139644
    - index: 9
      opcode: SUBr
      size: 4
      address: 139648
    - index: 10
      opcode: SWL
      size: 4
      memmode: store
      memtype: local
      address: 139652
    - index: 11
      opcode: MTS
      size: 4
      address: 139656
    address: 139604
  subfunctions:
  - name: 0
    blocks:
    - 0
bitcode-functions:
- name: ptp_correct_offset
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors:
    - if.end
    - if.then
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: store
      memmode: store
    - index: 2
      opcode: load
      memmode: load
    - index: 3
      opcode: icmp
    - index: 4
      opcode: br
  - name: if.then
    predecessors:
    - entry
    successors:
    - if.end
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: sub
    - index: 2
      opcode: store
      memmode: store
    - index: 3
      opcode: br
  - name: if.end
    predecessors:
    - if.then
    - entry
    successors: []
    instructions:
    - index: 0
      opcode: ret
relation-graphs:
- src:
    function: ptp_correct_offset
    level: bitcode
  dst:
    function: 19
    level: machinecode
  nodes:
  - name: 0
    type: entry
    src-block: entry
    dst-block: 0
    src-successors:
    - 2
    - 3
    dst-successors:
    - 1
  - name: 1
    type: exit
  - name: 2
    type: src
    src-block: if.end
    src-successors:
    - 1
  - name: 3
    type: src
    src-block: if.then
    src-successors:
    - 2
  status: valid
timing:
- scope:
    function: 19
  cycles: 54
  level: machinecode
  origin: platin
  cache-max-cycles-instr: 0
  cache-min-hits-instr: 0
  cache-max-misses-instr: 0
  cache-max-cycles-stack: 0
  cache-max-misses-stack: 0
  cache-max-cycles-data: 42
  cache-min-hits-data: 0
  cache-max-misses-data: 2
  cache-unknown-address-data: 2
  cache-max-cycles: 42
  profile:
  - reference:
      function: 19
      edgesource: 0
    cycles: 54
    wcet-frequency: 1
    wcet-contribution: 54
