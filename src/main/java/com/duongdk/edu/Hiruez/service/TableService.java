package com.duongdk.edu.Hiruez.service;

import java.util.List;

import com.duongdk.edu.Hiruez.model.Store;
import com.duongdk.edu.Hiruez.model.Table;

public interface TableService {
	List<Table> getAllTablesByStore(Store store);
	Table getTableById(Long id);
}
