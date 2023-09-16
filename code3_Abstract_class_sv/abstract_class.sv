module top;
 virtual class pkt1;
		virtual function void print(string name="Prototype");
		$display("pkt is %s",name);
  		 endfunction	
  endclass

 	 class pkt2 extends pkt1;
			virtual function void print(string name="Prototype pkt2");
			$display("pkt is %s",name);
  		 endfunction	
	endclass

pkt1 p1_pkt;
pkt2 p2_pkt;

initial begin
	p2_pkt = new();
	p2_pkt.print();

	p1_pkt = p2_pkt;
	p1_pkt.print();
end

endmodule	
	
		
	
