package Tp7;

/**
 *
 * @author ADI
 */
public class Koordinat3D extends koordinat {
    int z;
    
    public Koordinat3D(int a, int b, int c) {
        super(a, b);
        this.z = c;
    }
    
    public int getterz(){
        return this.z;
    }
    
    public void setterZ(int isi){
        this.z = isi;
    }    
}
