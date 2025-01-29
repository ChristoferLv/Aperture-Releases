# Projeto Aperture

Este projeto tem como objetivo fornecer um material interativo e visual para colaborar com o ensino de circuitos digitais e arquitetura de computadores, focando inicialmente na arquitetura MIPS e com planos para expansão à arquitetura RISC-V. O projeto é desenvolvido para uso no simulador de circuitos digitais Logisim-evolution (versão 3.8.0).

## Execução
- **Requisitos:** Utilize a versão 3.8.0 do Logisim-evolution: [logisim-evolution no GitHub](https://github.com/logisim-evolution/logisim-evolution)
- **Landing page do projeto:** [Projeto Aperture](https://christoferlv.github.io/ProjetoAperture/)
- **Configuração de diretórios:**
  - Para abrir as arquiteturas implementadas, a pasta `components` deve estar no mesmo diretório do arquivo `.circ` correspondente.
  - **Nota para sistemas Linux:** Pode ser necessário editar o XML dos arquivos `.circ`, substituindo `\\` por `/` no caminho dos componentes.
    - Exemplo:
```xml
<lib desc="file#components\regFile.circ" name="12"/>
```
deve ser trocado por:
```xml
<lib desc="file#components/regFile.circ" name="12"/>
```

## Conteúdo Disponível

### Circuitos Digitais
- Construção de portas lógicas usando transistores.
- Construção de portas lógicas mostrando a equivalências com NAND e NOR.
  ![Quadro_NAND](https://github.com/user-attachments/assets/3bf4b462-dc0d-4957-8552-fe60c1e94e72)
- Construção de encoders e decoders.
  - Decodificardor 2 entradas 4 saídas.
  - Decodificador BCD.
  - Decodificador para diplay de 7 segmentos.
  - Codificador 4 entradas 2 saídas.
  - Codificador BCD.
- Construção de multiplexadores de demultiplexadores.
  - Mux de duas, quatro e oito entradas de 1 bit.
  - Mux de duas e quatro entradas de 2 bits (forma soma de produtos e produto das somas)
- Construção de latches e flip-flops.
  - Demux de duas, quatro e oito saídas de 1 bit.
  - Demux de duas e quatro saídas de 2 bits.
- Operações aritméticas:
  - Adição
    - Somador 4, 8 e 32 bits.
    - Somador lookahead 3 e 8 bits.
    <img align="left" src="https://github.com/user-attachments/assets/a6c9a786-1fe7-4cdf-9c95-a6539879697a">
 
  - Subtração.
    - somador_subtrator 4 e 8 bits.
    - somador_subtrator lookahead 4 e 8 bits.
  - Multiplicação.
    - Multiplicador 8 bits sequencial.
    - Multiplicador array de 4 e 8 bits.
    - Multiplicador array de 8 bits sem subcircuito.
  - Divisão.
    - Divisor array de 4 e 8 bits.
- Construção de registradores com combinações de entrada e saída:
  - Paralela-paralela.
  - Paralela-serial.
  - Serial-paralela.
  - Serial-serial.

### Arquitetura de Computadores
- Fornecemos a construção de caminhos de dados MIPS parciais para:
  - add
  - addi
  - beq
  - j
  - lw
  - sw
- Comparação entre os caminhos de dados listados e também um caminho de dados manual para o usuário poder explorar o papel dos sinais de controle, visualizando qual seria o trabalho de uma unidade de controle.
![compared_datapaths](https://github.com/user-attachments/assets/f2f06469-bb05-4364-8a4a-a33d72bfe22c)

### Implementações Completas do MIPS

#### Instruções Suportadas
| Instrução          | Formato                 | Instrução          | Formato                 |
|--------------------|-------------------------|--------------------|-------------------------|
| `add`             | `rd = rs + rt`          | `andi`            | `rt = rs & immediate`   |
| `and`             | `rd = rs & rt`          | `ori`             | `rt = rs \| immediate`   |
| `sll`             | `rd = rt << sa`         | `lw`              | `rt = Mem[rs + offset]` |
| `srl`             | `rd = rt >> sa`         | `sw`              | `Mem[rs + offset] = rt` |
| `sub`             | `rd = rs - rt`          | `beq`             | `if (rs == rt) PC = target`|
| `or`              | `rd = rs \| rt`          | `bne`             | `if (rs != rt) PC = target`|
| `xor`             | `rd = rs ^ rt`          | `slti`            | `rt = (rs < immediate)` |
| `nor`             | `rd = ~(rs \| rt)`       | `j`               | `PC = target`           |
| `slt`             | `rd = (rs < rt)`        | `jal`             | `ra = PC; PC = target`  |
| `jr`              | `PC = rs`              |   `addi`            | `rt = rs + immediate`  |

#### Implementações MIPS Disponíveis
- **Monociclo:** Executa as instruções em um ciclo de clock. (Segue o diagrama 4.24 do Patterson)
  ![monociclo](https://github.com/user-attachments/assets/e8fdf56a-316f-4571-af8a-94c6205688aa)

- **Pipeline_clean:** Pipeline de cinco estágios sem tratamento de hazards. (Segue o diagrama 4.41 do Patterson)
- **Pipeline2:** (Segue o diagrama 4.51 do Patterson)
  - Trata hazards de controle com bolhas.
- **Pipeline_2_bubble:** 
  - Trata todos os hazards com bolhas.
- **Pipeline_2_fw:** (Segue o diagrama 4.60 do Patterson)
  - Trata hazards de dados com forwarding.
- **Pipeline_2_v2:**
  - Adianta o controle de desvio para o estágio 2 para maior eficiência.
- **Pipeline_2_v2_bubble:**
  - Trata hazards de dados com bolhas.
- **Pipeline_2_v2_fw:** (Segue o diagrama 4.65 do Patterson)
  - Trata hazards de dados com forwarding.

### Códigos para testes
São disponibilizados alguns códigos de teste focados em unidades funcionais para o usuário testar seus funcionamentos.

## Referências
Mais informações sobre o conjunto de instruções MIPS nos seguintes links:
- [Computer Organization and Design: The Hardware/Software Interface](https://edisciplinas.usp.br/pluginfile.php/7898320/mod_resource/content/1/Computer%20Organization%20and%20Design%205E%20-%20Patterson%20Hennessy%20-%200124077269.pdf)
- [COD 5e Greencard](https://booksite.elsevier.com/9780124077263/downloads/COD_5e_Greencard.pdf)
- [MIPS Instruction Formats - Wikibooks](https://en.wikibooks.org/wiki/MIPS_Assembly/Instruction_Formats)
- [MIPS Reference](https://uweb.engr.arizona.edu/~ece369/Resources/spim/MIPSReference.pdf)
- [MIPS Opcodes - OpenCores](https://opencores.org/projects/plasma/opcodes)


