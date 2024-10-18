A execução desses circuitos é feita usando a versão 3.8.0 do logisim-evolution: https://github.com/logisim-evolution/logisim-evolution
Landing page do projeto: https://christoferlv.github.io/ProjetoAperture/

Para o logisim conseguir abrir as arquiteturas implementadas, a pasta "components" deve estar na mesma pasta do .circ da arquitetura que o usuário quer usar.

Em sistemas linux pode ser necessário alterar no XML do .circ da arquitutura o caractere "\" para "/" no local em que os componentes são importados.
Ex: \<lib desc="file#components\regFile.circ" name="12"/> deve ser trocado para <lib desc="file#components/regFile.circ" name="12"/>
