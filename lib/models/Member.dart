
// essa classe servira para tipar uma List<> na qual ira receber alguns usuarios do github atraves de uma chamada a API
class Member {
        String login;
        String avatarUrl; // essa String só funciona caso o link da imagem esteja no formato padrão

        Member( this.login, this.avatarUrl );
}
