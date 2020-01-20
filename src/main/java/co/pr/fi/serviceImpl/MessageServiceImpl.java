package co.pr.fi.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import co.pr.fi.dao.MessageDAO;
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

}
