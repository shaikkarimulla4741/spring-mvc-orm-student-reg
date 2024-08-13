package springMVC.exceptionHandling;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionHandling {

	@ExceptionHandler(value = Exception.class)
	public String exceptionHandlerIllegalArgument(Model m) {
		m.addAttribute("errorMessage",
				"Some fields are missing or contain invalid data. Please review your input and try again");
		return "studentRegistration";
	}

}
