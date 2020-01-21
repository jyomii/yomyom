package co.pr.fi.task;

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

	@Scheduled(cron = "30 49 * * * *")
	public void stopCancelUsers() throws Exception {

		int result = adminService.stopCancelUsers();

		if (result > 0) {
			logger.info("정지된 사람을 풀었습니다.");
		} else {
			logger.info("정지된 사람중에서 풀 사람이 없습니다.");
		}

	}

}
