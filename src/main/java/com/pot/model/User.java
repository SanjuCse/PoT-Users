
package com.pot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.Data;

@Entity
@Data
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "UidGen")
	@SequenceGenerator(name = "UidGen", sequenceName = "UidGen", initialValue = 100, allocationSize = 1)
	@Column(name = "UID")
	private Integer uid;

	@Column(name = "USERNAME")
	private String userName;

	@Column(name = "ADDRESS")
	private String address;

	@Column(name = "DEPT")
	private String dept;

	@Column(name = "PASSWORD")
	private String password;

	@Column(name = "EMAIL")
	private String email;
}