package com.kersylla.sopping_backend.daoImp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kersylla.sopping_backend.dao.CategoryDAO;
import com.kersylla.sopping_backend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl  implements CategoryDAO{
	
	private static List<Category> categories=new ArrayList<>();
	
	static{
		Category category=new Category();
		Category category2=new Category();
		Category category3=new Category();

		category.setId(1);
		category.setName("Television");
		category.setDescription("This is the latest description on Television");
		category.setImageURL("CAT_1.png");
		
		categories.add(category);

		
		category2.setId(2);
		category2.setName("Laptop");
		category2.setDescription("This is the latest description for Laptop");
		category2.setImageURL("CAT_2.png");
		
		categories.add(category2);

		
		category3.setId(3);
		category3.setName("Mobile");
		category3.setDescription("This is the latest description for Mobile");
		category3.setImageURL("CAT_3.png");
		
		categories.add(category3);
	}

	@Override
	public List<Category> listCategories() {
		// TODO Auto-generated method stub
		return categories;
	}

}
