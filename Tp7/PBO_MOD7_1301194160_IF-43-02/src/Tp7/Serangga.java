package Tp7;

public abstract class Serangga {
    private final int jmlKaki = 6;
    private String Warna;   
    public Serangga (String color){
        this.Warna = color;
    }
    
    public String getterW(){
        return this.Warna;
    }
    
    public int getterJ(){
        return this.jmlKaki;
    }
    
    public void setterW(String color){
       this.Warna = color;
    }
    public abstract void gerak(int [] G);
    
    public abstract void info();
}
