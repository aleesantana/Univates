package leagueoflegends;

import leagueoflegends.tipos.TipoPersonagem;
import leagueoflegends.tipos.TipoSkin;

public class Personagem {
	private int id;
	private String apelido = "";
	private int level = 0;
	private int life = 100;
	private double range = 0;
	private double velocidade = 0;
	private double dano = 10;
	private TipoPersonagem tipo;
	private TipoSkin skin;
	
	public Personagem(int id, String apelido, int level, int life, 
			double range, double velocidade, double dano, TipoPersonagem tipo, TipoSkin skin) {
		this.id = id;
		this.apelido = apelido;
		this.level = level;
		this.life = life;
		this.range = range;
		this.velocidade = velocidade;
		this.dano = dano;
		this.tipo = tipo;
		this.skin = skin;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getApelido() {
		return this.apelido;
	}

	public void setApelido(String apelido) {
		this.apelido = apelido;
	}
	
	public int getLevel() {
		return this.level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getLife() {
		return this.life;
	}

	public void setLife(int life) {
		this.life = life;
	}

	public double getRange() {
		return this.range;
	}

	public void setRange(double range) {
		this.range = range;
	}

	public double getVelocidade() {
		return this.velocidade;
	}

	public void setVelocidade(double velocidade) {
		this.velocidade = velocidade;
	}

	public double getDano() {
		return this.dano;
	}

	public void setDano(double dano) {
		this.dano = dano;
	}

	public TipoPersonagem getTipo() {
		return this.tipo;
	}

	public void setTipo(TipoPersonagem tipo) {
		this.tipo = tipo;
	}

	public TipoSkin getSkin() {
		return this.skin;
	}

	public void setSkin(TipoSkin skin) {
		this.skin = skin;
	}

	public void movimentoPassivo() {}
	
	public void movimentar() {}
	
	public void atirar() {}
	
	public void gargalhar() {}
	
	public void dancar() {}
	
	public void morrer() {}
}
