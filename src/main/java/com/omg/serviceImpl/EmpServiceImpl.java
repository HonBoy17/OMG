package com.omg.serviceImpl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.omg.domain.EmpVO;
import com.omg.repository.EmpRepository;
import com.omg.service.EmpService;

@Service
public class EmpServiceImpl implements EmpService {

	@Inject
	private EmpRepository empRepository;

	@Override
	public void insert(EmpVO evo) throws Exception {
		empRepository.insert(evo);
	}

}
