package Mod3;

/**
 *
 * @author ADI
 */
public class Song {
    String title;
    String artist;
    int duration;
    
    void setTitle(String Judul){
        if(Judul != null){
           this.title = Judul; 
        }
        
    }
    
    void setArtist(String Artis){
        if (Artis != null){
            this.artist = Artis;
        }
    }
    
    void setDuration(int durasi){
        if (durasi >= 0 && durasi <= 300){
            this.duration = durasi;
        } 
    }
    
    public String getTitle(){
        return this.title;
    }
    
    String getArtist(){
        return this.artist;
    }
    
    String getDuration(){
        int time = this.duration;
        int detik = time % 60;
        int menit = time / 60;
        if ((menit < 10 ) && (detik < 10)){ // menit dan detik kurang dari 10
            return "0" + menit  + ":0" + detik ;
        }else if((menit >= 10 ) && (detik < 10)){ // menit lebih dari 9 dan detik kurang dari 10
            return menit  + ":0" + detik ;
        }else if ((menit < 10 ) && (detik >= 10)){ // menit kurang dari 10 dan detik lebih dari 9
            return "0" + menit  + ":" + detik ;
        }
            
        return menit  + ":" + detik ; //menit dan detik lebih dari 9
    }
    
    public String play(){
        int C = this.duration;
        if ((C > 0) &&  (C < 120)){
            return("Durasi = Short");
        }else if ((C >= 2) && (C <= 240)){
            return ("Durasi = Intermediate");
        }else if (C > 240){
            return ("Durasi = Long");
        }
        return null;
    }
}
