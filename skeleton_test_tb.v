// ---------- SAMPLE TEST BENCH ----------
`timescale 1 ns / 100 ps
module skeleton_test_tb();
	wire is_j, is_jal,is_bex, is_setx, is_bne, is_blt;
	wire[31:0]pc_in,pc_in1,pc_out;
    wire[31:0]aluinput;
    wire[4:0]	alu_opcode;
    reg clock, reset;
	 wire [31:0]data_reg_write;
    wire imem_clock, dmem_clock, processor_clock, regfile_clock;
    wire [11:0] address_imem;
    wire [31:0] q_imem;
    wire [11:0] address_dmem;
    wire [31:0] data;
    wire wren;
    wire [31:0] q_dmem;
    wire ctrl_writeEnable;
    wire [4:0] ctrl_writeReg, ctrl_readRegA, ctrl_readRegB;
    wire [31:0] data_writeReg;
    wire [31:0] data_readRegA, data_readRegB;
	 integer i;
	 wire [31:0]sximmed;
	 wire enableTwo;
	 wire [31:0]data_writeTwo;
	 wire overflow;
	 wire rd_less_than_rs;

    skeleton_test myskeleton(clock, reset, imem_clock, dmem_clock, processor_clock, regfile_clock,
address_imem,q_imem,address_dmem,data,wren,q_dmem,ctrl_writeEnable,ctrl_writeReg,ctrl_readRegA, ctrl_readRegB,
data_writeReg,data_readRegA, data_readRegB,data_reg_write,aluinput, alu_opcode,sximmed,data_writeTwo,enableTwo,overflow,is_j, is_jal,is_bex, is_setx, is_bne, is_blt,pc_in,pc_in1,pc_out,rd_less_than_rs);
    // setting the initial values of all the reg
    initial
    begin
        $display($time, " << Starting the Simulation >>");
        clock = 1'b0;    // at time 0
       

        reset = 1'b1;    // assert reset
        @(negedge clock);    // wait until next negative edge of clock
      // wait until next negative edge of clock

        reset = 1'b0;
		  
		  for (i = 0; i < 200; i = i + 1) begin
		  @(negedge clock); 
		  end
		  $stop;
		  
		  
       

 
    end
	 always 

       	#10 clock = ~clock;



    

endmodule
