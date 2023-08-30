
// essa classe/interface servira para tipar uma List<> na qual ira receber alguns usuarios do github atraves de uma chamada a API
class Member {
        String login;     // login basico com nomes e numeros com padrao alfanumerico
        String avatarUrl; // essa String só funciona caso o link da imagem esteja no formato padrão

        Member( this.login, this.avatarUrl ); // construtor simples sem ser do tipo nomeado e nem do tipo posicional
}
