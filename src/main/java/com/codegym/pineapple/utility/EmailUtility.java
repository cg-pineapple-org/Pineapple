package com.codegym.pineapple.utility;
import io.github.cdimascio.dotenv.Dotenv;
import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import java.util.Properties;



public class EmailUtility {

    private static final Dotenv dotenv = Dotenv.load();
    private static final String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
    private static Properties props = new Properties();
    static {
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.socketFactory.fallback", "false");
        props.put("mail.debug", "true");
    }



    public static void sendMail(EmailMessage emailMessageDTO) throws Exception{
        String sender_Email = dotenv.get("EMAIL2");
        String sender_email_pass = dotenv.get("EMAIL_TOKEN2");
        try {

            // Connection to Mail Server
            Session session = Session.getInstance(props, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(sender_Email,sender_email_pass);
                }
            });

            session.setDebug(true);

            Message msg = new MimeMessage(session);
            InternetAddress addressFrom = new InternetAddress(sender_Email);
            msg.setFrom(addressFrom);

            String[] emailIds = new String[0];

            if (emailMessageDTO.getTo() != null) {
                emailIds = emailMessageDTO.getTo().split(",");
            }

            String[] emailIdsCc = new String[0];

            if (emailMessageDTO.getCc() != null) {
                emailIdsCc = emailMessageDTO.getCc().split(",");
            }
            String[] emailIdsBcc = new String[0];

            if (emailMessageDTO.getBcc() != null) {
                emailIdsBcc = emailMessageDTO.getBcc().split(",");
            }

            InternetAddress[] addressTo = new InternetAddress[emailIds.length];

            for (int i = 0; i < emailIds.length; i++) {
                addressTo[i] = new InternetAddress(emailIds[i]);
            }

            InternetAddress[] addressCc = new InternetAddress[emailIdsCc.length];

            for (int i = 0; i < emailIdsCc.length; i++) {
                addressCc[i] = new InternetAddress(emailIdsCc[i]);
            }

            InternetAddress[] addressBcc = new InternetAddress[emailIdsBcc.length];

            for (int i = 0; i < emailIdsBcc.length; i++) {
                addressBcc[i] = new InternetAddress(emailIdsBcc[i]);
            }

            if (addressTo.length > 0) {
                msg.setRecipients(Message.RecipientType.TO, addressTo);
            }

            if (addressCc.length > 0) {
                msg.setRecipients(Message.RecipientType.CC, addressCc);
            }

            if (addressBcc.length > 0) {
                msg.setRecipients(Message.RecipientType.BCC, addressBcc);
            }

            msg.setSubject(emailMessageDTO.getSubject());

            switch (emailMessageDTO.getMessageType()) {
                case EmailMessage.HTML_MSG:
                    msg.setContent(emailMessageDTO.getMessage(), "text/html");
                    break;
                case EmailMessage.TEXT_MSG:
                    msg.setContent(emailMessageDTO.getMessage(), "text/plain");
                    break;
            }

            Transport.send(msg);

        } catch (Exception e) {
            System.out.println("Error when send email: " + e.getMessage());
            e.printStackTrace();
        }
    }
}