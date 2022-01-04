package com.lenovo.feedback2.agent;

import android.content.Context;
import com.lenovo.feedback2.agent.FeedBackAgent;
import com.lenovo.feedback2.service.IFeedBackService;

public class AgentContext {
    private Context a;
    private IFeedBackService b;
    private ApplicationInfo c;
    private FeedBackAgent.AgentHandler d;

    public Context getContext() {
        return this.a;
    }

    public void setContext(Context context) {
        this.a = context;
    }

    public IFeedBackService getFeedBackService() {
        return this.b;
    }

    public void setFeedBackService(IFeedBackService feedBackService) {
        this.b = feedBackService;
    }

    public ApplicationInfo getApplicationInfo() {
        return this.c;
    }

    public void setApplicationInfo(ApplicationInfo applicationInfo) {
        this.c = applicationInfo;
    }

    public FeedBackAgent.AgentHandler getHandler() {
        return this.d;
    }

    public void setHandler(FeedBackAgent.AgentHandler handler) {
        this.d = handler;
    }
}
