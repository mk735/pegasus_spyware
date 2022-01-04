package com.lenovo.safecenter.systeminfo.entity;

public class Category {
    public static final String COLUMN_ID = "_id";
    public static final String COLUMN_NAME = "name";
    public static final String TABLE_NAME = "category";
    private int a;
    private String b;

    public Category() {
    }

    public Category(int id, String name) {
        this.a = id;
        this.b = name;
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

    public String toString() {
        return "Category [id=" + this.a + ", name=" + this.b + "]";
    }

    public int hashCode() {
        return ((this.a + 31) * 31) + (this.b == null ? 0 : this.b.hashCode());
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
        Category other = (Category) obj;
        if (this.a != other.a) {
            return false;
        }
        return this.b == null ? other.b == null : this.b.equals(other.b);
    }
}
