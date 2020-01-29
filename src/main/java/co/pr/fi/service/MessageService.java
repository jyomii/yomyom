package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.UserMessage;

public interface MessageService {

	int sendMessage(UserMessage message);

	List<UserMessage> getMyMessage(int key);
	
}
