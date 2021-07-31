package com.lenovo.safecenter.systeminfo.entity;

public class CommonNumber {
    public static final String COLUMN_CATEGORY_ID = "c_id";
    public static final String COLUMN_ID = "_id";
    public static final String COLUMN_NAME = "name";
    public static final String COLUMN_PHONENUMBER = "phonenum";
    public static final String TABLE_NAME = "commonnum";
    private int a;
    private String b;
    private String c;
    private Category d;

    public CommonNumber() {
    }

    public CommonNumber(int id, String name, String phoneNumber, int categoryId, String categoryName) {
        this(id, name, phoneNumber);
        this.d = new Category(categoryId, categoryName);
    }

    public CommonNumber(int id, String name, String phoneNumber, Category category) {
        this(id, name, phoneNumber);
        this.d = category;
    }

    public CommonNumber(int id, String name, String phoneNumber) {
        this.a = id;
        this.b = name;
        this.c = phoneNumber;
    }

    public int getId() {
        return this.a;
    }

    public void setId(int id) {
        this.a = id;
    }

    public String getName() {
        return this.b;
    }

    public void setName(String name) {
        this.b = name;
    }

    public String getPhoneNumber() {
        return this.c;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.c = phoneNumber;
    }

    public Category getCategory() {
        return this.d;
    }

    public void setCategory(Category category) {
        this.d = category;
    }

    public void setCategory(int categoryId, String categoryName) {
        this.d = new Category(categoryId, categoryName);
    }

    public String toString() {
        return "CommonNumber [id=" + this.a + ", name=" + this.b + ", phoneNumber=" + this.c + ", category=" + this.d + "]";
    }

    public int hashCode() {
        return ((this.a + 31) * 31) + (this.c == null ? 0 : this.c.hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        CommonNumber other = (CommonNumber) obj;
        if (this.a != other.a) {
            return false;
        }
        return this.c == null ? other.c == null : this.c.equals(other.c);
    }
}
