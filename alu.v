module alu(busC,busB,ALUctr,zero,Alu_out,Addr);
input [31:0]busC,busB;
input [3:0]ALUctr;

output [31:0]zero,Addr;
output reg[31:0]Alu_out;

//set ADD,SUB,OR
parameter ADD=4'b0000;
parameter SUB=4'b0001;
parameter OR= 4'b0010;
parameter AND=4'b0011;
parameter XOR=4'b0100;
parameter NOR=4'b0101;
parameter SLT=4'b0110;
parameter SL= 4'b0111;//左移
parameter SRL=4'b1000;//逻辑右移
parameter SRA=4'b1001;//算数右移
parameter SLV= 4'b1010;//左移
parameter SRLV=4'b1011;//逻辑右移
parameter SRAV=4'b1100;//算数右移
//three conditions
always@(*) begin
    case(ALUctr)
        ADD: begin
            Alu_out=busC+busB;
        end
        SUB: begin
            Alu_out=busC-busB;
        end
        OR: begin
            Alu_out=busC|busB;
        end
        AND:begin
            Alu_out=busC&busB;
        end
        XOR: begin
            Alu_out=busC^busB;
        end
        NOR: begin
            Alu_out=~(busC|busB);
        end
        SLT: begin
            Alu_out=busC<busB?1:0;
        end
        SL: begin
            Alu_out=busC<<busB;
        end
        SRL: begin
            Alu_out=busC>>busB;
        end
        SRA: begin
            Alu_out=busC>>>busB;
        end
        SLV: begin
            Alu_out=busB<<busC;
        end
        SRLV: begin
            Alu_out=busB>>busC;
        end
        SRAV: begin
            Alu_out=busB>>>busC;
        end
    endcase
end

assign zero=Alu_out;
assign Addr=Alu_out;
endmodule
