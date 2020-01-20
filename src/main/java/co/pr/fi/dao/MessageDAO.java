package co.pr.fi.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.pr.fi.domain.UserMessage;

@Repository
public class MessageDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public int sendMessage(UserMessage message) {
		return sqlSession.insert("message.sendMessage", message);
	}

}
