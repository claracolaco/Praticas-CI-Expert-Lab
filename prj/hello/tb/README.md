# tb

Esta pasta contém o testbench do projeto.

## Arquivos

### `tb_top.sv`
Testbench responsável por:
- instanciar o DUT;
- aplicar combinações de entrada;
- mostrar os resultados no terminal.

## Como rodar

Dentro desta pasta, em um ambiente com VCS disponível:

```bash
vcs -sverilog tb_top.sv ../rtl/dut.sv
./simv
```

## Saída esperada

A saída esperada é a tabela verdade da porta AND:

```text
a b | c
-----
0 0 | 0
0 1 | 0
1 0 | 0
1 1 | 1
```

## Observação

A execução não foi testada localmente neste computador por indisponibilidade das ferramentas Synopsys.
