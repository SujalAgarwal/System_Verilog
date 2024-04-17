module tb;

  int arr1[5]= '{1,2,3,4,5};
  int arr2[5]= '{5{2}};
  int arr3[5]= '{default:2};

initial begin
$display("value of arr1 is %0p",arr1);
$display("value of arr2 is %0p",arr2);
$display("value of arr3 is %0p",arr3);
end
endmodule