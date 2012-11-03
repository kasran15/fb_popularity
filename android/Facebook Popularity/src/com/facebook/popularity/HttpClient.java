package com.facebook.popularity;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URI;

import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

import android.os.AsyncTask;

public class HttpClient extends AsyncTask{
	
	private static final String SERVER_URL = "http://secret-everglades-1536.herokuapp.com/crushes.json";
	
	@Override
	protected Object doInBackground(Object... params) {
		// TODO Auto-generated method stub
		try {
			URI url = new URI(SERVER_URL);
			DefaultHttpClient httpclient = new DefaultHttpClient();
	        HttpResponse response = httpclient.execute(new HttpGet(url));
	        StatusLine statusLine = response.getStatusLine();
	        if(statusLine.getStatusCode() == HttpStatus.SC_OK) {
	            ByteArrayOutputStream out = new ByteArrayOutputStream();
	            response.getEntity().writeTo(out);
	            out.close();
	            String responseString = out.toString();
	            //..more logic
	            System.out.println("Get request successful.");
	        } else{
	            //Closes the connection.
	            response.getEntity().getContent().close();
	            throw new IOException(statusLine.getReasonPhrase());
	        }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}