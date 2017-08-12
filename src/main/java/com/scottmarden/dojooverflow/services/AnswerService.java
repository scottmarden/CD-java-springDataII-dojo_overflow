package com.scottmarden.dojooverflow.services;

import org.springframework.stereotype.Service;

import com.scottmarden.dojooverflow.models.Answer;
import com.scottmarden.dojooverflow.repositories.AnswerRepository;

@Service
public class AnswerService {
	
	private AnswerRepository answerRepository;
	
	public AnswerService(AnswerRepository answerRepository) {
		this.answerRepository = answerRepository;
	}
	
	public void createAnswer(Answer answer) {
		answerRepository.save(answer);
	}

}
