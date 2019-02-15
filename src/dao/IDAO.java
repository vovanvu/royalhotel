package dao;

import java.util.ArrayList;

public interface IDAO<T> {
	
	//them
	boolean add(T t);

	//sua
	boolean edit(T t);

	//xoa
	boolean delete(String id);

	//lay phan tu ra
	T get(String id);

	//lay toan bo danh sach
	ArrayList<T> getAll();
}
