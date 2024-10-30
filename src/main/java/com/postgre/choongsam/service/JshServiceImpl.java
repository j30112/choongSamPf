package com.postgre.choongsam.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.postgre.choongsam.dao.JshDao;
import com.postgre.choongsam.dto.Class_Schedule;
import com.postgre.choongsam.dto.Class_ScheduleAddVideo;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class JshServiceImpl implements JshService {
	
	private final JshDao JshDao;
	
	@Override
	public List<Class_ScheduleAddVideo> studentLecture(String lctr_id, int user_seq) {
		System.out.println("JshService StudentLecture start...");
		List<Class_ScheduleAddVideo> contentList = JshDao.studentLecture(lctr_id, user_seq);
		System.out.println("JshService StudentLecture contentList >> "+contentList);
		
		return contentList;
	}

}
