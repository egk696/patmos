---
format: pml-0.1
triple: patmos-unknown-unknown-elf
machine-functions:
- name: 20
  level: machinecode
  mapsto: eth_mac_send
  arguments:
  - name: "%tx_addr"
    index: 0
    registers:
    - r3
  - name: "%frame_length"
    index: 1
    registers:
    - r4
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
      address: 142644
    - index: 1
      opcode: LIl
      size: 8
      address: 142648
    - index: 2
      opcode: LWL
      size: 4
      memmode: load
      memtype: local
      address: 142656
    - index: 3
      opcode: NOP
      size: 4
      address: 142660
    address: 142644
  subfunctions:
  - name: 0
    blocks:
    - 0
bitcode-functions:
- name: eth_mac_send
  level: bitcode
  hash: 0
  blocks:
  - name: entry
    predecessors: []
    successors: []
    instructions:
    - index: 0
      opcode: load
      memmode: load
    - index: 1
      opcode: ret
relation-graphs:
- src:
    function: eth_mac_send
    level: bitcode
  dst:
    function: 20
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
    function: 20
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
      function: 20
      edgesource: 0
    cycles: 4
    wcet-frequency: 1
    wcet-contribution: 4
