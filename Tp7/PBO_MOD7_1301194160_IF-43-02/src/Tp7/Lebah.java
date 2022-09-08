package Tp7;

public abstract class Lebah extends Serangga implements BisaTerbang{
    private Koordinat3D posisi;
    public Lebah(String warna, int x, int y, int z){
        super(warna);
        this.posisi = new Koordinat3D(x,y,z);
    }
    @Override
    public void gerak(int[] X){
        this.posisi.setterx(X[0]);
        this.posisi.settery(X[1]);
        this.posisi.setterZ(X[2]);
        
    }
    @Override
    public void info(){
        System.out.println("X = "+ posisi.getterx());
        System.out.println("Y = "+ posisi.gettery());
        System.out.println("Z = "+ posisi.getterz());
    }
    @Override
    public void terbang(int x, int y, int z){
        this.posisi.setterx(posisi.getterx()+x); 
        this.posisi.settery(posisi.gettery()+y); 
        this.posisi.setterZ(posisi.getterz()+z); 
    }
}
