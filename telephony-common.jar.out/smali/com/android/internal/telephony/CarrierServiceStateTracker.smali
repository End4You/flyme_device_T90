.class public Lcom/android/internal/telephony/CarrierServiceStateTracker;
.super Landroid/os/Handler;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CarrierServiceStateTracker$1;
    }
.end annotation


# static fields
.field protected static final CARRIER_EVENT_BASE:I = 0x64

.field protected static final CARRIER_EVENT_DATA_DEREGISTRATION:I = 0x68

.field protected static final CARRIER_EVENT_DATA_REGISTRATION:I = 0x67

.field protected static final CARRIER_EVENT_VOICE_DEREGISTRATION:I = 0x66

.field protected static final CARRIER_EVENT_VOICE_REGISTRATION:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "CSST"

.field private static final NOTIFICATION_ID:I = 0x3e8

.field private static final SHOW_NOTIFICATION:I = 0xc8

.field private static final UNINITIALIZED_DELAY_VALUE:I = -0x1


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mDelay:I

.field private mIsPhoneRegistered:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSST:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/CarrierServiceStateTracker;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p2, "sst"    # Lcom/android/internal/telephony/ServiceStateTracker;

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    .line 130
    new-instance v0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 58
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    .line 59
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    .line 60
    const-string/jumbo v3, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 59
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void
.end method

.method private cancelNotification()V
    .locals 3

    .prologue
    .line 196
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 197
    .local v0, "context":Landroid/content/Context;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    .line 199
    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    check-cast v1, Landroid/app/NotificationManager;

    .line 200
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 195
    return-void
.end method

.method private handleConfigChanges()V
    .locals 4

    .prologue
    .line 114
    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->cancelNotification()V

    .line 116
    return-void

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    if-eqz v1, :cond_1

    .line 120
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->cancelNotification()V

    .line 121
    const-string/jumbo v1, "CSST"

    const-string/jumbo v2, "canceling all notifications. "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_0
    return-void

    .line 124
    :cond_1
    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 125
    .local v0, "notificationMsg":Landroid/os/Message;
    const-string/jumbo v1, "CSST"

    const-string/jumbo v2, "starting timer for notifications. "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private isGlobalModeOrRadioOffOrAirplaneMode()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 90
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 91
    .local v1, "context":Landroid/content/Context;
    const/4 v3, -0x1

    .line 92
    .local v3, "preferredNetworkSetting":I
    const/4 v0, -0x1

    .line 93
    .local v0, "airplaneMode":I
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v4

    .line 96
    .local v4, "subId":I
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 97
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "preferred_network_mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    sget v9, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .line 96
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 99
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 100
    const-string/jumbo v8, "airplane_mode_on"

    const/4 v9, 0x0

    .line 99
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 105
    const/16 v7, 0xa

    if-eq v3, v7, :cond_0

    .line 106
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v5

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "CSST"

    const-string/jumbo v7, "Unable to get PREFERRED_NETWORK_MODE."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v5

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move v5, v6

    .line 106
    goto :goto_0
.end method

.method private isNetworkSettingsApkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 207
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v2, "com.qualcomm.qti.networksetting"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    const/4 v2, 0x1

    return v2

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v4
.end method

.method private sendNotification()V
    .locals 10

    .prologue
    .line 146
    iget-object v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v7, "CSST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "w/values: ,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mDelay:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 149
    const-string/jumbo v9, ","

    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 149
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalModeOrRadioOffOrAirplaneMode()Z

    move-result v9

    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 149
    const-string/jumbo v9, ","

    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 149
    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mSST:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->isRadioOn()Z

    move-result v9

    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalModeOrRadioOffOrAirplaneMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    if-eqz v7, :cond_1

    .line 153
    :cond_0
    return-void

    .line 157
    :cond_1
    const-string/jumbo v7, "notification"

    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 156
    check-cast v4, Landroid/app/NotificationManager;

    .line 160
    .local v4, "notificationManager":Landroid/app/NotificationManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "android.settings.DATA_ROAMING_SETTINGS"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v3, "notificationIntent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isNetworkSettingsApkAvailable(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 162
    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.qualcomm.qti.networksetting"

    .line 163
    const-string/jumbo v9, "com.qualcomm.qti.networksetting.MobileNetworkSettings"

    .line 162
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 168
    :goto_0
    const/4 v7, 0x0

    .line 169
    const/high16 v8, 0x40000000    # 2.0f

    .line 168
    invoke-static {v0, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 172
    .local v5, "settingsIntent":Landroid/app/PendingIntent;
    const v7, 0x10400e6

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 174
    .local v6, "title":Ljava/lang/CharSequence;
    const v7, 0x10400e7

    invoke-virtual {v0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 177
    .local v1, "details":Ljava/lang/CharSequence;
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 177
    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 179
    const/4 v8, 0x1

    .line 177
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 180
    const v8, 0x108008a

    .line 177
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 183
    const v9, 0x106005b

    .line 182
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 177
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 184
    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v8, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    .line 177
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 189
    .local v2, "mNotification":Landroid/app/Notification;
    const/16 v7, 0x3e8

    invoke-virtual {v4, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 145
    return-void

    .line 165
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "mNotification":Landroid/app/Notification;
    .end local v5    # "settingsIntent":Landroid/app/PendingIntent;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_2
    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.android.phone"

    .line 166
    const-string/jumbo v9, "com.android.phone.MobileNetworkSettings"

    .line 165
    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 68
    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    goto :goto_0

    .line 73
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->isGlobalModeOrRadioOffOrAirplaneMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker;->mIsPhoneRegistered:Z

    .line 77
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->handleConfigChanges()V

    goto :goto_0

    .line 80
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->sendNotification()V

    goto :goto_0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
        0x68 -> :sswitch_1
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method
