.class public Lcom/lenovo/safecenter/utils/TrackEvent;
.super Ljava/lang/Object;
.source "TrackEvent.java"


# static fields
.field public static final PAGE_NAME_HEALTH_CHECK:Ljava/lang/String; = "healthCheck"

.field public static final PAGE_NAME_IGNORE_VIRUS_CAN_UPDATE_NOTICE:Ljava/lang/String; = "everyweekVirusUpdateNotice"

.field public static final PAGE_NAME_SHORTCUT_SWITCH:Ljava/lang/String; = "ShortcutSwitch"

.field public static final PAGE_NAME_TRAFFIC_OUT_LIMIT:Ljava/lang/String; = "TrafficOutLimit"

.field public static final PAGE_NAME_TRAFFIC_USED_DEDAIL:Ljava/lang/String; = "TrafficUsedDedail"

.field private static a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 47
    const-string v0, "i"

    const-string v1, "wu0wu"

    const-string v2, "tracker==null"

    invoke-static {v0, v1, v2}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->initialize(Landroid/content/Context;)V

    .line 50
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    sput-object v1, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    .line 28
    sget-object v1, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-virtual {v1, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "i"

    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrackEvent initialize Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportCallOnBackgroud(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 202
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "wu0wu"

    const-string v1, "reportCallOnBackgroud tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "ChargeShield"

    const-string v2, "CallOnBackgroud"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportChildModeSwitchChange(Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 348
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 349
    const-string v0, "wu0wu"

    const-string v1, "reportChildModeSwitchChange tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :goto_0
    return-void

    .line 351
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "child_mode_switch_change"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportClickChargeShieldOnekeyConfig()V
    .locals 5

    .prologue
    .line 215
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 216
    const-string v0, "wu0wu"

    const-string v1, "reportClickChargeShieldOnekeyConfig tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_0
    return-void

    .line 219
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "ChargeShield"

    const-string v2, "ClickOnekeyConfig"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportClickOneKeyEndTask()V
    .locals 5

    .prologue
    .line 461
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 462
    const-string v0, "wu0wu"

    const-string v1, "reportClickOneKeyEndTask tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_0
    return-void

    .line 464
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "app_manager"

    const-string v2, "Click_One_Key_End_Task_Count"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportClickOneKeyEndTaskInShortcut()V
    .locals 5

    .prologue
    .line 481
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 482
    const-string v0, "wu0wu"

    const-string v1, "reportClickOneKeyEndTask tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_0
    return-void

    .line 484
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "app_manager"

    const-string v2, "ClickOneKeyEndTaskInShortcut"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportClickOneKeyEndTaskInWidget()V
    .locals 5

    .prologue
    .line 491
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 492
    const-string v0, "wu0wu"

    const-string v1, "reportClickOneKeyEndTask tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return-void

    .line 494
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "app_manager"

    const-string v2, "ClickOneKeyEndTaskInWidget"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportClickPrivacyOnekeyConfig()V
    .locals 5

    .prologue
    .line 244
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 245
    const-string v0, "wu0wu"

    const-string v1, "reportClickPrivacyOnekeyConfig tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "privacy"

    const-string v2, "ClickOnekeyConfig"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportCloseTrafficFloatwindow()V
    .locals 5

    .prologue
    .line 560
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 561
    const-string v0, "wu0wu"

    const-string v1, "reportCloseTrafficFloatwindow tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_0
    return-void

    .line 563
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "floatwindow"

    const-string v2, "CloseTrafficFloatwindow"

    const-string v3, "true"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportDisableBootStartApp(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 432
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 433
    const-string v0, "wu0wu"

    const-string v1, "reportDisableBootStartApp tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "other"

    const-string v2, "DisableBootStartApp"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportDownloadLeBattery()V
    .locals 5

    .prologue
    .line 825
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 826
    const-string v0, "wu0wu"

    const-string v1, "reportDownloadLeBattery tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "DownloadLeBattery"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportDownloadLeCloudSync()V
    .locals 5

    .prologue
    .line 417
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 418
    const-string v0, "wu0wu"

    const-string v1, "reportDownloadLeCloudSync tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :goto_0
    return-void

    .line 420
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "DownloadLeCloudSync"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportEntryLeBattery()V
    .locals 5

    .prologue
    .line 816
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 817
    const-string v0, "wu0wu"

    const-string v1, "reportEntryLeBattery tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :goto_0
    return-void

    .line 819
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "EntryLeBattery"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportEntryLeCloudSync()V
    .locals 5

    .prologue
    .line 408
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 409
    const-string v0, "wu0wu"

    const-string v1, "reportStartLeCloudSync tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "EntryLeCloudSync"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportEntryPrivacySpaceCount(I)V
    .locals 5
    .param p0, "count"    # I

    .prologue
    .line 368
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 369
    const-string v0, "wu0wu"

    const-string v1, "reportEntryPrivacySpaceCount tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void

    .line 371
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "privacy"

    const-string v2, "Entry_Privacy_Space_Count"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportGuestModeSwitchChange(Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 358
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 359
    const-string v0, "wu0wu"

    const-string v1, "reportGuestModeSwitchChange tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "guest_mode_switch_change"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportHealthNoOpenSafeHomePage()V
    .locals 5

    .prologue
    .line 104
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 105
    const-string v0, "wu0wu"

    const-string v1, "reportHealthNoOpenSafeHomePage tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "health_checkup"

    const-string v2, "HealthNoOpenSafeHomePage"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportHealthcheckWithAIDL()V
    .locals 5

    .prologue
    .line 582
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 583
    const-string v0, "wu0wu"

    const-string v1, "reportHealthcheckWithAIDL tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :goto_0
    return-void

    .line 585
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "health_checkup"

    const-string v2, "HealthcheckWithAIDL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportInterceptGarbageSMS()V
    .locals 5

    .prologue
    .line 282
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 283
    const-string v0, "wu0wu"

    const-string v1, "reportInterceptGarbageSMS tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "HarassIntercept"

    const-string v2, "InterceptGarbageSMS"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportInterceptHarassCalls()V
    .locals 5

    .prologue
    .line 292
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 293
    const-string v0, "wu0wu"

    const-string v1, "reportInterceptHarassCalls tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 295
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "HarassIntercept"

    const-string v2, "InterceptHarassCall"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportInterceptRecord()V
    .locals 5

    .prologue
    .line 256
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 257
    const-string v0, "wu0wu"

    const-string v1, "reportInterceptRecord tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "privacy"

    const-string v2, "InterceptRecord"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportInterceptUnknownNumbersSwitchChange(Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 784
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 785
    const-string v0, "wu0wu"

    const-string v1, "reportInterceptUnknownNumbersSwitchChange tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :goto_0
    return-void

    .line 788
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "HarassIntercept"

    const-string v2, "InterceptUnknownNumbers:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportOneKeyHealthCheckup()V
    .locals 5

    .prologue
    .line 80
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "wu0wu"

    const-string v1, "reportOneKeyHealthCheckup tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "health_checkup"

    const-string v2, "OneKeyHealthCheckup"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportProtectHarassSwitchChange(Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 272
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 273
    const-string v0, "wu0wu"

    const-string v1, "reportProtectHarassSwitchChange tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "HarassIntercept"

    const-string v2, "Protect_Harass_Switch_change"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportProtectPeepSwitchChange(Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 231
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 232
    const-string v0, "wu0wu"

    const-string v1, "reportProtectPeepSwitchChange tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "privacy"

    const-string v2, "Protect_Peep_Switch_change"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportProtectThiefSwitchChange(Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 378
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 379
    const-string v0, "wu0wu"

    const-string v1, "reportProtectThiefSwitchChange tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :goto_0
    return-void

    .line 381
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "Protect_Thief_Switch_change"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportProtectTrafficSwitchChange(Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 178
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 179
    const-string v0, "wu0wu"

    const-string v1, "reportProtectTrafficSwitchChange tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "ChargeShield"

    const-string v2, "protect_traffic_switch_change"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportProtectVirusSwitchChange(Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 441
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 442
    const-string v0, "wu0wu"

    const-string v1, "reportProtectVirusSwitchChange tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :goto_0
    return-void

    .line 444
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "FiveProtectSwitch"

    const-string v2, "Protect_Virus_Switch_change"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportRootEnable()V
    .locals 5

    .prologue
    .line 537
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 538
    const-string v0, "wu0wu"

    const-string v1, "reportRootEnable tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "root"

    const-string v2, "RootEnable"

    const-string v3, "true"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportSafeHomePageSwitchChange(Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "isOn"    # Ljava/lang/Boolean;

    .prologue
    .line 806
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 807
    const-string v0, "wu0wu"

    const-string v1, "reportSafeHomePageSwitchChange tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :goto_0
    return-void

    .line 809
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "settings"

    const-string v2, "SafeHomePageSwitch:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportSafeInputMethod(Z)V
    .locals 5
    .param p0, "isOn"    # Z

    .prologue
    .line 398
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 399
    const-string v0, "wu0wu"

    const-string v1, "reportSafeInputMethod tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :goto_0
    return-void

    .line 401
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "SafeInputMethod_on"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportScanVirusWithAIDL()V
    .locals 5

    .prologue
    .line 573
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 574
    const-string v0, "wu0wu"

    const-string v1, "reportScanVirusWithAIDL tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :goto_0
    return-void

    .line 576
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "killvirus"

    const-string v2, "ScanVirusWithAIDL"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportSendSmsOnBackgroud(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 191
    const-string v0, "wu0wu"

    const-string v1, "reportSendSmsOnBackgroud tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "ChargeShield"

    const-string v2, "SendSmsOnBackgroud"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportSetTrafficLimit()V
    .locals 5

    .prologue
    .line 317
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 318
    const-string v0, "wu0wu"

    const-string v1, "reportSetTrafficLimit tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "traffic"

    const-string v2, "SetTrafficLimit"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportTrafficCorrect()V
    .locals 5

    .prologue
    .line 308
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 309
    const-string v0, "wu0wu"

    const-string v1, "reportTrafficCorrect tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "traffic"

    const-string v2, "TrafficCorrect"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportTrafficFloatwindowSwitchChanged(Z)V
    .locals 5
    .param p0, "isOn"    # Z

    .prologue
    .line 549
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 550
    const-string v0, "wu0wu"

    const-string v1, "reportTrafficFloatwindowSwitchChanged tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_0
    return-void

    .line 553
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "floatwindow"

    const-string v2, "TrafficFloatwindowSwitchChanged"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportTrafficOutLimitDisableNetSwitchChanged(Z)V
    .locals 5
    .param p0, "isOn"    # Z

    .prologue
    .line 671
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 672
    const-string v0, "wu0wu"

    const-string v1, "reportTrafficOutLimitDisableNetSwitchChanged tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void

    .line 675
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "traffic"

    const-string v2, "DisableNet:"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportTrustApp(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 471
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 472
    const-string v0, "wu0wu"

    const-string v1, "reportClickOneKeyEndTaskCount tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :goto_0
    return-void

    .line 474
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "app_permission_manager"

    const-string v2, "trust_app_packageName"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportUninstallApp(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 332
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 333
    const-string v0, "wu0wu"

    const-string v1, "reportUninstallApp tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    return-void

    .line 335
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "appPerm"

    const-string v2, "UninstallApp"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportUseLeSafeAppInstallManager(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 834
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 835
    const-string v0, "wu0wu"

    const-string v1, "reportUseLeSafeAppInstallManager tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    return-void

    .line 837
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "UseLeSafeAppInstallManager"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportUserActionCancelHealthCheck()V
    .locals 3

    .prologue
    .line 124
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionCancelHealthCheckup tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "CancelHealthCheck"

    const-string v2, "healthCheck"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionClickContinueUseInTrafficOutLimitDisableNet()V
    .locals 3

    .prologue
    .line 693
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 694
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionClickContinueUseInTrafficOutLimitDisableNet tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "ContinueUse"

    const-string v2, "TrafficOutLimit"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionClickDisableNetInTrafficOutLimitDisableNet()V
    .locals 3

    .prologue
    .line 711
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 712
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionClickDisableNetInTrafficOutLimitDisableNet tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "DisableNet"

    const-string v2, "TrafficOutLimit"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionClickIgnorePopupTrafficUsedStatus()V
    .locals 3

    .prologue
    .line 749
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 750
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionClickIgnorePopupTrafficUsedStatus tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_0
    return-void

    .line 753
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "Ignore"

    const-string v2, "TrafficUsedDedail"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionClickLookPopupTrafficUsedStatus()V
    .locals 3

    .prologue
    .line 766
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 767
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionClickLookPopupTrafficUsedStatus tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :goto_0
    return-void

    .line 770
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "Look"

    const-string v2, "TrafficUsedDedail"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionClickNotPromptPopupTrafficUsedStatus()V
    .locals 3

    .prologue
    .line 732
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 733
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionClickNotPromptPopupTrafficUsedStatus tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :goto_0
    return-void

    .line 736
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "NotPrompt"

    const-string v2, "TrafficUsedDedail"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionClickOneKeyClearInShortcutSwitch()V
    .locals 3

    .prologue
    .line 653
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 654
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionClickOneKeyClearInShortcutSwitch tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :goto_0
    return-void

    .line 657
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "OneKeyClear"

    const-string v2, "ShortcutSwitch"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionCloudKillVirusCanUpdateNotice()V
    .locals 3

    .prologue
    .line 629
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 630
    const-string v0, "wu0wu"

    const-string v1, "reportCloudKillVirusCanUpdateNotice tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :goto_0
    return-void

    .line 633
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "CloudKill"

    const-string v2, "everyweekVirusUpdateNotice"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionHealthManualOpenSafeHomePage()V
    .locals 3

    .prologue
    .line 161
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 162
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionHealthManualOpenSafeHomePage tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 165
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "ManualOpenSafeHomePage"

    const-string v2, "healthCheck"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionHealthOptimizeImmediately()V
    .locals 3

    .prologue
    .line 142
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 143
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionHealthOptimizeImmediately tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "OptimizeImmediately"

    const-string v2, "healthCheck"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportUserActionIgnoreVirusCanUpdateNotice()V
    .locals 3

    .prologue
    .line 612
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 613
    const-string v0, "wu0wu"

    const-string v1, "reportUserActionIgnoreVirusCanUpdateNotice tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void

    .line 616
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "Ignore"

    const-string v2, "everyweekVirusUpdateNotice"

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackUserAction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportWidgetEntrySafeCenter()V
    .locals 5

    .prologue
    .line 528
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 529
    const-string v0, "wu0wu"

    const-string v1, "reportWidgetEntrySafeCenter tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    return-void

    .line 531
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "app_widget"

    const-string v2, "entry_safecenter"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportWidgetKillAllApp()V
    .locals 5

    .prologue
    .line 512
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 513
    const-string v0, "wu0wu"

    const-string v1, "reportWidgetKillAllApp tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "app_widget"

    const-string v2, "kill_all_app"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportWidgetKillOneApp(Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 504
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 505
    const-string v0, "wu0wu"

    const-string v1, "reportWidgetKillOneApp tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "app_widget"

    const-string v2, "kill_one_app"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p0, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportWidgetRefresh()V
    .locals 5

    .prologue
    .line 520
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 521
    const-string v0, "wu0wu"

    const-string v1, "reportWidgetRefresh tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "app_widget"

    const-string v2, "refresh"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static reportsafePay(Z)V
    .locals 5
    .param p0, "isOn"    # Z

    .prologue
    .line 388
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 389
    const-string v0, "wu0wu"

    const-string v1, "reportsafePay tracker == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return-void

    .line 391
    :cond_0
    sget-object v0, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    const-string v1, "supertool"

    const-string v2, "safepaymen_on"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 5

    .prologue
    .line 38
    :try_start_0
    sget-object v1, Lcom/lenovo/safecenter/utils/TrackEvent;->a:Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 40
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "i"

    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrackEvent shutdown Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackPause(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->get(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "i"

    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrackEvent trackPause Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static trackResume(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/safecenter/utils/TrackEvent;->get(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "i"

    const-string v2, "wu0wu"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TrackEvent trackResume Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/safecenter/utils/WflUtils;->Log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
