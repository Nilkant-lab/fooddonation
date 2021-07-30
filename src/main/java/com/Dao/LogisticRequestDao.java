package com.Dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bean.RaiseLogisticRequest;



@Repository
@Transactional
public interface LogisticRequestDao extends JpaRepository<RaiseLogisticRequest, Integer> {
	@Query(value="select*from raise_logisrequest where user_id=:userId",nativeQuery=true)
	public List<RaiseLogisticRequest> identifyByLogistic(@Param("userId")int userId);
	@Query(value="select*from raise_logisrequest where type=:type",nativeQuery=true)
	public List<RaiseLogisticRequest> identifyAdminlog(@Param("type")String type);
	
	/*@Modifying
	@Query(value="update raise_logisrequest set status=:status where user_id=:user_id",nativeQuery=true)
	public int updateStatus(@Param("status")String status,@Param("userId")int userId);*/
}
