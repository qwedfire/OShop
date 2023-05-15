package com.example.demo.repository;

import java.util.List;

import com.example.demo.model.Member;

public interface MemberRepository {
	
	void save(Member member);
	List<Member>	 findAll();
	Member	 findById(Integer id);
	void	 deleteById(Integer id);
	Member   update(Member member);
	Member findByMemberId(String memberId);
	void detach(Member member);
}
