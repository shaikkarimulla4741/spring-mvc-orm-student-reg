package springMVC.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import springMVC.dao.StudentDetailsDao;
import springMVC.model.StudentDetails;

@Service
public class StudentDetailsService {

	@Autowired
	private StudentDetailsDao studentDetailsDao;

	@Transactional
	public int createStudentDetails(StudentDetails studentDetails) {
		return this.studentDetailsDao.saveStudentDetails(studentDetails);
	}

}
