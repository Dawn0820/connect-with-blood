package board.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import board.model.service.CommunityService;
import board.model.vo.Attachment;
import board.model.vo.Community;
import common.MyFileRenamePolicy;

/**
 * Servlet implementation class CommunityUpdateController
 */
@WebServlet("/update.co")
public class CommunityUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommunityUpdateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		if(ServletFileUpload.isMultipartContent(request)) {
			
			int maxSize = 10*1024*1024;
		
			String savePath = request.getSession().getServletContext().getRealPath("/resources/board_upfiles/");

			MultipartRequest multiRequest = new MultipartRequest(request,savePath,maxSize,"UTF-8",new MyFileRenamePolicy());

			int commNo = Integer.parseInt(multiRequest.getParameter("cno"));//boardUpdateForm에서 hidden으로 보냈다. 
			String commCategory = multiRequest.getParameter("category");
			String commTitle = multiRequest.getParameter("title");
			String commContent = multiRequest.getParameter("content");
		
			Community comm = new Community();
			
			comm.setCommNo(commNo);
			comm.setCategoryNo(commCategory);
			comm.setCommTitle(commTitle);
			comm.setCommContent(commContent);
			
			Attachment newAttachment = null;
			
			if(multiRequest.getOriginalFileName("file1")!=null) { 

				newAttachment = new Attachment();
				newAttachment.setOriginName(multiRequest.getOriginalFileName("reupfile"));
				newAttachment.setChangeName(multiRequest.getFilesystemName("reupfile"));
				newAttachment.setFilePath("resources/board_upfiles/");
				
				if(multiRequest.getParameter("originFileNo")!=null) {
					
					int originFileNo = Integer.parseInt(multiRequest.getParameter("originFileNo"));

					newAttachment.setFileNo(originFileNo); 

					new File(savePath+multiRequest.getParameter("originFileName")).delete();

					
				}else {
					newAttachment.setRefCno(commNo);

				}
				
				int result = new CommunityService().updateCommunity(comm,newAttachment);


				
			}
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
