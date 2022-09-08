package Jurnal06;
public class Serangga {
    private final int jmlKaki = 6;
    private String Warna;
    private koordinat posisi;   
    public Serangga (String color, int a, int b){
        this.Warna = color;
        koordinat A = new koordinat(a,b);
        this.posisi = A;
    }
    
    public String getterW(){
        return this.Warna;
    }
    
    public koordinat getterP(){
        return this.posisi;
    }
    
    public int getterJ(){
        return this.jmlKaki;
    }
    
    public void setter(koordinat pop){
        this.posisi = pop;
    }
    
    public void gerak(int x  , int y){
        this.posisi.setterx(x);
        this.posisi.settery(y);
    }
}
