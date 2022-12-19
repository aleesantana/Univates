
package entidades;

/**
 *
 * @author alees
 */
public class Manutencao {
    private int id;
	private int id_objeto;
	private String tipo;
	private String descricao;
	private String solucao;
	private String status;
	private String data;
	
	public Manutencao(int id, int id_objeto, String tipo, String descricao, String data, String solucao,
			String status) {
		super();
		this.id = id;
		this.id_objeto = id_objeto;
		this.tipo = tipo;
		this.descricao = descricao;
		this.data = data;
		this.solucao = solucao;
		this.status = status;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_objeto() {
		return this.id_objeto;
	}

	public void setId_objeto(int id_objeto) {
		this.id_objeto = id_objeto;
	}

	public String getTipo() {
		return this.tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getDescricao() {
		return this.descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getData() {
		return this.data;
	}

	public void setData(String data) {
		this.data = data;
	}

	public String getSolucao() {
		return this.solucao;
	}

	public void setSolucao(String solucao) {
		this.solucao = solucao;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
        
        @Override
    public String toString(){
    	return "ID: " + id + " \nID do objeto: " + id_objeto + " \nTipo: " + tipo + " \nDescrição: " + descricao +
                "\nSolução: " + solucao + "\nStatus: " + status + " \nData: " + data;
    }
}
