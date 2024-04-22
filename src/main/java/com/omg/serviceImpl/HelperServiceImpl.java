package com.omg.serviceImpl;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.omg.domain.HelperVO;
import com.omg.repository.HelperRepository;
import com.omg.service.HelperService;

@Service
public class HelperServiceImpl implements HelperService {

	@Inject
	private HelperRepository helperRepository;
	
	@Override
	public HelperVO idCheck(String id) throws Exception {
		return helperRepository.idCheck(id);
	}

	@Override
	public HelperVO nickCheck(String nickname) throws Exception {
		return helperRepository.nickCheck(nickname);
	}

	@Override
	public void insert(HelperVO hvo) throws Exception {
		helperRepository.insert(hvo);
	}
	
	@Override
	public void insertDetail(HelperVO hvo) throws Exception {
		helperRepository.insertDetail(hvo);		
	}
	
	@Override
	public HelperVO login(HelperVO hvo) throws Exception {
		return helperRepository.login(hvo);
	}

	@Override
	public HelperVO getHelperInfo(String id) throws Exception {
		return helperRepository.getHelperInfo(id);
	}

	@Override
	public void modify(HelperVO hvo) throws Exception {
		helperRepository.modify(hvo);
	}

}
