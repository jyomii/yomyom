package co.pr.fi.task;

import java.util.List;

import org.apache.tomcat.jni.File;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import co.pr.fi.service.AdminService;

@Service
public class ScheduledlTask {

	private static final Logger logger = LoggerFactory.getLogger(ScheduledlTask.class);

	@Autowired
	AdminService adminService;

	@Scheduled(cron = "00 30 * * * *")
	public void stopCancelUsers() throws Exception {

		int result = adminService.stopCancelUsers();

		if (result > 0) {
			logger.info("정지된 사람을 풀었습니다.");
		} else {
			logger.info("정지된 사람중에서 풀 사람이 없습니다.");
		}

	}
	
	
	@Scheduled(cron = "30 * * * * *")
	public void deleteFiles() throws Exception {

		//휴지통 파일 리스트 가져오기
		List<String> list = adminService.getDeleteFiles();
		
		//파일이 존재하면 삭제하기
		for(String filename : list) {
			System.out.println(filename);
			java.io.File file = new java.io.File("C:/groupin"+filename);
			
			if(file.exists()) {
				file.delete();
			}
			
		}
		
		//휴지통 DB 날리기
		adminService.deleteFilesList();
		
	}

}
