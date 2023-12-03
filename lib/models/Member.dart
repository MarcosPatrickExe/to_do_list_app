// teste
// essa classe/interface servira para tipar uma List<> na qual ira receber alguns usuarios do github atraves de uma chamada a API
class Member {
        String login;     // login basico com nomes e numeros com padrao alfanumerico
        String avatarUrl; // essa String só funciona caso o link da imagem esteja no formato padrão, ou seja, no formato HTTP

        // espaco para separar o construtor do restante das propriedades
        Member( this.login, this.avatarUrl ); // construtor do tipo nomeado e nem do tipo posicional
}
