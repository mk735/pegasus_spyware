package com.lenovo.feedback2.agent;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.lenovo.feedback2.message.CommandAction;
import com.lenovo.providers.querypermissions.QueryPermissions;

public class CommandReceiver extends BroadcastReceiver {
    private static String a = "FeedBackAgent";
    private AgentContext b;

    public void setAgentContext(AgentContext agentContext) {
        this.b = agentContext;
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action.equals(CommandAction.SERVER_START)) {
            a();
        } else if (action.equals(CommandAction.SERVER_RESTART)) {
            a();
        } else if (action.equals(CommandAction.SERVER_STOP)) {
            Log.i(a, "CommandReceiver unbind from service");
            this.b.getHandler().unbind();
        } else if (action.equals(CommandAction.REBIND)) {
            a();
        } else if (action.equals(CommandAction.GET_SCREENSHOT)) {
            long id = intent.getLongExtra(QueryPermissions.ID, 0);
            Log.i(a, "CommandReceiver::received screenshot command. id = " + id);
            new Thread(new ScreenShotHandler(this.b, id)).start();
        }
    }

    private void a() {
        Log.i(a, "CommandReceiver rebind to service");
        this.b.getHandler().unbind();
        this.b.getHandler().bind();
    }
}
