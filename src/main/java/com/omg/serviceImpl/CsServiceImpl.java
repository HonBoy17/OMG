package com.omg.serviceImpl;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.omg.domain.CsVO;
import com.omg.repository.CsRepository;
import com.omg.service.CsService;

@Service
public class CsServiceImpl implements CsService {

	@Inject
	private CsRepository csRepository;
	
	@Override
	public void insert(CsVO cvo) throws Exception {
		csRepository.insert(cvo);
	}

	@Override
	public List<CsVO> getList() throws Exception {
		return csRepository.getList();
	}
	
}
