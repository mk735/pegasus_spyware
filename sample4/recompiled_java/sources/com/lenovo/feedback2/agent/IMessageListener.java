package com.lenovo.feedback2.agent;

import com.lenovo.feedback2.message.Message;

public interface IMessageListener {
    void onReceivedMessage(Message message);
}
