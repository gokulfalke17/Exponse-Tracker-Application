package com.example.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name="loginEntity")
@Data
public class LoginEntiry {
	@Id
	@GeneratedValue
	private int id;
	private String email;
	private String password;

}


