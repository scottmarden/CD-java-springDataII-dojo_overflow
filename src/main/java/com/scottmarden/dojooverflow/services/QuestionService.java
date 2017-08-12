package com.scottmarden.dojooverflow.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.scottmarden.dojooverflow.models.Question;
import com.scottmarden.dojooverflow.repositories.QuestionRepository;

@Service
public class QuestionService {

	private QuestionRepository questionRepository;
	
	public QuestionService(QuestionRepository questionRepository) {
		this.questionRepository = questionRepository;
	}
	
	public void createQuestion(Question question) {
		questionRepository.save(question);
	}
	
	public List<Question> pullQuestions(){
		return (List<Question>) questionRepository.findAll();
	}
	
	public Question pullOneQuestion(Long id) {
		return questionRepository.findOne(id);
	}
	
	public void updateQuestion(Question question) {
		questionRepository.save(question);
	}
	
}
