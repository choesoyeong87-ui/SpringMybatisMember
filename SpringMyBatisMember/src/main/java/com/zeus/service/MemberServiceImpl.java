package com.zeus.service;

import java.util.Iterator;
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
		
		return mapper.list();
	}

	@Override
	public Member read(Member member) throws Exception {
		return mapper.read(member);
	}

	@Override
	@Transactional
	public int update(Member member) throws Exception {
		int count = mapper.update(member);
		if (count > 0 ) {
			mapper.deleteAuth(member);
			List<MemberAuth> authList = member.getAuthList();
			for (int i = 0; i < authList.size(); i++) {
				MemberAuth memberAuth = authList.get(i);
				memberAuth.getAuth();
				String auth = memberAuth.getAuth();
				if (auth == null || auth.trim().length() == 0) {
					continue;
				}
				memberAuth.setNo(member.getNo());
				mapper.createAuth(memberAuth);
			}
		}
		return count;
	}

	@Override
	@Transactional
	public int delete(Member member) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

}
