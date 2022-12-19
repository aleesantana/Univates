/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exemploeadu3_1;

/**
 *
 * @author pretto
 */
public class TestaProduto {

    public static void main(String[] args) {

        // criacao do objeto
        Produto p1 = new Produto();

        // acesso ao atributo static por meio da sintaxe:
        // Classe.atributo ou 
        // Classe.metodo
        Produto.codigoGenerico += 1;

        // metodos set
        p1.setCodigo(Produto.codigoGenerico);
        p1.setDescricao("Produto 1");

        // idem para o Produto 2
        Produto p2 = new Produto();
        Produto.codigoGenerico += 1;
        p2.setCodigo(Produto.codigoGenerico);
        p2.setDescricao("Produto 2");

        // saida de dados
        System.out.println("Produto 1: " + p1.getCodigo());
        System.out.println("Produto 2: " + p2.getCodigo());
        System.out.println("Variável codigoGenerico: " + Produto.getCodigoGenerico());
    }
}
