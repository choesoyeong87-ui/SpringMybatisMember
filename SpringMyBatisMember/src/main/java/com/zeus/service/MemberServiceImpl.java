package com.zeus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zeus.domain.Member;
import com.zeus.domain.MemberAuth;
import com.zeus.mapper.MemberMapper;
@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;

	@Override
	@Transactional
	public int register(Member member) throws Exception {
		int count = mapper.create(member);
		if(count > 0) {
			MemberAuth ma = new MemberAuth();
			ma.setNo(member.getNo());
			ma.setAuth("ROLE_USER");
			mapper.createAuth(ma);
		}
		return count;
	}

	@Override
	public List<Member> list() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Member read(Member member) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public int update(Member member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	@Transactional
	public int delete(Member member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
