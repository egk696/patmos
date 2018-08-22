package argo

import Chisel._
import ocp.OcpIOSlavePort
import patmos.Constants.{ADDR_WIDTH, DATA_WIDTH}

class ArgoNoC(argoConf: ArgoConfig) extends Module {
  val io = new Bundle {
    val irq = Bits(OUTPUT, width = argoConf.N*argoConf.M*2)
    val supervisor = Bits(INPUT, width = argoConf.N*argoConf.M)
    val ocpPorts = Vec.fill(argoConf.N * argoConf.M) {
      new OcpIOSlavePort(ADDR_WIDTH, DATA_WIDTH)
    }
    val spmPorts = Vec.fill(argoConf.N * argoConf.M) {
      new SPMMasterPort(16, 2)
    }
  }

  val argoMesh = (0 until argoConf.M).map(j=>(0 until argoConf.M).map(i=>Module(new NoCNodeWrapper(argoConf, i==0 && j==0)).io))

  //Interconnect
  /*
   * Nodes Port Interconnect
   *
   *                     N
   *                     |
   *                     |
   *                     |
   *                     |
   *      WEST <---------|---------> EAST
   *                     |
   *                     |
   *                     |
   *                     |
   *                     S
   */
  io.irq := 0.U
  println("\to--Building Interconnect")
  for(i <- 0 until argoConf.M){
    for(j <- 0 until argoConf.N){
      val index = (i * argoConf.N) + j
      println("\t|---Node #" + index +" @ ("+i+","+j+")")
      //Control Ports
      io.irq(2+index*2-1, index*2) := argoMesh(i)(j).irq
      argoMesh(i)(j).supervisor := io.supervisor(index)
      argoMesh(i)(j).proc.M := io.ocpPorts(index).M
      io.ocpPorts(index).S := argoMesh(i)(j).proc.S
      io.spmPorts(index).M := argoMesh(i)(j).spm.M
      argoMesh(i)(j).spm.S := io.spmPorts(index).S
      argoMesh(i)(j).run := argoMesh(0)(0).masterRun

      if(i==0){
        argoMesh(0)(j).south_in <> argoMesh(argoConf.M-1)(j).north_out
        argoMesh(argoConf.M-1)(j).north_in <> argoMesh(0)(j).south_out
      }
      if(j==0){
        argoMesh(i)(0).east_in <> argoMesh(i)(argoConf.N-1).west_out
        argoMesh(i)(argoConf.N-1).west_in <> argoMesh(i)(0).east_out
      }
      if(i > 0){
        argoMesh(i)(j).south_in <> argoMesh(i-1)(j).north_out
        argoMesh(i-1)(j).north_in <> argoMesh(i)(j).south_out
      }
      if(j > 0){
        argoMesh(i)(j).east_in <> argoMesh(i)(j-1).west_out
        argoMesh(i)(j-1).west_in <> argoMesh(i)(j).east_out
      }
    }
  }

}
