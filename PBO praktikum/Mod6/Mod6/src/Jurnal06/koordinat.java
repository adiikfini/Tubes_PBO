/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Jurnal06;

/**
 *
 * @author ADI
 */
public class koordinat {
    private int x;
    private int y;
    
    public koordinat(int a, int b){
        this.x = a;
        this.y = b;
    }
    
    public int getterx(){
        return this.x;
    }
    
    public int gettery(){
        return this.y;
    }
    
    public void setterx(int a){
        this.x = a;
    } 
    
    public void settery(int b){
        this.y = b;
    }   
}
