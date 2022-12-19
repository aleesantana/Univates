
package entidades;

/**
 *
 * @author alees
 */
public class Emprestimo {
        private int id;
	private int id_funcionario;
	private int id_objeto;
	private String situacao;
	
	public Emprestimo(int id, int id_funcionario, int id_objeto, String situacao) {
		this.id = id;
		this.id_funcionario = id_funcionario;
		this.id_objeto = id_objeto;
		this.situacao = situacao;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getId_funcionario() {
		return this.id_funcionario;
	}

	public void setId_funcionario(int id_funcionario) {
		this.id_funcionario = id_funcionario;
	}

	public int getId_objeto() {
		return this.id_objeto;
	}

	public void setId_objeto(int id_objeto) {
		this.id_objeto = id_objeto;
	}

	public String getSituacao() {
		return this.situacao;
	}

	public void setSituacao(String situacao) {
		this.situacao = situacao;
	}
        
        @Override
        public String toString() {
        return "ID: " + id + ", ID Funcionário: " + id_funcionario + ", Id objeto: " + id_objeto + ", Situação: " + situacao;
    }
}
