package com.action;

import java.util.List;

import com.bean.Hotel;
import com.bean.Room;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.service.RoomService;


public class RoomAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private RoomService roomService;
    private Room room;
	public RoomService getRoomService() {
		return roomService;
	}
	public void setRoomService(RoomService roomService) {
		this.roomService = roomService;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	
	public String save(){
		Hotel hotel=(Hotel)ActionContext.getContext().getSession().get("myhotel");
		room.setHotel(hotel);
		roomService.save(room);
		return "saveSuccess";
	}
	
	public String update(){
		roomService.update(room);
		return "updateSuccess";
	}
  
	public String delete(){
		room=roomService.findById(room.getRoomid());
		roomService.delete(room);
		return "deleteSuccess";
	}
	public String find(){
		List<Room> roomlist=roomService.findByHotel((Hotel)ActionContext.getContext().getSession().get("hotel"));
		if(roomlist!=null){
			ActionContext.getContext().getSession().put("roomlist", roomlist);
			return "findlist";
		}
		else{
			this.addActionError("未找到该旅店的房间信息");
			return ERROR;
			
		}
	}
	public String findMyRoom(){
		List<Room> roomlist=roomService.findByHotel((Hotel)ActionContext.getContext().getSession().get("myhotel"));
		if(roomlist!=null){
			ActionContext.getContext().getSession().put("myroomlist", roomlist);
			return "findmyroom";
		}
		else{
			this.addActionError("未找到该旅店的房间信息");
			return ERROR;
			
		}
	}
	public String findToOrder(){
		Room existedroom=roomService.findById(room.getRoomid());
		if(existedroom!=null){
			ActionContext.getContext().getSession().put("room", existedroom);
			return "findtoorder";
		}
		else{
			this.addActionError("未找到房间信息");
			return ERROR;
			
		}
	}
	public String findOrder(){
		List<Room> roomlist=roomService.findByHotel((Hotel)ActionContext.getContext().getSession().get("myhotel"));
		if(roomlist!=null){
			ActionContext.getContext().getSession().put("myroomlist", roomlist);
			return "findorder";
		}
		else{
			this.addActionError("未找到该旅店的房间信息");
			return ERROR;
			
		}
	}
	
}
