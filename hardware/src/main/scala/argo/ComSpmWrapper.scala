package argo

import Chisel._
import ocp._
import patmos.Constants._

/**
  * Wrapper for ~/t-crest/argo/src/mem/com_spm_wrapper.vhd
  * @param argoConf
  */
class ComSpmWrapper(argoConf: ArgoConfig) extends BlackBox {
  setModuleName("com_spm_wrapper")
  addClock(Driver.implicitClock)
  renameClock("clk", "clk")
  renameReset("reset")
  val io = new Bundle(){
    val ocp = new OcpCoreSlavePort(ADDR_WIDTH, DATA_WIDTH)
    val spm = new SPMSlavePort(argoConf.HEADER_FIELD_WIDTH, argoConf.HEADER_CTRL_WIDTH)
  }
  setVerilogParameters("#(.SPM_IDX_SIZE(" + argoConf.SPM_IDX_SIZE + "))")
}
