package com.internousdev.ecsite.action;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class UserListDeleteCompleteAction extends ActionSupport {
	private UserListDeleteCompleteDAO userListDeleteCompleteDAO = new UserListDeleteCompleteDAO();
	private ArrayList<UserInfoDTO> userInfo = new ArrayList<UserInfoDTO>();
	private String message;

	public String execute() throws SQLException {
		int res = userListDeleteCompleteDAO.deleteUserInfo();

		if(res > 0) {
			userInfo = null;
			setMessage("ユーザー情報を正しく削除しました。");
		} else if(res == 0) {
			setMessage("ユーザー情報の削除に失敗しました。");
		}

		return SUCCESS;
	}

	public ArrayList<UserInfoDTO> getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(ArrayList<UserInfoDTO> userInfo) {
		this.userInfo = userInfo;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
