//Q2: Declare dynamic array of int of size 10 assign random values between 50 to 150.Declare queue of int type and size of 10 . copy dynamic array elements o queue.

module top;
int array[];
int queue[$:9];
initial begin
 array=new[10];
	foreach(array[i])begin
		array[i]=$urandom_range(50 ,150);
	end	
		$display("array value is =%p",array);
 queue=new[10](array);
		$display("queue value is =%p",queue);
 
		
end
endmodule
	

