package com.Dao;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.bean.User;

@Repository
@Transactional
public interface UserRegistrationDao extends JpaRepository<User, Integer>{

	@Query(value="select*from user where EMAIL=:email",nativeQuery=true)
	public User findUserByMailId(@Param("email")String email);
	
	@Query(value="update user set Password=:password where User_ID=:userId",nativeQuery=true)
	@Modifying
	public int updatePassword(@Param("userId")int userId,@Param("password")String password);
}
