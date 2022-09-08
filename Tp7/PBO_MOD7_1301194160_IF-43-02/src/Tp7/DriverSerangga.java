package Tp7;

/**
 *
 * @author ADI
 */
public class DriverSerangga {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("Nama = M Adi ikfini M");
        System.out.println("Nim = 1301194160");
        
        Semut S = new Semut("hitam", 60, 80);
        System.out.println("Warna Semut : "+S.getterW());
        S.info();
        S.gerak(new int[]{70, 90});
        S.info();
        Lebah L = new Lebah("kuning", 20, 30, 40) {};
        System.out.println("Warna Lebah : "+L.getterW());
        L.info();
        L.terbang(55, 65, 75);
        L.info();
        L.gerak(new int[]{25, 35, 45});
        L.info();
    }
    
    
}
