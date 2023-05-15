package com.example.demo.controller.mail;

import static com.google.api.services.gmail.GmailScopes.GMAIL_SEND;
import static javax.mail.Message.RecipientType.TO;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Paths;
import java.util.Properties;
import java.util.Set;
import javax.mail.Address;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.apache.commons.codec.binary.Base64;
import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.extensions.java6.auth.oauth2.AuthorizationCodeInstalledApp;
import com.google.api.client.extensions.jetty.auth.oauth2.LocalServerReceiver;
import com.google.api.client.googleapis.auth.oauth2.GoogleAuthorizationCodeFlow;
import com.google.api.client.googleapis.auth.oauth2.GoogleClientSecrets;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.googleapis.json.GoogleJsonError;
import com.google.api.client.googleapis.json.GoogleJsonResponseException;
import com.google.api.client.http.javanet.NetHttpTransport;
import com.google.api.client.json.gson.GsonFactory;
import com.google.api.client.util.store.FileDataStoreFactory;
import com.google.api.services.gmail.Gmail;
import com.google.api.services.gmail.model.Message;



public class GMailer {

	// Alt+shift+s +c 可以快速鍵造建構子 !
	// 除此之外 還有 alt+shift+i可以把變數累贅多打的 直接縮短到一行
	// Alt+shift+r 變更名稱 也很方便
	// ctrl+1 或2 和 ctrl+shif+l 也不錯

	private static final String TEST_EMAIL = "linc4003931@gmail.com";
	private static final String RECEIVE_EMAIL = "linc4003931@gmail.com";
	private static Address[] REPLY_EMAIL;
	private Gmail service;

	// 丟出例外的快捷鍵 方式之一 ctrl+1 可以選擇~
	public GMailer() throws Exception {
		REPLY_EMAIL = new InternetAddress[] { new InternetAddress("linc4003931@gmail.com"),
				new InternetAddress("qw28425382694@gmail.com") };

		NetHttpTransport HTTP_TRANSPORT = GoogleNetHttpTransport.newTrustedTransport();
		GsonFactory jsonFactory = GsonFactory.getDefaultInstance();
		service = new Gmail.Builder(HTTP_TRANSPORT, jsonFactory, getCredentials(HTTP_TRANSPORT, jsonFactory))
				.setApplicationName("Test Mailer").build();

	}

	/**
	 * @deprecated Use {@link #getCredentials(NetHttpTransport,GsonFactory)} instead
	 */

	private static Credential getCredentials(final NetHttpTransport httpTransport, GsonFactory jsonFactory)
			throws IOException {
		// Load client secrets.

		GoogleClientSecrets clientSecrets =
				
				GoogleClientSecrets.load(jsonFactory, new InputStreamReader(GMailer.class.getResourceAsStream(
						"/client_secret_260093616021-0gfhgs7qh94lmit6hkq34bq3t7pkna3h.apps.googleusercontent.com.json")));
		// Build flow and trigger user authorization request.
		GoogleAuthorizationCodeFlow flow = new GoogleAuthorizationCodeFlow.Builder(httpTransport, jsonFactory,
				clientSecrets, Set.of(GMAIL_SEND))
				.setDataStoreFactory(new FileDataStoreFactory(Paths.get("tokens").toFile())).setAccessType("offline")
				.build();

		LocalServerReceiver receiver = new LocalServerReceiver.Builder().setPort(8888).build();
		// returns an authorized Credential object.
		return new AuthorizationCodeInstalledApp(flow, receiver).authorize("user");
	}

	private void sendMail(String subject, String message) throws Exception {
		// Encode as MIME message
		Properties props = new Properties();
		Session session = Session.getDefaultInstance(props, null);
		MimeMessage email = new MimeMessage(session);
		email.setFrom(new InternetAddress(TEST_EMAIL));
		email.addRecipient(TO, // 使用 ctrl+shift+M就可以 縮短 import 內容
				new InternetAddress(RECEIVE_EMAIL));
		email.setSubject(subject);
		email.setText(message);
		email.setReplyTo(REPLY_EMAIL);
		// Encode and wrap the MIME message into a gmail message
		ByteArrayOutputStream buffer = new ByteArrayOutputStream();
		email.writeTo(buffer);
		byte[] rawMessageBytes = buffer.toByteArray();
		String encodedEmail = Base64.encodeBase64URLSafeString(rawMessageBytes);
		Message msg = new Message();
		msg.setRaw(encodedEmail);
		try {
			// Create the draft message
			msg = service.users().messages().send("me", msg).execute();
			System.out.println("Message id: " + msg.getId());
			System.out.println(msg.toPrettyString());

		} catch (GoogleJsonResponseException e) {
			GoogleJsonError error = e.getDetails();
			if (error.getCode() == 403) {
				System.err.println("Unable to create draft: " + e.getDetails());
			} else {
				throw e;
			}
		}

	}

	public static void main(String[] args) throws Exception {
		new GMailer().sendMail("Reset pass Test2!", "check me 測試");
	}

}
