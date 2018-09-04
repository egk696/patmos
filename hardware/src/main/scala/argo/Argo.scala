/*
   Copyright 2018 Technical University of Denmark, DTU Compute.
   All rights reserved.

   This file is part of the time-predictable VLIW processor Patmos.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:

      1. Redistributions of source code must retain the above copyright notice,
         this list of conditions and the following disclaimer.

      2. Redistributions in binary form must reproduce the above copyright
         notice, this list of conditions and the following disclaimer in the
         documentation and/or other materials provided with the distribution.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDER ``AS IS'' AND ANY EXPRESS
   OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
   OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN
   NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
   DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
   (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
   LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
   ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
   THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

   The views and conclusions contained in the software and documentation are
   those of the authors and should not be interpreted as representing official
   policies, either expressed or implied, of the copyright holder.
 */

/*
 * Wrapper for Argo NxN bi-torus NoC
 *
 * Authors: Eleftherios Kyriakakis
 *
 */

package argo

import Chisel._
import Node._
import patmos.Constants._
import util._
import ocp._
import patmos._

class Argo(argoConf: ArgoConfig, wrapped: Boolean = false) extends Module {
	val io = new Bundle() {
		val comConf = Vec.fill(argoConf.CORES){new OcpNISlavePort(ADDR_WIDTH, DATA_WIDTH)}
		val comSpm = Vec.fill(argoConf.CORES){new OcpCoreSlavePort(ADDR_WIDTH, DATA_WIDTH)}
		val superMode = Bits(INPUT, argoConf.CORES)
	}
	println("Argo connecting "+ argoConf.CORES +" Patmos islands with configuration:")
  println("N=" + argoConf.N)
  println("M=" + argoConf.M)
  println("SPM_SIZE (Bytes)=" + argoConf.SPM_BYTES)

  // Generate Argo and COM-SPMs
  val argoNoc = Module(new ArgoNoC(argoConf, wrapped))
  val comSPMWrapper = Vec.fill(argoConf.CORES) {
    Module(new ComSpmWrapper(argoConf)).io
  }

	// Wire up
  argoNoc.io.supervisor := io.superMode
	for(i <- 0 until argoConf.CORES){
    // NoC - Patmos
    argoNoc.io.ocpPorts(i).M := io.comConf(i).M
    io.comConf(i).S := argoNoc.io.ocpPorts(i).S
    io.comConf(i).S.Flag := argoNoc.io.irq(2+i*2-1, i*2)
    io.comConf(i).S.Reset_n := Bits("b0")
		// SPM - Patmos
		comSPMWrapper(i).ocp.M := io.comSpm(i).M
    io.comSpm(i).S := comSPMWrapper(i).ocp.S
		// SPM - NoC
		comSPMWrapper(i).spm.M := argoNoc.io.spmPorts(i).M
    argoNoc.io.spmPorts(i).S := comSPMWrapper(i).spm.S
	}
}

object Argo {
	def main(args: Array[String]): Unit = {
		chiselMain(args, () => Module(new Argo(ArgoConfig.getConfig)))
	}
}
