package com.myapp.dao;

import org.springframework.data.repository.CrudRepository;

import com.myapp.model.FeedbackForm;

public interface Feedback_repository extends CrudRepository<FeedbackForm, Integer> {

}
