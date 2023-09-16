class hello;

function void print(string name="arti");
	$display("hello %s tyagi",name);
endfunction
endclass

module top;
	initial begin
	hello a;
	a=new();
	a.print();
	end
endmodule	
