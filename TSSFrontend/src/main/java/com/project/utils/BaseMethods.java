package com.project.utils;

import java.util.Properties;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
public class BaseMethods {

	public static String getUserName(){
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String userName = user.getUsername();
		return userName;
	}
	public static String generatePassword() {

		int n = 8;
		// chose a Character random from this String 
        String AlphaNumericString = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                    + "0123456789"
                                    + "abcdefghijklmnopqrstuvxyz"; 
  
        // create StringBuffer size of AlphaNumericString 
        StringBuilder sb = new StringBuilder(n); 
  
        for (int i = 0; i < n; i++) { 
  
            // generate a random number between 
            // 0 to AlphaNumericString variable length 
            int index 
                = (int)(AlphaNumericString.length() 
                        * Math.random()); 
  
            // add Character one by one in end of sb 
            sb.append(AlphaNumericString 
                          .charAt(index)); 
        } 
  
        return sb.toString(); 
	}
	
	public static void sendMail(String receiver,String securityKey,String userName){

		final String from = "noreplytrafficsurveillance@gmail.com";
		final String username = "";
		final String password = "trafficsurveillancesystem2018";

		String host = "smtp.gmail.com";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		props.put("mails.smtp.ssl.trust","smtp.gmail.com");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, password);
			}
		});

		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(from));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(receiver));
			message.setSubject("Approve ");
			
			
			/*
			 * int num = 0; String pass = ""; for (int i = 0; i < 4;
			 * i++) { num = (int) (Math.random() * 10); pass += num; }
			 * 
			 * System.out.println(pass);
			 * 
			 * s.setAttribute("password", pass);
			 */

			message.setText("Hello ,  " + userName + " your password is " + securityKey 
					 );

			Transport.send(message);

			System.out.println("Sent message successfully....");

		} catch (Exception e) {

			e.printStackTrace();
		}

	}
	
	public static String encrypt(String strClearText,String strKey) throws Exception{
		String strData="";
		
		try {
			SecretKeySpec skeyspec=new SecretKeySpec(strKey.getBytes(),"Blowfish");
			Cipher cipher=Cipher.getInstance("Blowfish");
			cipher.init(Cipher.ENCRYPT_MODE, skeyspec);
			byte[] encrypted=cipher.doFinal(strClearText.getBytes());
			strData=new String(encrypted);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return strData;
	}
	
	public static String decrypt(String strEncrypted,String strKey) throws Exception{
		String strData="";
		
		try {
			SecretKeySpec skeyspec=new SecretKeySpec(strKey.getBytes(),"Blowfish");
			Cipher cipher=Cipher.getInstance("Blowfish");
			cipher.init(Cipher.DECRYPT_MODE, skeyspec);
			byte[] decrypted=cipher.doFinal(strEncrypted.getBytes());
			strData=new String(decrypted);
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
		return strData;
	}
	
	
	
	/*
	 * private static Cipher ecipher; private static Cipher dcipher; private static
	 * SecretKey key;
	 * 
	 * 
	 * public static void initCipher() { try { // generate secret key using DES
	 * algorithm key = KeyGenerator.getInstance("DES").generateKey();
	 * 
	 * 
	 * System.out.println(key); ecipher = Cipher.getInstance("DES"); dcipher =
	 * Cipher.getInstance("DES");
	 * 
	 * ecipher.init(Cipher.ENCRYPT_MODE, key); dcipher.init(Cipher.DECRYPT_MODE,
	 * key); } catch (InvalidKeyException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } catch (NoSuchAlgorithmException e) { // TODO
	 * Auto-generated catch block e.printStackTrace(); } catch
	 * (NoSuchPaddingException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); }
	 * 
	 * }
	 * 
	 * 
	 * public static String encrypt(String str) { try { byte[] utf8 =
	 * str.getBytes("UTF8"); byte[] enc = ecipher.doFinal(utf8);
	 * 
	 * enc = BASE64EncoderStream.encode(enc);
	 * 
	 * return new String(enc); }catch (Exception e) { e.printStackTrace(); } return
	 * null; }
	 * 
	 * public static String decrypt(String str) { try { byte[] dec =
	 * BASE64DecoderStream.decode(str.getBytes()); byte[] utf8 =
	 * dcipher.doFinal(dec); return new String(utf8, "UTF8"); } catch (Exception e)
	 * { e.printStackTrace(); }
	 * 
	 * return null;
	 * 
	 * }
	 */
	
}
