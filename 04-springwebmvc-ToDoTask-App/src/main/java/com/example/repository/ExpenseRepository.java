package com.example.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.entity.ExpenseEntity;

public interface ExpenseRepository extends JpaRepository<ExpenseEntity, Long> {
}
