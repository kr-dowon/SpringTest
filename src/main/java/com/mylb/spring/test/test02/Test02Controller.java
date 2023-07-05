package com.mylb.spring.test.test02;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Test02Controller {
	
	@RequestMapping("/test/test02/1")
    public List<Map<String, Object>> movieList() {
		
		List<Map<String, Object>> movieList = new ArrayList<>();
    	
    	Map<String, Object> movieMap = new HashMap<>();
    	
    	movieMap.put("rate", 15);
    	movieMap.put("director", "봉준호");
    	movieMap.put("time", 131);
    	movieMap.put("title", "기생충");
    	movieList.add(movieMap);
    	
    	movieMap = new HashMap<>();
    	
    	movieMap.put("rate", 0);
    	movieMap.put("director", "로베르토 베니니");
    	movieMap.put("time", 116);
    	movieMap.put("title", "인생은 아름다워");
    	movieList.add(movieMap);
    	
    	movieMap = new HashMap<>();
    	
    	movieMap.put("rate", 12);
    	movieMap.put("director", "크리스토퍼 놀란");
    	movieMap.put("time", 147);
    	movieMap.put("title", "인셉션");
    	movieList.add(movieMap);
    	
    	movieMap = new HashMap<>();
    	
    	movieMap.put("rate", 19);
    	movieMap.put("director", "윤종빈");
    	movieMap.put("time", 133);
    	movieMap.put("title", "범죄와의 전쟁 : 나쁜놈들 전성시대");
    	movieList.add(movieMap);
    	
    	movieMap = new HashMap<>();
    	
    	movieMap.put("rate", 15);
    	movieMap.put("director", "프란시스 로렌스");
    	movieMap.put("time", 137);
    	movieMap.put("title", "헝거게임");
    	movieList.add(movieMap);
    	
    	return movieList;
    }
	
	public List<Post> postList() {
		
		List<Post> postList = new ArrayList<>();
		Post post = new Post("안녕하세요 가입인사 드립니다", "hagulu", "안녕하세요 가입했어요. 잘 부탁 드립니다.");
		postList.add(post);
		
		return postList;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
