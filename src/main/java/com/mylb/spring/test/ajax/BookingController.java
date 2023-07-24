package com.mylb.spring.test.ajax;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookingController {
	
	@GetMapping("/ajax/booking/list")
	public String bookingList() {
		return "ajax/booking/list";
	}

}
