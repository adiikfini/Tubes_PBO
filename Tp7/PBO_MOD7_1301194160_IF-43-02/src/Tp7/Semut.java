package Tp7;

public class Semut extends Serangga{
    private koordinat posisi;

    public Semut(String color, int a, int b) {
        super(color);
        posisi = new koordinat(a,b);
    }

    @Override
    public void gerak(int[] a){
        this.posisi.setterx(a[0]);
        this.posisi.settery(a[1]); 
    }

 
    @Override
    public void info() {
       System.out.println("X = "+ posisi.getterx());
       System.out.println("Y = "+ posisi.gettery());   
    }

}
