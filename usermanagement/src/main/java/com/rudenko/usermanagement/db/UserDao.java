package com.rudenko.usermanagement.db;

import java.util.Collection;

import com.rudenko.usermanagement.User;

public interface UserDao {
	User create(User user) throws DatabaseException;
	void update (User user) throws DatabaseException;
	void delete (User user) throws DatabaseException;
	User find(Long id) throws DatabaseException;
	Collection findAll() throws DatabaseException;
	Collection find(String firstName, String lastName) throws DatabaseException;
	void setConnectionFactory(ConnectionFactory connectionFactory);

}
