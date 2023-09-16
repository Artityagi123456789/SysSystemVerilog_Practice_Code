//sample cod to illastrate usage of associative array

module array_A;
function void test_associative_array();
int array_test[string];
string index;
array_test["Apple"]=1;
array_test["Mango"]=2;
array_test["Cat"]=3;
array_test["Rat"]=4;
if(array_test.first(index))begin
do begin
	$display("\n\tarray_test[%s]=%0d",index,array_test[index]);
	end while(array_test.next(index));
end
	
endfunction

initial begin
	test_associative_array();
end	
endmodule
