
module upcounter_test1();
reg clk,reset;
wire [3:0] counter;

up_counter DUT(.clk(clk),.reset(reset),.counter(counter));

initial begin
   $monitor($time,"clk=%b reset=%b counter=%b",clk,reset,counter);
clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
#20;
reset=0;
end
endmodule
