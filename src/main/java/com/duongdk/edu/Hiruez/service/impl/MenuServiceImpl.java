package com.duongdk.edu.Hiruez.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duongdk.edu.Hiruez.model.Menu;
import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.repository.MenuRepository;
import com.duongdk.edu.Hiruez.service.MenuService;

@Service
public class MenuServiceImpl implements MenuService {
	
	@Autowired
	private MenuRepository menuRepository;
	
	@Override
	public List<Menu> getAllMenusForStore(Store store) {
		return menuRepository.findByStore(store);
	}

	@Override
	public Menu findMenuById(Long id) {
		return menuRepository.findMenuById(id);
	}

}
