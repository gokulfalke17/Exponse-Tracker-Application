package com.example.binding;

import jakarta.persistence.Table;
import lombok.Data;

@Table
@Data
public class Login {

	private String email;
	private String password;

}


