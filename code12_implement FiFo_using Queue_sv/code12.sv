//Q4: Implement FIFO using queue
	//	a. (Use class for fifo implementation)
	//	b. Implement user defined methods put(to push the elements into queue) and get (to pop the elements from queue)
	
class fifo;
int intQ[$];

function void put(int a);
	intQ.push_back(a);
endfunction	

function void get(output int a);
	a=intQ.pop_front();
endfunction	
endclass

module top;
int num;
fifo ff=new();
initial begin
		repeat(5) begin
			num=$urandom_range(20,30);
				ff.put(num);
					$display("Putting the element =%0d",num);
		end

		repeat(5) begin
			ff.get(num);
					$display("getting the element =%0d",num);
		end
end	
endmodule


