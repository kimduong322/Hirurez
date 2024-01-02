package com.duongdk.edu.Hiruez.service;

import java.util.List;

import com.duongdk.edu.Hiruez.model.Menu;
import com.duongdk.edu.Hiruez.model.Store;

public interface MenuService {
	List<Menu> getAllMenusForStore(Store store);
	Menu findMenuById(Long id);
}
