package com.internousdev.ecsite.action;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class ItemListAction extends ActionSupport {
	private ItemListDAO itemListDAO = new ItemListDAO();
	private ArrayList<ItemInfoDTO> itemList = new ArrayList<ItemInfoDTO>();

	public String execute() throws SQLException {
		itemList = itemListDAO.getItemListInfo();
		if(itemList.isEmpty()) {
			itemList = null;
		}
		return SUCCESS;
	}

	public ArrayList<ItemInfoDTO> getItemList() {
		return itemList;
	}
}
