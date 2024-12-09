package com.DAO;

import com.entity.USER;

public interface UserDAo {
	public boolean userRegister(USER us);
	public USER login(String email, String password);
}
