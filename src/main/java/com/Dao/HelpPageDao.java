package com.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.bean.HelpPage;

@Repository
public interface HelpPageDao extends JpaRepository<HelpPage, Integer>{
	@Query(value="select*from issues",nativeQuery=true)
	public List<HelpPage> identifyByhelp();	
	
}
