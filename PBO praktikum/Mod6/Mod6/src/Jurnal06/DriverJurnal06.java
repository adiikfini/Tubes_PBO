package Jurnal06;

public class DriverJurnal06 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        System.out.println("Nama : Moh Adi ikfini m");
        System.out.println("Kelas : IF - 43 -02");
        
        Serangga A = new Serangga ("merah", 20, 30);
        System.out.println("Posisi awal Serangga : " + A.getterP().getterx()+","+A.getterP().gettery() + "," + A.getterW());
        A.gerak(40, 50);
        System.out.println("Posisi Akhir Serangga : " + A.getterP().getterx()+","+A.getterP().gettery());
        Semut B = new Semut ("Hitam",50, 80);
        System.out.println("Posisi awal Semut : " + B.getterP().getterx()+","+B.getterP().gettery());
        System.out.println("Posisi sarang : " + B.getterP().getterx()+","+B.getterP().gettery());
        System.out.println("Rute B: ");
        if (B.getterJrute() == 0){
            System.out.println("--");
        }else{
            for (koordinat k : B.getterjalan()){
                System.out.println("    " + k.getterx() +", "+k.gettery());
            }
        }
        B.gerak(60, 100);
        B.gerak(70, 120);
        B.gerak(80, 140);
        
        System.out.println("Posisi Gerak B : " + B.getterP().getterx()+","+B.getterP().gettery());
        System.out.println("Rute B: ");
        if (B.getterJrute() == 0){
            System.out.println("--");
        }else{
            for (koordinat k : B.getterjalan()){
                System.out.println("    " + k.getterx() +", "+k.gettery());
            }
        }
        B.KembaliKesarang();
        System.out.println("Posisi Akhir B : " + B.getterP().getterx()+","+B.getterP().gettery());
        if (B.getterJrute() == 0){
            System.out.println("--");
        }else{
            for (koordinat k : B.getterjalan()){
                System.out.println("    " + k.getterx() +", "+k.gettery());
            }
        }     
    } 
}
