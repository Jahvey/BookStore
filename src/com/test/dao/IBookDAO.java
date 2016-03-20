package com.test.dao;

import java.util.List;

import com.test.domain.Book;

public interface IBookDAO {

	/**
	 * �г����е�ͼ��
	 * */
	List<Book> listAll();
	
	/**
	 * ��������ѯͼ��
	 * @param category
	 * */
	List<Book> listByCategroy(String category);
	
	/**
	 * ����������ѯͼ��
	 * @param bookName
	 * */
	List<Book> searchByName(String bookName);
	
	/**
	 * �������߲�ѯͼ��
	 * @param author
	 * */
	List<Book> searchByAuthor(String author);
	
	/**
	 * ����ID��ѯͼ��
	 * **/
	Book searchByID(int id);
	
	/**
	 * ���ݼ۸��ɸߵ��ͽ�������
	 * @param method
	 * */
	List<Book> sequenceByPrice(String method);
	
	/**
	 * ���һ��ͼ��
	 * @param book
	 * */
	boolean addBook(Book book);
	
	/**
	 * ɾ��һ��ͼ��
	 * */
	boolean deletebook(int id);
	
	/**
	 * ����ĳ��ͼ�����Ϣ
	 * */
	boolean updateBook(Book book);
	
	/**
	 * �г�ͼ������з���
	 * **/
	List<String> showCategory();
}
