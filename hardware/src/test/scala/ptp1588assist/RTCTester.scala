package ptp1588assist

import Chisel._
import ocp.{OcpCmd, OcpResp}
import patmos.Constants._

class RTCTester(dut: RTC, testCycles: Int) extends Tester(dut){
  poke(dut.io.ocp.M.Cmd, 1)//Write
  poke(dut.io.ocp.M.Data, -481)
  poke(dut.io.ocp.M.Addr, 0xF00DE820)
  step(1)
  poke(dut.io.ocp.M.Cmd, 0)//Write
  for(i <- 0 to testCycles) {
    var asked: Boolean = false
    peek(dut.nsOffsetReg)
    peek(dut.correctionStepReg)
    peek(dut.nsTickReg)
    peek(dut.io.ptpTimestamp)
    step(1)
//    if(!asked && (i % 33) == 0 ) {
//      if (i % 72 == 0 && peek(dut.nsOffsetReg)==0) {
//        poke(dut.io.ocp.M.Cmd, 1)//Write
//        poke(dut.io.ocp.M.Data, 1023)
//        poke(dut.io.ocp.M.Addr, 0xF00DE820)
//      } else if(i % 32 == 0) {
//        poke(dut.io.ocp.M.Cmd, 2)//Read
//      }
//      asked = true
//    } else {
//      if(asked && peek(dut.io.ocp.S.Resp)==0){
//        poke(dut.io.ocp.M.Cmd, 1)
//      } else {
//        poke(dut.io.ocp.M.Cmd, 0)
//      }
//    }
  }
}

object RTCTester {
  def main(args: Array[String]): Unit = {
    chiselMainTest(Array("--genHarness", "--test", "--backend", "c",
      "--compile", "--vcd", "--targetDir", "generated"),
      () => Module(new RTC(clockFreq = 80000000, secondsWidth = 32, nanoWidth = 32, initialTime = 0x5ac385dc))) {
      dut => new RTCTester(dut, testCycles = 1000)
    }
  }
}