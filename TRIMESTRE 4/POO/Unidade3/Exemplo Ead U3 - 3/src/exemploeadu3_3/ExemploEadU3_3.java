package exemploeadu3_3;

public class ExemploEadU3_3 {

    public static void main(String[] args) {

        // declaracao de um vetor de 5 posicoes do tipo Pessoa
        Pessoa pessoas[] = new Pessoa[3];

        // criacao de objetos Pessoa
        Pessoa p1 = new Pessoa();
        p1.setNome("Pessoa 1");
        p1.setIdade(17);

        Pessoa p2 = new Pessoa();
        p2.setNome("Pessoa 2");
        p2.setIdade(26);

        Pessoa p3 = new Pessoa();
        p3.setNome("Pessoa 3");
        p3.setIdade(23);

        // atribuicao dos objetos Pessoa ao vetor
        pessoas[0] = p1;
        pessoas[1] = p2;
        pessoas[2] = p3;

        // escrita dos valores do vetor
        for (int i = 0; i < 3; i++) {
            System.out.println("Nome: " + pessoas[i].getNome());
            System.out.println("Idade: " + pessoas[i].getIdade());
            System.out.println("---");
        }

        // leitura de dados a partir do teclado
        for (int i = 0; i < 3; i++) {
            Pessoa p = new Pessoa();
            
            p.setNome(Entrada.leiaString("Informe um nome"));
            p.setIdade(Entrada.leiaInt("Informe uma idade"));
            
            // atribuicao do objeto ao vetor
            pessoas[i] = p;
        }

        // escrita dos valores do vetor
        for (int i = 0; i < 3; i++) {
            System.out.println("Nome: " + pessoas[i].getNome());
            System.out.println("Idade: " + pessoas[i].getIdade());
            System.out.println("---");
        }

    }

}
