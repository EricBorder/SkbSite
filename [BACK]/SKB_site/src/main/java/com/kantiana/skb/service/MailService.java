package com.kantiana.skb.service;

import com.kantiana.skb.model.User;

public interface MailService {
    void sendNewPassword(String username, String newPassword, String email);
}
