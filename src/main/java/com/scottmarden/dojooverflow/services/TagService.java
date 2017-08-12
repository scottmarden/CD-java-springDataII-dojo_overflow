package com.scottmarden.dojooverflow.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.scottmarden.dojooverflow.models.Tag;
import com.scottmarden.dojooverflow.repositories.TagRepository;

@Service
public class TagService {
	
	private TagRepository tagRepository;
	
	public TagService(TagRepository tagRepository) {
		this.tagRepository = tagRepository;
	}
	
	public List<Tag> findAllTags(){
		return (List<Tag>) tagRepository.findAll();
	}
	
	public Tag findTag(String name) {
		return tagRepository.findOneByName(name);
	}
	
	public void createTag(Tag tag) {
		tagRepository.save(tag);
	}

}
