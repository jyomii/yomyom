package co.pr.fi.service;

import co.pr.fi.domain.UserMessage;

public interface MessageService {

	int sendMessage(UserMessage message);
}
