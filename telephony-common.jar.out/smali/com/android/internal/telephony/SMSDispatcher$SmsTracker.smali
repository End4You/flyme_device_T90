.class public Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsTracker"
.end annotation


# instance fields
.field private mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mAppInfo:Landroid/content/pm/PackageInfo;

.field private final mData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeliveryIntent:Landroid/app/PendingIntent;

.field public final mDestAddress:Ljava/lang/String;

.field public mExpectMore:Z

.field mFormat:Ljava/lang/String;

.field private mFullMessageText:Ljava/lang/String;

.field public mImsRetry:I

.field private mIsText:Z

.field public mMessageRef:I

.field public mMessageUri:Landroid/net/Uri;

.field private mPersistMessage:Z

.field public mRetryCount:I

.field public final mSentIntent:Landroid/app/PendingIntent;

.field public final mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

.field private mSubId:I

.field private mTimestamp:J

.field private mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mvalidityPeriod:I


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    return p1
.end method

.method private constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZIZ)V
    .locals 4
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "appInfo"    # Landroid/content/pm/PackageInfo;
    .param p5, "destAddr"    # Ljava/lang/String;
    .param p6, "format"    # Ljava/lang/String;
    .param p7, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p9, "messageUri"    # Landroid/net/Uri;
    .param p10, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p11, "isExpectMore"    # Z
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "subId"    # I
    .param p14, "isText"    # Z
    .param p15, "validityPeriod"    # I
    .param p16, "persistMessage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Landroid/app/PendingIntent;",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Landroid/net/Uri;",
            "Lcom/android/internal/telephony/SmsHeader;",
            "Z",
            "Ljava/lang/String;",
            "IZIZ)V"
        }
    .end annotation

    .prologue
    .line 1430
    .local p1, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mTimestamp:J

    .line 1435
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1436
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .line 1437
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 1438
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1439
    iput-object p4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    .line 1440
    iput-object p5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    .line 1441
    iput-object p6, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFormat:Ljava/lang/String;

    .line 1442
    iput-boolean p11, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mExpectMore:Z

    .line 1443
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mImsRetry:I

    .line 1444
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .line 1445
    move/from16 v0, p15

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mvalidityPeriod:I

    .line 1446
    iput-object p7, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1447
    iput-object p8, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1448
    iput-object p9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    .line 1449
    iput-object p10, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSmsHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1450
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    .line 1451
    move/from16 v0, p13

    iput v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    .line 1452
    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    .line 1453
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    .line 1434
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZIZLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .param p1, "data"    # Ljava/util/HashMap;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;
    .param p3, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p4, "appInfo"    # Landroid/content/pm/PackageInfo;
    .param p5, "destAddr"    # Ljava/lang/String;
    .param p6, "format"    # Ljava/lang/String;
    .param p7, "unsentPartCount"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p8, "anyPartFailed"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p9, "messageUri"    # Landroid/net/Uri;
    .param p10, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;
    .param p11, "isExpectMore"    # Z
    .param p12, "fullMessageText"    # Ljava/lang/String;
    .param p13, "subId"    # I
    .param p14, "isText"    # Z
    .param p15, "validityPeriod"    # I
    .param p16, "persistMessage"    # Z

    .prologue
    invoke-direct/range {p0 .. p16}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;-><init>(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;Lcom/android/internal/telephony/SmsHeader;ZLjava/lang/String;IZIZ)V

    return-void
.end method

.method private persistOrUpdateMessage(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1577
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->updateMessageState(Landroid/content/Context;II)V

    .line 1575
    :goto_0
    return-void

    .line 1579
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private persistSentMessageIfRequired(Landroid/content/Context;II)Landroid/net/Uri;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 1518
    iget-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mIsText:Z

    if-eqz v9, :cond_4

    iget-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mPersistMessage:Z

    if-eqz v9, :cond_4

    .line 1519
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v9, p1}, Lcom/android/internal/telephony/SmsApplication;->shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1522
    const-string/jumbo v10, "SMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Persist SMS into "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1523
    const/4 v9, 0x5

    if-ne p2, v9, :cond_5

    const-string/jumbo v9, "FAILED"

    .line 1522
    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1526
    .local v8, "values":Landroid/content/ContentValues;
    iget v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    .line 1527
    .local v4, "phoneId":I
    const-string/jumbo v9, "phone_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1529
    const-string/jumbo v9, "sub_id"

    iget v10, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1530
    const-string/jumbo v9, "address"

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDestAddress:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    const-string/jumbo v9, "body"

    iget-object v10, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mFullMessageText:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    const-string/jumbo v9, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1533
    const-string/jumbo v9, "seen"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1534
    const-string/jumbo v9, "read"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {p0, p1, v8}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->putFlymeExtraValues(Landroid/content/Context;Landroid/content/ContentValues;)V

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    if-eqz v9, :cond_6

    .line 1535
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 1536
    .local v0, "creator":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1537
    const-string/jumbo v9, "creator"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_1

    .line 1540
    const-string/jumbo v9, "status"

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1542
    :cond_1
    if-eqz p3, :cond_2

    .line 1543
    const-string/jumbo v9, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1545
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1546
    .local v2, "identity":J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1548
    .local v5, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v9, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .line 1549
    .local v7, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_3

    const/4 v9, 0x5

    if-ne p2, v9, :cond_3

    .line 1555
    new-instance v6, Landroid/content/ContentValues;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1556
    .local v6, "updateValues":Landroid/content/ContentValues;
    const-string/jumbo v9, "type"

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1557
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v6, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1564
    .end local v6    # "updateValues":Landroid/content/ContentValues;
    :cond_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1559
    return-object v7

    .line 1520
    .end local v0    # "creator":Ljava/lang/String;
    .end local v2    # "identity":J
    .end local v4    # "phoneId":I
    .end local v5    # "resolver":Landroid/content/ContentResolver;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_4
    const/4 v9, 0x0

    return-object v9

    .line 1523
    :cond_5
    const-string/jumbo v9, "SENT"

    goto/16 :goto_0

    .line 1535
    .restart local v4    # "phoneId":I
    .restart local v8    # "values":Landroid/content/ContentValues;
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 1560
    .restart local v0    # "creator":Ljava/lang/String;
    .restart local v2    # "identity":J
    .restart local v5    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1561
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v9, "SMSDispatcher"

    const-string/jumbo v10, "writeOutboxMessage: Failed to persist outbox message"

    invoke-static {v9, v10, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1562
    const/4 v9, 0x0

    .line 1564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1562
    return-object v9

    .line 1563
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 1564
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1563
    throw v9
.end method

.method private updateMessageState(Landroid/content/Context;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageType"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1490
    return-void

    .line 1492
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1493
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1494
    const-string/jumbo v0, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1497
    .local v6, "identity":J
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    .line 1498
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 1497
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1498
    const/4 v1, 0x1

    .line 1497
    if-eq v0, v1, :cond_1

    .line 1499
    const-string/jumbo v0, "SMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to move message to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1502
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1488
    return-void

    .line 1501
    :catchall_0
    move-exception v0

    .line 1502
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1501
    throw v0
.end method


# virtual methods
.method public getData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    return-object v0
.end method

.method isMultipart()Z
    .locals 2

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    const-string/jumbo v1, "parts"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onFailed(Landroid/content/Context;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "error"    # I
    .param p3, "errorCode"    # I

    .prologue
    const/4 v4, 0x1

    .line 1591
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v3, :cond_0

    .line 1592
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1595
    :cond_0
    const/4 v2, 0x1

    .line 1596
    .local v2, "isSinglePartOrLastPart":Z
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_1

    .line 1597
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_7

    const/4 v2, 0x1

    .line 1599
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 1600
    const/4 v3, 0x5

    invoke-direct {p0, p1, v3, p3}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    .line 1602
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_6

    .line 1605
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1606
    .local v1, "fillIn":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v3, :cond_3

    .line 1608
    const-string/jumbo v3, "uri"

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1610
    :cond_3
    if-eqz p3, :cond_4

    .line 1611
    const-string/jumbo v3, "errorCode"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1613
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 1615
    const-string/jumbo v3, "SendNextMsg"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1617
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1, p2, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1590
    .end local v1    # "fillIn":Landroid/content/Intent;
    :cond_6
    :goto_1
    return-void

    .line 1597
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 1618
    :catch_0
    move-exception v0

    .line 1619
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v3, "SMSDispatcher"

    const-string/jumbo v4, "Failed to send result"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSent(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 1631
    const/4 v2, 0x1

    .line 1632
    .local v2, "isSinglePartOrLastPart":Z
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v4, :cond_0

    .line 1633
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_6

    const/4 v2, 0x1

    .line 1635
    :cond_0
    :goto_0
    if-eqz v2, :cond_2

    .line 1636
    const/4 v3, 0x2

    .line 1637
    .local v3, "messageType":I
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAnyPartFailed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1638
    const/4 v3, 0x5

    .line 1640
    :cond_1
    invoke-direct {p0, p1, v3, v5}, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->persistOrUpdateMessage(Landroid/content/Context;II)V

    .line 1642
    .end local v3    # "messageType":I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_5

    .line 1645
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1646
    .local v1, "fillIn":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 1648
    const-string/jumbo v4, "uri"

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mUnsentPartCount:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    .line 1652
    const-string/jumbo v4, "SendNextMsg"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1654
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    const/4 v5, -0x1

    invoke-virtual {v4, p1, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    .end local v1    # "fillIn":Landroid/content/Intent;
    :cond_5
    :goto_1
    return-void

    .line 1633
    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v4, "SMSDispatcher"

    const-string/jumbo v5, "Failed to send result"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public updateSentMessageStatus(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # I

    .prologue
    const/4 v4, 0x0

    .line 1472
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1474
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1475
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "status"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1476
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1477
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageUri:Landroid/net/Uri;

    move-object v0, p1

    move-object v5, v4

    .line 1476
    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1471
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private putFlymeExtraValues(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "imsi":Ljava/lang/String;
    iget v2, p0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSubId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    .local v1, "phoneId":I
    const-string v2, "imsi"

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sim_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method