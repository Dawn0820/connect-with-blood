package jsoup;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class JsoupTest {

	public static void main(String[] args) {
		
	
		String URL = "https://www.bloodinfo.net/bloodstats_stocks.do";
		
		Document doc = null;
		Elements tmp;

		try {
			doc = Jsoup.connect(URL).get();
			//doc.text();
			//doc.html();
		
			
			//Elements elem = doc.select("div.클래스명");
			
//			Elements elem = doc.select(".1");
//			
//			System.out.println(elem);
//			
//			
//			String a = elem.text();
//			
//			System.out.println(a);
//			
//			String[] aa = a.split(" ");
//			
//			for(int i= 0;i<aa.length;i++) {
//				System.out.println(aa[i]);				
//			}
			
			//FileOutputStream fos = new FileOutputStream(new File("savetest.txt"));
			
			//OutputStreamWriter osw = new OutputStreamWriter(fos);
			
			//BufferedWriter bw = new BufferedWriter(osw);
			
			//bw.write(a);
			
			
			//bw.close();
			//osw.close();
			//fos.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
		Elements elem = doc.select(".1");
		
		String a = elem.text();
		
		System.out.println(a);

}
}
