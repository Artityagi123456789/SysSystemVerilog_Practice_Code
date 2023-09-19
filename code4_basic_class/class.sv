class rectangle;
int length,width;  //this is class properties

function int area();	//this is class method ,here int is retuntype
	return length*width;
endfunction	

function int parimeter();
	return 2*(length+width);
endfunction

function new(l=3,w=4);
	length=l;width=w;
endfunction	
endclass

module top;
rectangle r1,r2;
int a1,a2,p1;
initial begin
	r1=new(4,3);
	r2=new(4);
	
	a1=r1.area;
	p1=r2.parimeter;
	$display("area=%0d,parameter=%0d",r1.length,r1.width);
end	
endmodule	

