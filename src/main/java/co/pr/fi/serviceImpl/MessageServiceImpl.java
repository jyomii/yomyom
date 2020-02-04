package co.pr.fi.serviceImpl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MessageDAO;
import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.UserMessage;
import co.pr.fi.service.MessageService;

@Service
public class MessageServiceImpl implements MessageService {

	@Autowired
	MessageDAO dao;

	@Override
	public int sendMessage(UserMessage message) {
		return dao.sendMessage(message);
	}


	@Override
	public List<UserMessage> getMyMessage(int key) {
		return dao.getMyMessage(key);
	}


	@Override
	public void readMessage(int userKey) {
		dao.readMessage(userKey);
		
	}


	@Override
	public int sendMessage(UserMessage message, List<GUsers> users) {
		Map<String, Object> list = new HashMap<String,Object>();
		System.out.println("check : " + message.getMgContent());
		list.put("message", message);
		list.put("users", users);
		return dao.sendMessage(list);
	}

}
