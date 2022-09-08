package Mod3;

/**
 *
 * @author ADI
 */
public class DriverAlbum {
    public static void main (String[] args){
        Song song1 = new Song();
        Song song2 = new Song();
        
        song1.setTitle("Melukis Senja");
        song1.setArtist("Budi Doremi"); 
        song1.setDuration(240);
        
        song2.setTitle("Photograph");
        song2.setArtist("Ed Sheeran");
        song2.setDuration(247);
        
        Album album = new Album();
        
        album.setTitle("Pernah Hits");
        album.setYear(2021);
        
        album.setTotalSongs(2); // = Song[] songs = new Song[2]
        album.addSong(song1); // Song songs = song1 ++ track ++ 
        album.addSong(song2);
        album.displayInfo();
    }
}

//        System.out.println("Album info");
//        System.out.println(album.getTitle());
//        System.out.println(album.getYear());
//        
//        
//        
//        System.out.println("List Song : ");
//        
//        System.out.println(song1.getTitle());
//        System.out.println(song1.getArtist());
//        System.out.println(song1.getDuration());
//        System.out.println(song1.play());
//        
//        System.out.println(song2.getTitle());
//        System.out.println(song2.getArtist());
//        System.out.println(song2.getDuration());
//        System.out.println(song2.play());