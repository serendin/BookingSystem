package com.action;

import java.util.List;

import com.bean.Hotel;
import com.bean.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.HotelService;

public class HotelAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private HotelService hotelService;
	private Hotel hotel;

	public HotelService getHotelService() {
		return hotelService;
	}

	public void setHotelService(HotelService hotelService) {
		this.hotelService = hotelService;
	}

	public Hotel getHotel() {
		return hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}

	public String save() {
		hotel.setIsopen("申请中");
		hotel.setLinkid(((User) ActionContext.getContext().getSession()
				.get("user")).getUsername());
		System.out.println(hotel.getLinkid());
		hotelService.save(hotel);
		return "saveSuccess";
	}

	public String update() {
		hotelService.update(hotel);
		return "updateSuccess";
	}

	public String agree() {
		hotel = hotelService.findById(hotel.getHotelid());
		hotel.setIsopen("已发布");
		hotelService.update(hotel);
		return "agreeSuccess";
	}

	public String delete() {
		hotel = hotelService.findById(hotel.getHotelid());
		hotelService.delete(hotel);
		return "deleteSuccess";
	}

	public String find() {
		List<Hotel> hotellist = hotelService.findByCity(hotel.getCity());
		if (hotellist != null) {
			ActionContext.getContext().getSession().put("hotellist", hotellist);
			return "findSuccess";
		} else {
			this.addActionError("未找到该城市的旅店");
			return ERROR;

		}
	}

	public String findById() {
		Hotel existedhotel = hotelService.findById(hotel.getHotelid());
		if (existedhotel != null) {
			ActionContext.getContext().getSession().put("hotel", existedhotel);
			return "findbyid";
		} else {
			this.addActionError("未找到旅店信息");
			return ERROR;

		}
	}

	public String findall() {
		List<Hotel> inhotellist = hotelService.findAllin();
		List<Hotel> outhotellist = hotelService.findAllout();
		ActionContext.getContext().getSession().put("inhotellist", inhotellist);
		ActionContext.getContext().getSession()
				.put("outhotellist", outhotellist);
		return "findall";
	}

	public String findByUser() {
		User user = (User) ActionContext.getContext().getSession().get("user");
		if (user == null) {
			this.addActionError("请先登录");
			return ERROR;
		} else {
			Hotel existedhotel = hotelService.findByUser(user.getUsername());

			if (existedhotel != null) {
				ActionContext.getContext().getSession()
						.put("myhotel", existedhotel);
				return "findbyuser";
			} else {
				this.addActionError("未找到旅店信息，请确认是否发布过旅店");
				return ERROR;

			}
		}
	}

	public String findOrder() {
		User user = (User) ActionContext.getContext().getSession().get("user");
		if (user == null) {
			this.addActionError("请先登录");
			return ERROR;
		} else {
			Hotel existedhotel = hotelService.findByUser(user.getUsername());
			if (existedhotel != null) {
				ActionContext.getContext().getSession()
						.put("myhotel", existedhotel);
				return "findorder";
			} else {
				this.addActionError("未找到旅店信息，请确认是否发布过旅店");
				return ERROR;

			}
		}
	}

}
