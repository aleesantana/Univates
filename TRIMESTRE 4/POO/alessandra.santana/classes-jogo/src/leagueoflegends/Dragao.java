package leagueoflegends;

import leagueoflegends.tipos.TipoDragao;

public class Dragao {
	private int id;
	private String nome = "";
	private String cor = "";
	private double life = 10000;
	private TipoDragao tipo;
	
	public Dragao(int id, String nome, String cor, double life, TipoDragao tipo) {
		this.id = id;
		this.nome = nome;
		this.cor = cor;
		this.life = life;
		this.tipo = tipo;
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
	
	public String getCor() {
		return this.cor;
	}
	
	public void setCor(String cor) {
		this.cor = cor;
	}
	
	public double getLife() {
		return this.life;
	}
	
	public void setLife(double life) {
		this.life = life;
	}
	
	public TipoDragao getTipo() {
		return this.tipo;
	}
	
	public void setTipo(TipoDragao tipo) {
		this.tipo = tipo;
	}
	
	public void spawn() {}
	
	public void movimentoPassivo() {}
	
	public void ataque() {}
	
	public void liberaBuff() {}
	
	public void morrer() {}	
}