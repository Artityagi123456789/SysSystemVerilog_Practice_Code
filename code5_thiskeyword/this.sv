class sample_class;
  
  string name;
  int age;
  int year;
  
  function new(string name, int age, int year);
    this.name=name;
    this.age=age;
    this.year=year;
  endfunction
  
  function void display();
    $display(" \t name=%s",name);
    $display(" \t age=%0d",age);
    $display(" \t year=%0d\n",year);
  endfunction
  
endclass



module top;
  
  sample_class s;
  
  initial
    begin
      s=new("SystemVerilog",12,2023);
      s.display();
    end
  
endmodule


