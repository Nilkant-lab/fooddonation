package com.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.FeedbackDao;
import com.Dao.FoodRequestDao;
import com.Dao.HelpPageDao;
import com.Dao.LogisticRequestDao;
import com.Dao.UserRegistrationDao;
import com.bean.Feedback;
import com.bean.HelpPage;
import com.bean.RaiseFoodRequest;
import com.bean.RaiseLogisticRequest;
import com.bean.User;

@Service
public class FoodService {

	@Autowired
	UserRegistrationDao userRegistrationDao;
	@Autowired
	FoodRequestDao foodRequestDao;
	@Autowired 
	LogisticRequestDao logisticRequestDao;
	@Autowired
	HelpPageDao helpPageDao;
	@Autowired
	FeedbackDao feedbackDao;
	
	
	public User saveRegistration(User user) {
		return  userRegistrationDao.save(user);
	    
	}
	public User findUserById(int userId) {
		return  userRegistrationDao.findById(userId).get();
	    
	}
	public User findUserByEmailId(String email) {
		return  userRegistrationDao.findUserByMailId(email);
	    
	}
	public RaiseFoodRequest saveFoodRequest(RaiseFoodRequest food) {
		return foodRequestDao.save(food);
	}
	public RaiseLogisticRequest saveLogisticRequest(RaiseLogisticRequest logistic) {
		return logisticRequestDao.save(logistic);
	}
	public HelpPage saveHelpdata(HelpPage help) {
		return helpPageDao.save(help);
	}
	public int updateNewPassword(int userId,String password) {
		return userRegistrationDao.updatePassword(userId, password);
	}
	public  List<RaiseFoodRequest> raiseRequest(int userId){
		System.out.println(userId);
		System.out.println(foodRequestDao.identifyByFood(userId).toString());
		return  foodRequestDao.identifyByFood(userId);
	}
	public  List<RaiseLogisticRequest> raiseLogisticRequest(int userId){
		return  logisticRequestDao.identifyByLogistic(userId);
	}
	public  List<RaiseLogisticRequest> allLogisticRequest(int userId){
		return  logisticRequestDao.findAll();
	}
	public  List<RaiseFoodRequest> allfoodRequest(int userId){
		return foodRequestDao.findAll();
	}
	public Feedback saveFeedback(Feedback feed) {
		return  feedbackDao.save(feed);
	    
	}
	public  List<HelpPage> helpRequest(){
		//System.out.println();
	//	System.out.println(helpPageDao.identifyByhelp());
		return  helpPageDao.identifyByhelp();
	}
	public  List<RaiseFoodRequest> viewAdminFoodRequest(String type){
		return  foodRequestDao.identifyAdminFood(type);
	}
	public  List<RaiseLogisticRequest>viewAdminLogRequest(String type){
		return  logisticRequestDao.identifyAdminlog(type);
	}
	
	/**public int updateFoodStatus(String status,int userId) {
		return foodRequestDao.updateStatus(status,userId);
	}
	public int updateLogisticsStatus(String status,int userId) {
		return logisticRequestDao.updateStatus(status,userId);
	}*/
	
}
