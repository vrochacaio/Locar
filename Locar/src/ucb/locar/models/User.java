package ucb.locar.models;

import java.io.Serializable;
import java.util.Date;

import ucb.locar.enums.PermissionEnum;


public class User implements Serializable{
	private static final long serialVersionUID = 1L;
	private long id;
	private String username;
	private String password;
	private String cpf;
	private String address;
	private Date birthday;
	private PermissionEnum permission; //ADMIN OR USER

	public User() {}

	public User(String username, String password) {
		this.username = username;
		this.password = password;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public PermissionEnum getPermission() {
		return permission;
	}

	public void setPermission(PermissionEnum permission) {
		this.permission = permission;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", cpf=" + cpf + ", endereco="
				+ address + ", dataNascimento=" + birthday + "]";
	}
}
