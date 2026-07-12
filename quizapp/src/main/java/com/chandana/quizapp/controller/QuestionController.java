package com.chandana.quizapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.chandana.quizapp.model.Question;
import com.chandana.quizapp.service.QuestionService;
@CrossOrigin(origins = "http://127.0.0.1:5500")
@RestController
@RequestMapping("question")
public class QuestionController {
	
	@Autowired
	private QuestionService questionService;
	@GetMapping("allQuestions")
	public ResponseEntity<List<Question>> getAllQuestions() {
		return questionService.getAllQuestions();
	}
	
	@GetMapping("category/{category}")
	public ResponseEntity<List<Question>> getQuestionByCategory(@PathVariable String category){
		return questionService.getQuestionByCategory(category);
	}
	@PostMapping("add")
	public ResponseEntity<String> addQuestion(@RequestBody Question question) {
	    return questionService.addQuestion(question);
	}
}
