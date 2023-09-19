class sample_class;
string fan,switch; //properties

function void display();
	switch="ON";
	$display("we are using superkeyword wecan get both display method");
	$display("Switch is %s",switch);
endfunction
endclass

class sub_class extends sample_class;
	string Fan="ON";
	function void display();
		super.display;
		$display("thats why fan is %s",fan);
	endfunction
endclass

module top;
	sub_class s;
initial begin
	s=new();
	s.display();  //access the sub class method
end
endmodule
