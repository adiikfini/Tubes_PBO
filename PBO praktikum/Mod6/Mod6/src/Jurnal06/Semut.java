package Jurnal06;

public class Semut extends Serangga{
    private koordinat lokasiSarang;
    private koordinat []rute;
    private int jmlRute; 

    public Semut(String color, int a, int b) {
        super(color, a, b);
        this.rute = new koordinat[3];
        this.jmlRute = 0;
    }
    
    public koordinat getterLoc(){
        return this.lokasiSarang;
    }
    
    public koordinat[] getterjalan(){
        return this.rute;
    }
    
    public int getterJrute(){
        return this.jmlRute;
    }
    
    public void setterLoc(koordinat x){
        this.lokasiSarang = x;
    }
    
    public void setterjalan(koordinat[] T){
        this.rute = T;
    }
    
    public void setterJrute(int a){
        this.jmlRute = a;
    }
    
    private void tambahRute(koordinat isi){
        this.rute[this.jmlRute] = isi;
        this.jmlRute++;
    }
    
    @Override
    public void gerak(int x, int y){
        super.setter(new koordinat(x, y));
        this.tambahRute(new koordinat(x,y));
    }
    
    public void KembaliKesarang(){
        this.rute = new koordinat[3];
        this.jmlRute = 0;
    }
}
