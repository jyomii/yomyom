package co.pr.fi.service;

import java.util.List;

import co.pr.fi.domain.GUsers;
import co.pr.fi.domain.UserMessage;

public interface MessageService {

	int sendMessage(UserMessage message);

	List<UserMessage> getMyMessage(int key);

	void readMessage(int userKey);

	int sendMessage(UserMessage message, List<GUsers> users);
	
}
