class sample_class;

bit light;
int fan;
string switch;

task electricity(); 	//method we can use task/function
	switch="ON";
	$display("switch is %s open",switch);
endtask
endclass

module top;
sample_class s;		//creating object 	
initial begin
	s=new();		//and allocate memory
	s.light=0;
	s.fan=1;
	$display("light is off %0d ,fan is on %0d", s.light,s.fan);
end
endmodule

