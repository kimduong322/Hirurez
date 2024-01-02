package com.duongdk.edu.Hiruez.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.model.Table;
import com.duongdk.edu.Hiruez.repository.TableRepository;
import com.duongdk.edu.Hiruez.service.TableService;

@Service
public class TableServiceImpl implements TableService{
	@Autowired
    private TableRepository tableRepository;
	
	@Override
	public List<Table> getAllTablesByStore(Store store) {
		return tableRepository.findByBelongsToStore(store);
	}

	@Override
	public Table getTableById(Long id) {
		return tableRepository.findById(id).orElse(null);
	}

}
