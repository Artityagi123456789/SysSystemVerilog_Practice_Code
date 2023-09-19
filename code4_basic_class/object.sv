class sample_class;
bit light;
int fan;
string switch;

task electricity();
	switch="ON";
	$display("switch is %s open",switch);	
endtask
endclass

module top;
sample_class s;
initial begin
	$display("declare object");
	$display("check wheather the object created or not");
	if(s==null)
		$display("object is empty");
	else
		$display("object is not empty");
end
endmodule
		
		
		

