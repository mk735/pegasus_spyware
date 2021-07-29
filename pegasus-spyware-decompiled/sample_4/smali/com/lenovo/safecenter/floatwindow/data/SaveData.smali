.class public Lcom/lenovo/safecenter/floatwindow/data/SaveData;
.super Ljava/lang/Object;
.source "SaveData.java"


# static fields
.field public static final FLOATVIEW_HEIGHT:Ljava/lang/String; = "height"

.field public static final FLOATVIEW_OPTIONS_X:Ljava/lang/String; = "optionsx"

.field public static final FLOATVIEW_OPTIONS_Y:Ljava/lang/String; = "optionsy"

.field public static final FLOATVIEW_WIDTH:Ljava/lang/String; = "width"

.field public static final FLOATWINDOW_STATE:Ljava/lang/String; = "floatwindow_status"

.field public static final FLOATWINDOW__DESKTOP_SHOW:Ljava/lang/String; = "floatwindow_desktop_show"

.field public static final FLOW_IMMOVE_STATUS:Ljava/lang/String; = "net_immove_status"

.field public static final FLOW_STATUS:Ljava/lang/String; = "net_status"

.field public static final FLOW_VIEW_OPTIONS_X:Ljava/lang/String; = "flowOptionsx"

.field public static final FLOW_VIEW_OPTIONS_Y:Ljava/lang/String; = "flowOptionsy"

.field public static final IS_HOME_RECEIVER:Ljava/lang/String; = "is_home_receiver"

.field public static final VIEW_COUNT:Ljava/lang/String; = "view_count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlowViewOptions(Landroid/content/Context;)[I
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 237
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 239
    .local v1, "options":[I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 241
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "flowOptionsx"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    .line 243
    const/4 v2, 0x1

    const-string v3, "flowOptionsy"

    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getDisplayHeight(Landroid/content/Context;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 244
    return-object v1
.end method

.method public static getViewCount(Landroid/content/Context;)I
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 210
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "view_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static get_FloatView_height(Landroid/content/Context;)I
    .locals 4
    .param p0, "paramText"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    .local v1, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "height"

    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "height":I
    return v0
.end method

.method public static get_FloatView_options(Landroid/content/Context;)[I
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 103
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 105
    .local v1, "options":[I
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 108
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "optionsx"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    .line 110
    const/4 v2, 0x1

    const-string v3, "optionsy"

    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getDisplayHeight(Landroid/content/Context;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 113
    return-object v1
.end method

.method public static get_FloatView_width(Landroid/content/Context;)I
    .locals 4
    .param p0, "paramText"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 71
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "width"

    invoke-static {p0}, Lcom/lenovo/safecenter/floatwindow/util/Tools;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 74
    .local v1, "width":I
    return v1
.end method

.method public static get_floatview_desktop_show(Landroid/content/Context;)Z
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 141
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "floatwindow_desktop_show"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static get_floatwindow_state(Landroid/content/Context;)Z
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 127
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "floatwindow_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static get_flow_immove_state(Landroid/content/Context;)Z
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 187
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "net_immove_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static get_flow_status(Landroid/content/Context;)Z
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 165
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "net_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static get_is_home_receiver(Landroid/content/Context;)Z
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 193
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 196
    .local v0, "localSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "is_home_receiver"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static savaFlowViewOptions(Landroid/content/Context;II)V
    .locals 2
    .param p0, "paramText"    # Landroid/content/Context;
    .param p1, "options_x"    # I
    .param p2, "options_y"    # I

    .prologue
    .line 225
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "flowOptionsx"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v1, "flowOptionsy"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 233
    return-void
.end method

.method public static sava_FloatView_options(Landroid/content/Context;II)V
    .locals 2
    .param p0, "paramText"    # Landroid/content/Context;
    .param p1, "options_x"    # I
    .param p2, "options_y"    # I

    .prologue
    .line 90
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "optionsx"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string v1, "optionsy"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method

.method public static saveViewCount(Landroid/content/Context;I)V
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "count"    # I

    .prologue
    .line 214
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 215
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "view_count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 216
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    return-void
.end method

.method public static save_FloatView_height(Landroid/content/Context;I)V
    .locals 2
    .param p0, "paramText"    # Landroid/content/Context;
    .param p1, "height"    # I

    .prologue
    .line 55
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    .local v0, "localEidtor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "height"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public static save_FloatView_width(Landroid/content/Context;I)V
    .locals 2
    .param p0, "paramText"    # Landroid/content/Context;
    .param p1, "width"    # I

    .prologue
    .line 42
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, "localEidtor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "width"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    return-void
.end method

.method public static save_floatview_desktop_show(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramboolean"    # Z

    .prologue
    .line 133
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, "localEidtor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "floatwindow_desktop_show"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    return-void
.end method

.method public static save_floatwindow_state(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramboolean"    # Z

    .prologue
    .line 120
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 121
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "floatwindow_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method

.method public static save_flow_immove_state(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramboolean"    # Z

    .prologue
    .line 181
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "net_immove_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 184
    return-void
.end method

.method public static save_flow_status(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramboolean"    # Z

    .prologue
    .line 172
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "net_status"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    return-void
.end method

.method public static save_is_home_receiver(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramboolean"    # Z

    .prologue
    .line 200
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    .local v0, "localEditor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "is_home_receiver"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method
