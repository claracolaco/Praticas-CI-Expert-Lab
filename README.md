
# Prática de CI Expert Lab

## Objetivo da Atividade
Essa atividade tem como objetivo aplicar os conceitos de **Design Verification** utilizando **SystemVerilog** e **Git**.

## Comandos Usados e suas Funções

### 1. Criando a estrutura do projeto com `gen-prj.sh`
Para criar o projeto `hello`, usei o script `gen-prj.sh`:
```bash
./gen-prj.sh hello
```
**Função:** Criar a estrutura de diretórios e arquivos para o projeto `hello`.

### 2. Editando o arquivo `tb_top.sv`
Depois, editei o arquivo `tb_top.sv` para instanciar o DUT e realizar a simulação. O código foi modificado para o seguinte:
```systemverilog
module tb_top();
  logic a, b, c;
  dut uu_dut (
    .a(a),
    .b(b),
    .c(c)
  );

  initial begin
    $display("a b | c");
    $display("-----");
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
```
**Função:** Criar um testbench para simular as combinações de entrada e saída.

### 3. Comandos Git

#### a. Inicializando o repositório Git
```bash
git init
```
**Função:** Inicializar o repositório Git no diretório do projeto.

#### b. Adicionando e commitando os arquivos
```bash
git add .
git commit -m "feat: cria estrutura de projeto hello com testbench"
```
**Função:** Adicionar os arquivos ao Git e fazer o commit.

#### c. Enviando para o GitHub
```bash
git remote add origin https://github.com/claracolaco/Praticas-CI-Expert-Lab.git
git push -u origin gen-prj
```
**Função:** Conectar o repositório local ao GitHub e enviar os arquivos.

### 4. Comandos de simulação (para quando no laboratório)
```bash
vcs -sverilog tb_top.sv ../rtl/dut.sv
./simv
```
**Função:** Compilar e simular os arquivos SystemVerilog.
