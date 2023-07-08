# mirrors_for_tortoissvn_extension

Adicionado novas opções de rodar os comandos do SVN a partir de caminhos espelhos, versoes do mesmo repositorio. A alteração foi realizada em cima da extensão TortoisSVN para VSCode do fantasytyx

O pacote TortoiseSVN v0.1.1 deverá estar instalado.

<img src="img\extension.jpg" alt="IMAGE ALT TEXT HERE" />

Após a instalação, deverá ser substituído os arquivos nos seguintes lugares:

```
Arquivo: package.json
Caminho: %USERPROFILE%\.vscode\extensions\fantasytyx.tortoise-svn-0.1.1

Arquivo: extension.js
Caminho: %USERPROFILE%\.vscode\extensions\fantasytyx.tortoise-svn-0.1.1\out\src

```

### **Ou executar o install.cmd que faz essa substituição.**


Após isso, reiniciar o VSCode e configurar o(s) caminho(s) do(s) repositório(s) espelho nas configurações do pacote.

<img src="img\param.jpg" alt="IMAGE ALT TEXT HERE" />

Existem duas opções, uma que possibilita apenas um novo repositorio e outra que além de possibilitar mais repositórios permite uma maior configuração das ações permitidas.
Para essa segunda opção utilizar as estruturas demonstradadas a baixo.


## Estrutura de cada Espelho configurado
```JSON
    {
        "name":"nomeRepo",
        "path":"caminhoRepo",
        "actions": ["update","commit","revert","cleanup","log","add","blame","diff","lock","unlock"]
    },

```

## Exemplo de estrutura de configuração completa
```json
   "TortoiseSVN.mirrorRepositorys": [
        {
            "name":"Trunk Antiga",
            "path":"C:\\ProdutosSG\\trunk_antiga\\",
            "actions": ["log","add","blame"]
        },
        {
            "name":"Beta",
            "path":"B:\\",
            "actions": ["log","add","blame"]
        },
        {
            "name":"OK",
            "path":"O:\\",
            "actions": ["log","add","blame"]
        },
        {
            "name":"SuperOK",
            "path":"S:\\",
            "actions": ["log","add","blame"]
        },
        {
            "name":"UltraOK",
            "path":"U:\\",
            "actions": ["log","add","blame"]
        }

   ]

```

Ao final, as novas opções já estarão acessíveis.

<img src="img\options.jpg" alt="IMAGE ALT TEXT HERE" />

