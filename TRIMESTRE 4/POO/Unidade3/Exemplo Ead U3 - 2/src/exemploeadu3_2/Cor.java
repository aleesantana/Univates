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
public class Cor {

    private int codigo;
    private String descricao;

    // construtor vazio - o mesmo que não declarar
    public Cor() {

    }

    // construtor 2
    public Cor(int cor) {
        if (cor == 1) {
            descricao = "preta";
        } else if (cor == 2) {
            descricao = "branca";
        } else if (cor == 3) {
            descricao = "azul";
        }
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }
}
