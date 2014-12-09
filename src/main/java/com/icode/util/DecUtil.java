package com.icode.util;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public class DecUtil{

    public String decrypt(String string) {
        BASE64Decoder decode = new BASE64Decoder();
        String s = null;
        try {
            String codeVal [] = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
            String intVal []={"a","b","c","d","A","B","C","D","E","e","f","g","h","i","O","P","Q","R","S","T","U","V","W","X","Y","Z","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","F","G","H","I","J","K","L","M","N"};
            String ls=string;
            String ts="";
            for(int i=0;i<ls.length();i++){
            	for(int j=0;j<intVal.length;j++){
    	        	if(ls.substring(i, i+1).equals(intVal[j])){
    	        		ts=ts+codeVal[j];
    	        		break;
    	        	}else if (!(ls.substring(i, i+1).equals(intVal[j])) & j==intVal.length-1){
    	        		ts=ts+ls.substring(i, i+1);
    	        	}
            	}
            }

            byte[] b = decode.decodeBuffer(ts);
            s = new String(b);
        } catch (IOException ex) {
            Logger.getLogger(DecUtil.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public String encrypt(String string) {
        BASE64Encoder encode = new BASE64Encoder();
        String codeVal [] = {"0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"};
        String intVal []={"a","b","c","d","A","B","C","D","E","e","f","g","h","i","O","P","Q","R","S","T","U","V","W","X","Y","Z","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9","F","G","H","I","J","K","L","M","N"};
        String ls=encode.encode(string.getBytes());
        String ts="";
        for(int i=0;i<ls.length();i++){
        	for(int j=0;j<codeVal.length;j++){
	        	if(ls.substring(i, i+1).equals(codeVal[j])){
	        		ts=ts+intVal[j];
	        		break;
	        	}else if (!(ls.substring(i, i+1).equals(codeVal[j])) & j==codeVal.length-1){
	        		ts=ts+ls.substring(i, i+1);
	        	}
        	}
        }
        return ts;
    }
    
    
    public static void main(String[] args){
    	DecUtil util = new DecUtil();
    	String encrypt = util.encrypt("2000000");
    	String decrypt = util.decrypt(encrypt);
    	System.out.println("encrypt:"+encrypt);
    	System.out.println("decrypt:"+decrypt);
    }
}
