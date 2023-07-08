# mirrors_for_tortoissvn_extension

Adicionado novas op��es de rodar os comandos do SVN a partir de caminhos espelhos, versoes do mesmo repositorio. A altera��o foi realizada em cima da extens�o TortoisSVN para VSCode do fantasytyx

O pacote TortoiseSVN v0.1.1 dever� estar instalado.

<img src="img\extension.jpg" alt="IMAGE ALT TEXT HERE" />

Ap�s a instala��o, dever� ser substitu�do os arquivos nos seguintes lugares:

```
Arquivo: package.json
Caminho: %USERPROFILE%\.vscode\extensions\fantasytyx.tortoise-svn-0.1.1

Arquivo: extension.js
Caminho: %USERPROFILE%\.vscode\extensions\fantasytyx.tortoise-svn-0.1.1\out\src

```

### **Ou executar o install.cmd que faz essa substitui��o.**


Ap�s isso, reiniciar o VSCode e configurar o(s) caminho(s) do(s) reposit�rio(s) espelho nas configura��es do pacote.

<img src="img\param.jpg" alt="IMAGE ALT TEXT HERE" />

Existem duas op��es, uma que possibilita apenas um novo repositorio e outra que al�m de possibilitar mais reposit�rios permite uma maior configura��o das a��es permitidas.
Para essa segunda op��o utilizar as estruturas demonstradadas a baixo.


## Estrutura de cada Espelho configurado
```JSON
    {
        "name":"nomeRepo",
        "path":"caminhoRepo",
        "actions": ["update","commit","revert","cleanup","log","add","blame","diff","lock","unlock"]
    },

```

## Exemplo de estrutura de configura��o completa
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

Ao final, as novas op��es j� estar�o acess�veis.

<img src="img\options.jpg" alt="IMAGE ALT TEXT HERE" />

