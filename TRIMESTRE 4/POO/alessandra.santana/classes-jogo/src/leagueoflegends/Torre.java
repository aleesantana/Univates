package leagueoflegends;

public class Torre {
	private int id;
	private String cor = "";
	private int life = 500;
	private double dano;
	private double range = 100;
	
	public Torre(int id, String cor, int life, double dano, double range) {
		this.id = id;
		this.cor = cor;
		this.life = life;
		this.dano = dano;
		this.range = range;
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

	public double getDano() {
		return this.dano;
	}

	public void setDano(double dano) {
		this.dano = dano;
	}

	public double getRange() {
		return this.range;
	}

	public void setRange(double range) {
		this.range = range;
	}
	
	public void ataque() {}
	
	public void cair() {}
}