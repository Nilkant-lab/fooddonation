package com.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bean.RaiseFoodRequest;

@Repository
@Transactional
public interface FoodRequestDao extends JpaRepository<RaiseFoodRequest, Integer> {
	@Query(value="select*from raiserequest where user_id=:userId",nativeQuery=true)
	public List<RaiseFoodRequest> identifyByFood(@Param("userId")int userId);
	//identifyAdminFood
	@Query(value="select*from raiserequest where type=:type",nativeQuery=true)
	public List<RaiseFoodRequest> identifyAdminFood(@Param("type")String type);
	
	/*@Modifying
	@Query(value="update raiserequest set status=:status where user_id=:user_id",nativeQuery=true)
	public int updateStatus(@Param("status")String status,@Param("userId")int userId);*/
}
