package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bean.HelpPage;
import com.bean.RaiseFoodRequest;
import com.bean.RaiseLogisticRequest;
import com.bean.User;
import com.constants.DonationConstants;
import com.sevice.FoodService;

@Controller
@RequestMapping("/")
public class FoodController {

	@Autowired
	private FoodService service;

	@RequestMapping("/")
	public ModelAndView homepage(HttpSession session) {
		session.invalidate();
		return new ModelAndView("homepage");
	}

	@RequestMapping("/register")
	public ModelAndView registration() {
		return new ModelAndView("register");
	}

	@RequestMapping("/userlogin")
	public ModelAndView userlogin() {
		return new ModelAndView("userlogin");
	}

	@RequestMapping("/adminlogin")
	public ModelAndView adminloginpage() {
		return new ModelAndView("adminlogin");
	}

	@RequestMapping("/bloglist")
	public ModelAndView bloglist() {
		return new ModelAndView("bloglist");
	}

	@RequestMapping("/help")
	public ModelAndView help() {
		return new ModelAndView("helpDesk");
	}

	@RequestMapping("/helplog")
	public ModelAndView helpLog() {
		return new ModelAndView("helpLogisticsreq");
	}

	@RequestMapping("/blogDetail1")
	public ModelAndView blog_detailed1() {
		return new ModelAndView("blogDetail1");
	}

	@RequestMapping("/blogDetail2")
	public ModelAndView blog_detailed2() {
		return new ModelAndView("blogDetail2");
	}

	@RequestMapping("/blogDetail3")
	public ModelAndView blog_detailed3() {
		return new ModelAndView("blogDetail3");
	}

	@RequestMapping("/forgetUserId")
	public ModelAndView forgetUserId() {
		return new ModelAndView("forgetUserId");
	}

	@RequestMapping("/forgetPassword")
	public ModelAndView forgetPassword() {
		return new ModelAndView("forgetPassword");
	}

	@RequestMapping("/newPassword")
	public ModelAndView newPassword() {
		return new ModelAndView("newPassword");
	}

	/*
	 * @RequestMapping("/helpall") public ModelAndView helpview() { return new
	 * ModelAndView("helpReqStatus"); }
	 */

	@RequestMapping("/logout")
	public ModelAndView logOut() {
		return new ModelAndView("feedback");
	}

	@RequestMapping("/alogout")
	public ModelAndView adminlogOut(HttpSession session) {
		session.invalidate();
		return new ModelAndView("homepage");
	}

	@RequestMapping("/registration")
	public ModelAndView register(HttpServletRequest request, HttpSession session) {
		User user = new User();
		user.setFirstName(request.getParameter("Fname"));
		user.setLastName(request.getParameter("Lname"));
		user.setType("user");
		user.setEnum(request.getParameter("gender"));
		user.setDob(request.getParameter("dob"));
		user.setEmail(request.getParameter("email"));
		user.setContactNo(request.getParameter("contactNo"));
		user.setPassword(request.getParameter("password"));
		user.setCategory(request.getParameter("category"));
		user.setSq1(request.getParameter("sq1"));
		user.setSq2(request.getParameter("sq2"));
		user.setSq3(request.getParameter("sq3"));
		user = service.saveRegistration(user);
		session.setAttribute("alert", "New User Created Succesfully and Your User Id is " + user.getUserId());
		return new ModelAndView("regSuccess");
	}

	@RequestMapping("/returnhome")
	public ModelAndView returnHome(HttpServletRequest request, HttpSession session) {
		return new ModelAndView("homepage");
	}

	@RequestMapping("/userloginpage")
	public ModelAndView validate(HttpServletRequest request, HttpSession session) {
		int userid = Integer.parseInt(request.getParameter("userId"));
		String pass = request.getParameter("password");
		User user;
		try {
			user = service.findUserById(userid);
			// System.out.println("user:"+user.getPassword()+" "+user.getFirstName());
			session.setAttribute("user", user);
		} catch (Exception e) {
			session.setAttribute("message", "User ID not present");
			System.out.println(e.getMessage());
			return new ModelAndView("userlogin");
		}

		if (pass.equals(user.getPassword())) {
			// System.out.println("working");
			session.setAttribute("userid", user.getUserId());

			if (user.getType().equalsIgnoreCase("admin"))
				return new ModelAndView("adminPage");

			if (user.getCategory().equalsIgnoreCase("Food_donor"))
				return new ModelAndView("userPage");

			if (user.getCategory().equalsIgnoreCase("Logistics_sponsor"))
				return new ModelAndView("logisticsUser");

		}
		session.setAttribute("message", "Password not matching");
		return new ModelAndView("userlogin");
	}

	@RequestMapping("/donatefood")
	public ModelAndView raisefood() {
		return new ModelAndView("userFoodReq");
	}

	@RequestMapping("/raiserequest")
	public ModelAndView raiseFoodRequest(HttpServletRequest request, HttpSession session) {
		RaiseFoodRequest food = new RaiseFoodRequest();
		food.setName(request.getParameter("name"));
		food.setLocation(request.getParameter("location"));
		food.setContactNo(request.getParameter("conno"));
		food.setUserId(Integer.parseInt(session.getAttribute("userid").toString()));
		food.setPurposeOfDonation(request.getParameter("purpose"));
		food.setNoOfServings(request.getParameter("servings"));
		food.setType(((User) session.getAttribute("user")).getType());
		food.setStatus("pending");
		food = service.saveFoodRequest(food);
		session.setAttribute("food", food);
		if (service.findUserById(food.getUserId()).getType().equalsIgnoreCase("Admin")) {
			return new ModelAndView("adminPage");
		}
		return new ModelAndView("userPage");
	}

	@RequestMapping("/donatevehicle")
	public ModelAndView raiselogistic() {
		return new ModelAndView("userLogisReq");
	}

	@RequestMapping("/raiselogistics")
	public ModelAndView raiseLogisticRequest(HttpServletRequest request, HttpSession session) {
		RaiseLogisticRequest logistic = new RaiseLogisticRequest();
		logistic.setName(request.getParameter("name"));
		logistic.setUserId(Integer.parseInt(session.getAttribute("userid").toString()));
		logistic.setLocation(request.getParameter("location"));
		logistic.setContactNo(request.getParameter("conno"));
		logistic.setPurposeOfDonation(request.getParameter("purpose"));
		logistic.setStatus("pending");
		logistic.setType(((User) session.getAttribute("user")).getType());
		logistic = service.saveLogisticRequest(logistic);
		if (service.findUserById(logistic.getUserId()).getType().equalsIgnoreCase("Admin")) {
			return new ModelAndView("adminPage");
		}
		return new ModelAndView("logisticsUser");
	}

	@RequestMapping("/helpf")
	public ModelAndView helpPage(HttpServletRequest request, HttpSession session) {
		HelpPage help = new HelpPage();
		help.setIssues(request.getParameter("issue"));
		help.setUserId(Integer.parseInt(session.getAttribute("userid").toString()));
		help.setDescription(request.getParameter("description"));
		help.setDate(request.getParameter("date"));
		help = service.saveHelpdata(help);
		return new ModelAndView("userPage");
	}

	@RequestMapping("/forgotUid")
	public ModelAndView forgotUserId(HttpServletRequest request, HttpSession session) {
		String email = request.getParameter("email");
		String sq1 = request.getParameter("sq1");
		String sq2 = request.getParameter("sq2");
		String sq3 = request.getParameter("sq3");
		User user = service.findUserByEmailId(email);
		if ((user.getSq1().equalsIgnoreCase(sq1)) && (user.getSq2().equalsIgnoreCase(sq2))
				&& (user.getSq3().equalsIgnoreCase(sq3))) {
			session.setAttribute("displayId", "Your User Id is " + user.getUserId());
			return new ModelAndView("displayUserId");
		}
		session.setAttribute("displayId", "Your Entries are Incorrect");
		return new ModelAndView("displayUserId");
	}

	@RequestMapping("/returnUserlog")
	public ModelAndView returnUserlogin() {
		return new ModelAndView("userlogin");
	}

	@RequestMapping("/forgotPass")
	public ModelAndView forgotPassword(HttpServletRequest request, HttpSession session) {
		int userId = Integer.parseInt(request.getParameter("userId"));
		session.setAttribute("userid", userId);
		String sq1 = request.getParameter("sq1");
		String sq2 = request.getParameter("sq2");
		String sq3 = request.getParameter("sq3");
		User user = service.findUserById(userId);
		System.out.println("user:" + user.toString());
		System.out.println("sq1" + sq1);
		System.out.println("sq2" + sq2);
		System.out.println("sq3" + sq3);
		if ((user.getSq1().equalsIgnoreCase(sq1)) && (user.getSq2().equalsIgnoreCase(sq2))
				&& (user.getSq3().equalsIgnoreCase(sq3))) {
			return new ModelAndView("newPassword");
		}
		session.setAttribute("wrong", "Your Entries are Incorrect");
		return new ModelAndView("forgetPassword");
	}

	@RequestMapping("/newPass")
	public ModelAndView newPassword(HttpServletRequest request, HttpSession session) {
		String newPass = request.getParameter("newPassword");
		String reEnter = request.getParameter("reenter");
		System.out.println("new Password" + newPass + "   " + reEnter);
		if (newPass.equals(reEnter)) {
			System.out.println("working");
			session.setAttribute("saved", "Your New Password is Saved Successfully");
			Object userId = session.getAttribute("userid");
			service.updateNewPassword(Integer.parseInt(userId.toString()), newPass);
			return new ModelAndView("passwordSavedSucc");
		}
		session.setAttribute("NotSaved", "Password Not Matching");
		return new ModelAndView("newPassword");
	}

	@RequestMapping("/viewfood")
	public ModelAndView viewFoodRequest(HttpServletRequest request, HttpSession session) {
		String userId = session.getAttribute("userid").toString();
		System.out.println("userid" + userId);
		List<RaiseFoodRequest> view = service.raiseRequest(Integer.parseInt(userId));
		System.out.println(view.size());
		session.setAttribute("view", view);
		return new ModelAndView("donorReqStatus");
	}

	@RequestMapping("/viewlog")
	public ModelAndView viewLogisticRequest(HttpServletRequest request, HttpSession session) {
		System.out.println(session.getAttribute("userid"));
		System.out.println(session.getAttribute("userid").toString());
		String userId = session.getAttribute("userid").toString();
		System.out.println("userId" + userId);
		int id = Integer.parseInt(userId);
		System.out.println("id" + id);
		List<RaiseLogisticRequest> view = service.raiseLogisticRequest(id);
		session.setAttribute("view", view);
		return new ModelAndView("logisticsReqStatus");
	}

	@RequestMapping("/viewAFood")
	public ModelAndView viewFoodRequestAd(HttpServletRequest request, HttpSession session) {

		session.setAttribute("foodRequest", service.viewAdminFoodRequest(DonationConstants.USER));
		return new ModelAndView("adminViewFoodReq");
	}

	@RequestMapping("/viewALogistic")
	public ModelAndView viewLogisRequest(HttpServletRequest request, HttpSession session) {
		/**
		 * String userId=session.getAttribute("userid").toString();
		 * System.out.println(service.allfoodRequest(Integer.parseInt(userId)).get(0).getId());
		 * System.out.println(service.allfoodRequest(Integer.parseInt(userId)).get(0).getId());
		 */
		session.setAttribute("logisticRequest", service.viewAdminLogRequest(DonationConstants.USER));

		return new ModelAndView("adminViewLogisReq");
	}

	@RequestMapping("/issueSubmit")
	public ModelAndView submittIssues(HttpServletRequest request, HttpSession session) {
		HelpPage help = new HelpPage();
		help.setIssues(request.getParameter("issue"));
		help.setDescription(request.getParameter("description"));
		return new ModelAndView("homepage");
	}

	@RequestMapping("/raisefreq")
	public ModelAndView raiseAdminfReq(HttpServletRequest request, HttpSession session) {
		return new ModelAndView("userFoodReq");
	}

	@RequestMapping("/raiselreq")
	public ModelAndView raiseAdminlReq(HttpServletRequest request, HttpSession session) {
		return new ModelAndView("userLogisReq");
	}

	// @RequestMapping("/updateStatus")
//	public ModelAndView updateStatus(HttpServletRequest request,HttpSession session) {
	// List<RaiseFoodRequest>foodRequests=(List<RaiseFoodRequest>)(session.getAttribute("view"));
	// for(List<RaiseFoodRequest>)
	// }

	@RequestMapping("/viewhelpReq")
	public ModelAndView viewHelpRequest(HttpServletRequest request, HttpSession session) {
		// String userId=session.getAttribute("userid").toString();
		// System.out.println("userid"+userId);
		List<HelpPage> viewh = service.helpRequest();
		System.out.println(viewh.size());
		session.setAttribute("viewh", viewh);
		return new ModelAndView("helpReqStatus");
	}

	@RequestMapping("/viewAfood")
	public ModelAndView viewAdminFoodRequest(HttpServletRequest request, HttpSession session) {
		String userId = session.getAttribute("userid").toString();
		System.out.println("userid" + userId);
		// service.findUserById(logistic.getUserId());

		List<RaiseFoodRequest> view = service.viewAdminFoodRequest(DonationConstants.ADMIN);
		System.out.println(view.size());
		session.setAttribute("view", view);
		return new ModelAndView("userViewAdminFoodReq");
	}

	@RequestMapping("/viewALogistics")
	public ModelAndView viewAdminLogRequest(HttpServletRequest request, HttpSession session) {
		String userId = session.getAttribute("userid").toString();
		System.out.println("userid" + userId);
		List<RaiseLogisticRequest> view = service.viewAdminLogRequest(DonationConstants.ADMIN);
		System.out.println(view.size());
		session.setAttribute("view", view);
		return new ModelAndView("userViewAdminLogisticsReq");
	}

	@RequestMapping("/backtoUserPage")
	public ModelAndView backtoUserPage() {

		return new ModelAndView("userPage");
	}

	@RequestMapping("/backtoLogisticsPage")
	public ModelAndView backtoLogisticsPage() {
		return new ModelAndView("logisticsUser");
	}

	@RequestMapping("/skipFeedback")
	public ModelAndView skipFeedback() {
		return new ModelAndView("homepage");
	}

	@RequestMapping("/backtoAdminPage")
	public ModelAndView backtoAdminPage() {
		return new ModelAndView("adminPage");
	}
}