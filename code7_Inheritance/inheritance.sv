//example for inheritance 

class parent_class;
bit [31:0]addr;
bit [7:0]len;
endclass

class child_class extends parent_class;
bit[31:0]data;
endclass

module top;
child_class c;
initial begin
	c=new();
	c.addr=10;
	c.data=15;
	c.len=7;
	$display("\n \tvalue for addr=%0d \n \tValue for data=%0d \n \tvalue for len=%0d", c.addr,c.data,c.len);
end
endmodule
	

