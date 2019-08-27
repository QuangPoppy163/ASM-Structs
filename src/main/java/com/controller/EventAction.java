package com.controller;

import com.entity.Event;
import com.opensymphony.xwork2.ActionSupport;

import java.util.ArrayList;
import java.util.List;

public class EventAction extends ActionSupport {
    private static List<Event> eventList = new ArrayList<Event>();

    public List<Event> getEventList() {
        return eventList;
    }

    public void setEventList(List<Event> eventList) {
        this.eventList = eventList;
    }

    private Event newEvent ;

    public Event getNewEvent() {
        return newEvent;
    }

    public void setNewEvent(Event newEvent) {
        this.newEvent = newEvent;
    }

    public String NewEvent(){
        this.newEvent = new Event();
        return SUCCESS;
    }
    public String store(){
        if (this.newEvent != null){
            eventList.add(this.newEvent);

        }
        return SUCCESS;
    }
    public String edit(){
        return SUCCESS;
    }
    @Override
    public void validate() {
        if (this.newEvent == null) {
            return;
        }
        if (this.newEvent.getDate()== null
                || this.newEvent.getDate().trim().length() == 0
                ) {
            addFieldError("newEvent.date", "date is required!");
        }
        if (this.newEvent.getInfo()== null  || this.newEvent.getInfo().trim().length() == 0){
            addFieldError("newEvent.info", "info is required!");
        }
        if (this.newEvent.getPlan()== null  || this.newEvent.getPlan().trim().length() == 0){
            addFieldError("newEvent.plan", "plan is required!");
        }
        if (this.newEvent.getTime()== null  || this.newEvent.getTime().trim().length() == 0){
            addFieldError("newEvent.time", "time is required!");
        }
        if (this.newEvent.getLocation()== null  || this.newEvent.getLocation().trim().length() == 0){
            addFieldError("newEvent.location", "location is required!");
        }
    }
}
