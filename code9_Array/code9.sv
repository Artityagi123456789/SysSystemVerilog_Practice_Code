//Q1: Declare a dynamic array arr1 of int datatype .Declare size as 5.Assign random values between 10 to 50.declare another dynamic array arr2 of int datatype.Declare size as 5.Assign random values between 20 to 60.write the logic to compare elements of arr1 and arr2 and Print if the element match or mis-match?(Do not use class for implementation of this question).

module top;
int arr1[];
int arr2[];
initial begin
 arr1=new[5];
	foreach(arr1[i])begin
		arr1[i]=$urandom_range(20 ,60);
	end	
		$display("first array value is =%p",arr1);
  arr2 = new[5];
	foreach(arr2[i])begin
		arr2[i]=$urandom_range(20 ,60);
	end	
 		$display("second array value is = %p",arr2);
  
  	if(arr1 == arr2)begin
   		 $display(" array matched");
 	 end
 	 else begin
   		 $display("not matched");
 	 end 
end
endmodule
