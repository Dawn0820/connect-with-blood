package board.model.jsoup;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class BloodMapJsoup {

	public String[] seoul() {
		
		String URL = "https://www.bloodinfo.net/bloodstats_statistics.do";
		String bloodCellDay = null;
		Document doc = null;
		Elements tmp;

		try {
			doc = Jsoup.connect(URL).get();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
		Elements elem = doc.select(".1");
		
		bloodCellDay = elem.text();
		
		String[] bloodCellDays = bloodCellDay.split(" ");
		
		return bloodCellDays;
	}
	
	
	
	
	
}
