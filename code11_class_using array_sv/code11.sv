//Q3: Declare a class sample_1 having three fields a,b,c(where a is of int datatype; b is of 48 bits; c is of byte datatype).Declare array of 10 sample_1. Randomize and print each array class elements.

class sample_1;
rand int a;
rand bit[47:0]b;
rand byte c;

function void print(string name="sample_class");
		$display("\t value of a = %0d",a);
		$display("\t value of b = %0d",b);
		$display("\t value of c = %0d",c);
endfunction				
endclass

module top;
sample_1 s[];
	initial begin
		s=new[10];
		for(int i=0; i<10;i++) begin
			s[i]=new();
		assert(s[i].randomize());
			s[i].print();
	end
end
endmodule
			



