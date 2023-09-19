class packet;   //parent class
bit[7:0]data;
bit[7:0]addr;

function new();
	data=3'b001;
	addr=3'b101;
endfunction

function void display();
	$display("data=%0d,\t addr=%0d",data,addr);
endfunction
endclass


class packet1 extends packet; //child class
bit [7:0]len;
function new();
	len=3'b110;
endfunction
function void display();
	$display("len=%0d",len);
	$display("data=%0d",data);
	$display("addr=%0d",addr);
	
endfunction
endclass


module top;
packet1 pkt;
initial begin 
	pkt=new();
	//$display("before overriding");
//	pkt.display();
//	pkt.data();
//	pkt.addr();
//	pkt.len();
//	$display(" afteroverriding");
pkt.display();
end
endmodule
	





















