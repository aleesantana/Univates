package leagueoflegends;

import java.time.LocalDateTime;

import leagueoflegends.tipos.TipoSentinela;

public class SentinelaDeControle {
	private int id;
	private String cor = "";
	private int life;
	private LocalDateTime time;
	private TipoSentinela tipo;
	
	public SentinelaDeControle(int id, String cor, int life, LocalDateTime time, TipoSentinela tipo) {
		this.id = id;
		this.cor = cor;
		this.life = life;
		this.time = time;
		this.tipo = tipo;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getCor() {
		return this.cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public int getLife() {
		return this.life;
	}

	public void setLife(int life) {
		this.life = life;
	}

	public LocalDateTime getTime() {
		return this.time;
	}

	public void setTime(LocalDateTime time) {
		this.time = time;
	}

	public TipoSentinela getTipo() {
		return this.tipo;
	}

	public void setTipo(TipoSentinela tipo) {
		this.tipo = tipo;
	}

	public void areaRevelacao() {}
	
	public void finalizacao() {}
}