//Q1: Declare a dynamic array arr1 of int datatype .Declare size as 5.Assign random values between 10 to 50.declare another dynamic array arr2 of int datatype.Declare size as 5.Assign random values between 20 to 60.write the logic to compare elements of arr1 and arr2 and Print if the element match or mis-match?(Do not use class for implementation of this question).

module top;
int arr1[];
int arr2[];
int i;
initial begin
 arr1=new[5];
	for(int i=0; i<5;i++)begin
		arr1[i]=$urandom_range(20 ,60);
			$display("first array value is[%0d] =%0d",i,arr1[i]);
	end	
  arr2 = new[5];
  	for(int i=0; i<5;i++)begin
		arr2[i]=$urandom_range(20 ,60);
		$display("second array value is[%0d] =%0d",i,arr2[i]);
	end	
  	for(int i=0; i<5;i++)begin
	  		if(arr1[i] == arr2[i])begin
   				 $display(" array elements is matched arr1[%0d]=%0d",i,arr1[i]);
 			 end
 	 else begin
   				 $display(" array elements is mis-matched arr1[%0d]=%0d arr2[%0d]=%0d",i,arr1[i],i,arr2[i]);
	 
 		 end 
	end		 
end
endmodule
