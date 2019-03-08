package com.andreearosu.springMvc;

public class User {
    private String userName;
    private String email;
    private String password;
    
    public String getUserName() {
          return userName;
    }
    
    public String getEmail() {
        return email;
  }
    
    public String getPswd() {
        return password;
  }
    
    public void setUserName(String userName) {
        this.userName = userName;
   }

    public void setEmail(String email) {
        this.email = email;
   }
    public void setPswd(String password) {
        this.password = password;
   }
}

