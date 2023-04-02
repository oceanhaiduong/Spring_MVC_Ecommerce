package com.webBH.service;

import org.springframework.stereotype.Service;

import com.webBH.model.Paginates;

@Service
public interface PaginatesService {
	public Paginates GetInfoPaginates(int totalData, int limit, int currentPage);
}
