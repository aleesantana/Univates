/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exemploeadu3_2;

/**
 *
 * @author pretto
 */
public class ExemploEadU3_2 {

    public static void main(String[] args) {

        // criacao do objeto cor
        Cor cor = new Cor();
        cor.setCodigo(1);
        cor.setDescricao("laranja");

        // criacao do objeto produto
        Produto produto = new Produto();
        produto.setCodigo(1);
        produto.setDescricao("Chinelo");
        produto.setCor(cor);

        // escrita dos dados
        System.out.println("Código produto: " + produto.getCodigo());
        System.out.println("Descrição produto: " + produto.getDescricao());
        System.out.println("Cor produto: " + produto.getCor().getDescricao());
    }

}
