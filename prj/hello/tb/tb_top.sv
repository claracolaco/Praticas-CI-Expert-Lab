module tb_top();
  logic a, b, c;

  // Instância do DUT
  dut uu_dut (
    .a(a),
    .b(b),
    .c(c)
  );

  initial begin
    // Exibindo as combinações de entradas
    $display("a b | c");
    $display("-----");

    // Testando todas as combinações de entrada
    a = 0; b = 0; #1ns;
    $display("%0d %0d | %0d", a, b, c);

    a = 0; b = 1; #1ns;
    $display("%0d %0d | %0d", a, b, c);

    a = 1; b = 0; #1ns;
    $display("%0d %0d | %0d", a, b, c);

    a = 1; b = 1; #1ns;
    $display("%0d %0d | %0d", a, b, c);

    $finish;
  end
endmodule
