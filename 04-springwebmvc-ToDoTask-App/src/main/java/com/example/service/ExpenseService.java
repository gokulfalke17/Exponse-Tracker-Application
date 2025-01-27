package com.example.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.entity.ExpenseEntity;
import com.example.repository.ExpenseRepository;

@Service
public class ExpenseService {

	@Autowired
	private ExpenseRepository expenseRepository;

	public List<ExpenseEntity> getAllExpenses() {
		return expenseRepository.findAll(); 
	}

	public ExpenseEntity saveExpense(ExpenseEntity expense) {
		return expenseRepository.save(expense);
	}

	public Page<ExpenseEntity> getExpensesPaginated(Pageable pageable) {
		return expenseRepository.findAll(pageable);
	}

	public ExpenseEntity getExpenseById(Long id) {
		return expenseRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("Expense not found with id: " + id));
	}

	public ExpenseEntity updateExpense(Long id) {
		Optional<ExpenseEntity> o = expenseRepository.findById(id);
		if (o.isPresent()) {
			return o.get();
		} else {
			return null;
		}
	}

	public void deleteExpense(Long id) {
		expenseRepository.deleteById(id);
	}

}
