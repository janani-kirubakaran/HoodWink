package com.handler;

import org.springframework.stereotype.Component;

import com.model.User;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;

@Component
public class RegisterUser {

	public User initFlow(){
		return new User();
	}

	public String validateDetails(User userDetails,MessageContext messageContext){
		String status = "success";
		
		if(userDetails.getUsername().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"username").defaultText("User Name cannot be Empty").build());
			status = "failure";
		}
		if(userDetails.getPassword().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
	
		if(userDetails.getEmail().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source(
					"email").defaultText("Email cannot be Empty").build());
			status = "failure";
		}
		if(userDetails.getContact_number()==0 || userDetails.getContact_number()>10){
			messageContext.addMessage(new MessageBuilder().error().source(
					"contact_number").defaultText("should not be empty and not exceeding 10 numbers").build());
			status = "failure";
		}
	
		return status;
	}
}
