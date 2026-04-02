# rtl

Esta pasta contém a implementação RTL do projeto.

## Arquivos

### `dut.sv`
Implementa um DUT simples com:
- entradas: `a`, `b`
- saída: `c`

A lógica implementada é:

```systemverilog
assign c = a & b;
```

## Função

Representar uma porta AND simples para ser verificada pelo testbench.
