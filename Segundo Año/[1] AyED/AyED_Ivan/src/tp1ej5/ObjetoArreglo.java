package tp1ej5;

public class ObjetoArreglo {

	private int max = -1;
	private int min = 999;
	private double prom;
	
	
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public double getProm() {
		return prom;
	}
	public void setProm(double prom) {
		this.prom = prom;
	}
	@Override
	public String toString() {
		return "ObjetoArreglo [max=" + max + ", min=" + min + ", prom=" + prom + "]";
	}
	
}
