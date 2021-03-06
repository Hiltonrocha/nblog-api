#language:pt

@delete
Funcionalidade: Remover artigo
    Sendo o módulo administrativo do blog
    Posso solicitar requisições DELETE para o serviço Posts
    Para remover um determinado artigo no blog

    @smoke
    Cenario: Remover artigo do blog

        Dado que o usuário selecionou um artigo no blog
        Quando o módulo admin envia um DELETE para o serviço Posts
        Então o código de resposta deve ser "200"
            E o artigo não deve ser exibido ao solicitar uma busca