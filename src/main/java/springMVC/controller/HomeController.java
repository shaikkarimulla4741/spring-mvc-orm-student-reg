package springMVC.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import springMVC.model.StudentDetails;
import springMVC.service.StudentDetailsService;

@Controller
public class HomeController {

	@Autowired
	private StudentDetailsService studentDetailsService;

	@RequestMapping("/studentform")
	public String home() {
		return "studentRegistration";
	}

	@RequestMapping(path = "/submitRegistration", method = RequestMethod.POST)
	public String formSubmission(@ModelAttribute("sD") StudentDetails sD,
			@RequestParam("profile") CommonsMultipartFile imgFile, HttpSession s)
			throws FileNotFoundException, IOException {


//		Saving the Image File in the Server.		
		byte[] imgData = imgFile.getBytes();

//		Getting the Context Path using the ServletSession so that we can save the Image File in the Server.
		String path = s.getServletContext().getRealPath("/") + "WEB-INF" + File.separator + "resources" + File.separator
				+ "img" + File.separator + imgFile.getOriginalFilename();

//		Saving  the Image in the context path where the deployed project executes.
		FileOutputStream fos = new FileOutputStream(path);
		fos.write(imgData);
		fos.close();

//		After receiving all the details saving them in the database.
		this.studentDetailsService.createStudentDetails(sD);
		System.out.println("Everything has been completed successfully\n");

		System.out.println(sD);
		return "thankYou";
	}
}
