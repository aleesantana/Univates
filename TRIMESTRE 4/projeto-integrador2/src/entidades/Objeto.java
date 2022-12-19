
package entidades;

/**
 *
 * @author alees
 */
public class Objeto {
    private int id;
	private int id_tipo_objeto;
	private String nome;
	private String situacao;
	private Double peso;
	
	public Objeto (int id, int id_tipo_objeto, String nome, String situacao, Double peso) {
		this.id = id;
                this.id_tipo_objeto = id_tipo_objeto;
		this.nome = nome;
		this.situacao = situacao;
                this.peso = peso;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNome() {
		return this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getTipo() {
		return this.id_tipo_objeto;
	}

	public void setTipo(int id_tipo_objeto) {
		this.id_tipo_objeto = id_tipo_objeto;
	}

	public String getSituacao() {
		return this.situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}

	public int getId_tipo_objeto() {
		return id_tipo_objeto;
	}

	public void setId_tipo_objeto(int id_tipo_objeto) {
		this.id_tipo_objeto = id_tipo_objeto;
	}

	public Double getPeso() {
		return this.peso;
	}

	public void setPeso(Double peso) {
		this.peso = peso;
	}
	
    @Override
    public String toString(){
    	return "ID: " + id + ", Nome: " + nome + ", Situa��o: " + situacao + ", Peso: " + peso;
    }
}
