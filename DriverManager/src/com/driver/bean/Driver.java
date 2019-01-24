package com.driver.bean;

public class Driver {
	private int id;
	private String name;
	private int mile;
	private String city;

	/**
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            �Z�b�g���� id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            �Z�b�g���� name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return mile
	 */
	public int getMile() {
		return mile;
	}

	/**
	 * @param mile
	 *            �Z�b�g���� mile
	 */
	public void setMile(int mile) {
		this.mile = mile;
	}

	/**
	 * @return city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city
	 *            �Z�b�g���� city
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/*
	 * (�� Javadoc)
	 *
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Driver [id=" + id + ", name=" + name + ", mile=" + mile + ", city=" + city + ", getId()=" + getId()
				+ ", getName()=" + getName() + ", getMile()=" + getMile() + ", getCity()=" + getCity() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	public Driver(int id, String name, int mile, String city) {
		super();
		this.id = id;
		this.name = name;
		this.mile = mile;
		this.city = city;
	}

	public Driver() {
		super();
		// TODO �����������ꂽ�R���X�g���N�^�[�E�X�^�u
	}

}
