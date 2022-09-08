package Mod3;
/**
 *
 * @author ADI
 */
public class Album {
    String title;
    Integer year ;
    int track;
    Song[] songs;
    
    void setTitle(String Judul){
        if (Judul != null){
            this.title = Judul;
        } 
    }
    
    void setYear(Integer Tahun){
        if (Tahun != null){
            this.year = Tahun;
        }
    }
    
    void setTotalSongs(int isi){
        songs = new Song[isi];
    }
    
    String getTitle(){
        return this.title;
    }
    
    String getYear(){
        return "[" + this.year + "]";
    }
    
    void addSong(Song song){
        if (song != null){
            songs[track] = song;
            track++;
        }
    }
    
    void displayInfo(){
        System.out.println("Nama : Moh Adi Ikfini M");
        System.out.println("Nim : 1301194160");
        System.out.println("Kelas : IF-43-02");
        System.out.println("======================");
        
        
        System.out.println("Album Info");
        System.out.println("Title = " + this.title);
        System.out.println("Year = " + this.year);
        System.out.println("Song list : ");
        int i = 0; 
        while (i < this.songs.length){
           System.out.println("Title : " + this.songs[i].getTitle());
           System.out.println("Artist : " + this.songs[i].getArtist());
           System.out.println("Durasi : " + this.songs[i].getDuration());
           System.out.println("Categori : " + this.songs[i].play()); 
           System.out.println("=============================");
           i++;
        }
    }
}
