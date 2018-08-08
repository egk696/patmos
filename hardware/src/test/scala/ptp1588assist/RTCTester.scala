package ptp1588assist

import Chisel._
import ocp.{OcpCmd, OcpResp}
import patmos.Constants._

class RTCTester(dut: RTC, testCycles: Int) extends Tester(dut){
  poke(dut.io.ocp.M.Cmd, 1)//Write
  poke(dut.io.ocp.M.Data, 2234)
  poke(dut.io.ocp.M.Addr, 0xF00DE820)
  step(1)
  poke(dut.io.ocp.M.Cmd, 0)//Write
  for(i <- 0 to 1000) {
    var asked: Boolean = false
    peek(dut.nsOffsetReg)
    peek(dut.correctionStepReg)
    peek(dut.nsTickReg)
    peek(dut.io.ptpTimestamp)
    step(1)
  }
  step(1)
  expect(dut.nsOffsetReg, 0)
  expect(dut.correctionStepReg, 0)
  poke(dut.io.ocp.M.Cmd, 1)//Write
  poke(dut.io.ocp.M.Data, 2234135)
  poke(dut.io.ocp.M.Addr, 0xF00DE820)
  step(1)
  poke(dut.io.ocp.M.Cmd, 0)//Write
  for(i <- 0 to 5) {
    var asked: Boolean = false
    peek(dut.nsOffsetReg)
    peek(dut.correctionStepReg)
    peek(dut.nsTickReg)
    peek(dut.io.ptpTimestamp)
    step(1)
  }
  step(1)
  expect(dut.nsOffsetReg, 0)
  expect(dut.correctionStepReg, 0)
}

object RTCTester {
  def main(args: Array[String]): Unit = {
    chiselMainTest(Array("--genHarness", "--test", "--backend", "c",
      "--compile", "--vcd", "--targetDir", "generated"),
      () => Module(new RTC(clockFreq = 80000000, secondsWidth = 32, nanoWidth = 32, initialTime = 0x5ac385dc))) {
      dut => new RTCTester(dut, testCycles = 10000)
    }
  }
}