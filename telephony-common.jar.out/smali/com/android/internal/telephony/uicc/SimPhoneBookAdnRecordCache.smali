.class public final Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;
.super Landroid/os/Handler;
.source "SimPhoneBookAdnRecordCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;
    }
.end annotation


# static fields
.field static final ACTION_ADN_INIT_DONE:Ljava/lang/String; = "android.intent.action.ACTION_ADN_INIT_DONE"

.field private static final DBG:Z = true

.field static final EVENT_INIT_ADN_DONE:I = 0x1

.field static final EVENT_LOAD_ADN_RECORD_DONE:I = 0x3

.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x4

.field static final EVENT_QUERY_ADN_RECORD_DONE:I = 0x2

.field static final EVENT_SIM_REFRESH:I = 0x6

.field static final EVENT_UPDATE_ADN_RECORD_DONE:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "SimPhoneBookAdnRecordCache"


# instance fields
.field extRecList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mAddNumCount:I

.field private mAdnCount:I

.field mAdnLoadingWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mAdnUpdatingWaiter:Landroid/os/Message;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field private mEmailCount:I

.field private mLock:Ljava/lang/Object;

.field protected mPhoneId:I

.field private mRecCount:I

.field private mRefreshAdnCache:Z

.field private mSimPbRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mValidAddNumCount:I

.field private mValidAdnCount:I

.field private mValidEmailCount:I

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 73
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 74
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 75
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 76
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 77
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 78
    iput v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    .line 79
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    .line 81
    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    .line 87
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 90
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->extRecList:Landroid/util/SparseArray;

    .line 271
    new-instance v1, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache$1;-><init>(Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    .line 106
    iput p2, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mContext:Landroid/content/Context;

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAdnInitDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x6

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method private clearUpdatingWriter()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const-string/jumbo v1, "SimPhoneBookAdnRecordCache reset"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 124
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 580
    const-string/jumbo v0, "SimPhoneBookAdnRecordCache"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-void
.end method

.method private notifyAndClearWaiters()V
    .locals 5

    .prologue
    .line 139
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 140
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 144
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 146
    .local v1, "response":Landroid/os/Message;
    if-eqz v1, :cond_1

    .line 147
    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    iput-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 148
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 143
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v1    # "response":Landroid/os/Message;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 138
    return-void
.end method

.method private refreshAdnCache()V
    .locals 1

    .prologue
    .line 589
    const-string/jumbo v0, "refreshAdnCache"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 591
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->queryAdnRecord()V

    .line 588
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "errString"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 133
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAdnCount()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    return v0
.end method

.method public getAnrCount()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    return v0
.end method

.method public getEmailCount()I
    .locals 1

    .prologue
    .line 564
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    return v0
.end method

.method public getUsedAdnCount()I
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    return v0
.end method

.method public getUsedAnrCount()I
    .locals 1

    .prologue
    .line 576
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    return v0
.end method

.method public getUsedEmailCount()I
    .locals 1

    .prologue
    .line 568
    iget v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 31
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 295
    .local v13, "ar":Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 297
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v13    # "ar":Landroid/os/AsyncResult;
    check-cast v13, Landroid/os/AsyncResult;

    .line 298
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    .line 301
    new-instance v18, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.ACTION_ADN_INIT_DONE"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v18, "intent":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 303
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    move-object/from16 v0, v18

    invoke-static {v0, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcast intent ACTION_ADN_INIT_DONE for mPhoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 307
    .end local v18    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Init ADN done Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :pswitch_1
    const-string/jumbo v2, "Querying ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 314
    iget-object v2, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 316
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "response$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/Message;

    .line 320
    .local v28, "response":Landroid/os/Message;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Query adn record failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 315
    .end local v28    # "response":Landroid/os/Message;
    .end local v29    # "response$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 322
    .restart local v29    # "response$iterator":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 325
    .end local v29    # "response$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 326
    iget-object v2, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 327
    iget-object v2, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x2

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 328
    iget-object v2, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x3

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 329
    iget-object v2, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x4

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 330
    iget-object v2, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x5

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 331
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Max ADN count is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 332
    const-string/jumbo v3, ", Valid ADN count is: "

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 332
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    const-string/jumbo v3, ", Email count is: "

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    const-string/jumbo v3, ", Valid Email count is: "

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 334
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 335
    const-string/jumbo v3, ", Add number count is: "

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 335
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 336
    const-string/jumbo v3, ", Valid Add number count is: "

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 336
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v2, v3, :cond_0

    .line 339
    :cond_4
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 344
    :pswitch_2
    const-string/jumbo v2, "Loading ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 345
    iget-object v2, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 349
    iget-object v9, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;

    .line 350
    .local v9, "AdnRecordsGroup":[Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    array-length v2, v9

    move/from16 v0, v16

    if-ge v0, v2, :cond_6

    .line 351
    aget-object v2, v9, v16

    if-eqz v2, :cond_5

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 353
    aget-object v3, v9, v16

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getRecordIndex()I

    move-result v4

    .line 354
    aget-object v3, v9, v16

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    .line 355
    aget-object v3, v9, v16

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 356
    aget-object v3, v9, v16

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    .line 357
    aget-object v3, v9, v16

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->getAdNumbers()[Ljava/lang/String;

    move-result-object v8

    .line 352
    const/4 v3, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    .line 350
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 362
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    if-ne v2, v3, :cond_0

    .line 363
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 368
    .end local v9    # "AdnRecordsGroup":[Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    .end local v16    # "i":I
    :pswitch_3
    const-string/jumbo v2, "Loading all ADN records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 370
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v3

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V

    goto/16 :goto_0

    .line 369
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 377
    :pswitch_4
    const-string/jumbo v2, "Update ADN record done"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 378
    const/4 v14, 0x0

    .line 380
    .local v14, "e":Ljava/lang/Exception;
    iget-object v2, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_17

    .line 381
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    .line 382
    .local v17, "index":I
    iget-object v10, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v10, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 383
    .local v10, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v2, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v26, v2, v3

    .line 385
    .local v26, "recordIndex":I
    if-nez v17, :cond_9

    .line 386
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    const-string/jumbo v3, "gsm.hmct.pb_simrecord_idx"

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 386
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for added ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 390
    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 394
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v12

    .line 395
    .local v12, "anrs":[Ljava/lang/String;
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .line 397
    .local v15, "emails":[Ljava/lang/String;
    if-eqz v12, :cond_7

    array-length v2, v12

    const/4 v3, 0x1

    if-lt v2, v3, :cond_7

    .line 398
    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 399
    const-string/jumbo v2, "used ANR ++"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 400
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 404
    :cond_7
    if-eqz v15, :cond_8

    array-length v2, v15

    const/4 v3, 0x1

    if-lt v2, v3, :cond_8

    .line 405
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 406
    const-string/jumbo v2, "used EMAIL ++"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 407
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 526
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12    # "anrs":[Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "emails":[Ljava/lang/String;
    .end local v17    # "index":I
    .end local v26    # "recordIndex":I
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    const/4 v3, 0x0

    invoke-static {v2, v3, v14}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 529
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    goto/16 :goto_0

    .line 411
    .restart local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v14    # "e":Ljava/lang/Exception;
    .restart local v17    # "index":I
    .restart local v26    # "recordIndex":I
    :cond_9
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v11

    .line 414
    .local v11, "adnRecordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for deleted ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 415
    move/from16 v0, v26

    if-ne v0, v11, :cond_c

    .line 416
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    const-string/jumbo v3, "gsm.hmct.pb_simrecord_idx"

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 420
    .local v21, "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v21, :cond_b

    .line 421
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v23

    .line 422
    .local v23, "oldAnrs":[Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v25

    .line 424
    .local v25, "oldEmails":[Ljava/lang/String;
    if-eqz v23, :cond_a

    move-object/from16 v0, v23

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_a

    .line 425
    const/4 v2, 0x0

    aget-object v2, v23, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 426
    const-string/jumbo v2, "used ANR --"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 427
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 431
    :cond_a
    if-eqz v25, :cond_b

    move-object/from16 v0, v25

    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_b

    .line 432
    const/4 v2, 0x0

    aget-object v2, v25, v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 433
    const-string/jumbo v2, "used EMAIL --"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 439
    .end local v23    # "oldAnrs":[Ljava/lang/String;
    .end local v25    # "oldEmails":[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 440
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    goto/16 :goto_3

    .line 442
    .end local v21    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_c
    new-instance v14, Ljava/lang/RuntimeException;

    .line 443
    .end local v14    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "The index for deleted ADN record did not match"

    .line 442
    invoke-direct {v14, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v14, "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 447
    .end local v11    # "adnRecordIndex":I
    .local v14, "e":Ljava/lang/Exception;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v11

    .line 448
    .restart local v11    # "adnRecordIndex":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Record number for changed ADN is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 449
    move/from16 v0, v26

    if-ne v0, v11, :cond_16

    .line 450
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    const-string/jumbo v3, "gsm.hmct.pb_simrecord_idx"

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 450
    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string/jumbo v2, "update used ANR & EMAIL count if needed."

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 456
    .restart local v21    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v22, 0x0

    .line 457
    .local v22, "oldAnr":Ljava/lang/String;
    const/16 v24, 0x0

    .line 458
    .local v24, "oldEmail":Ljava/lang/String;
    if-eqz v21, :cond_e

    .line 459
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 460
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_e

    .line 461
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v22, v2, v3

    .line 463
    .end local v22    # "oldAnr":Ljava/lang/String;
    :cond_e
    if-eqz v21, :cond_f

    .line 464
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 465
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_f

    .line 466
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v24, v2, v3

    .line 469
    .end local v24    # "oldEmail":Ljava/lang/String;
    :cond_f
    const/16 v19, 0x0

    .line 470
    .local v19, "newAnr":Ljava/lang/String;
    const/16 v20, 0x0

    .line 471
    .local v20, "newEmail":Ljava/lang/String;
    if-eqz v10, :cond_10

    .line 472
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 473
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_10

    .line 474
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v19, v2, v3

    .line 476
    .end local v19    # "newAnr":Ljava/lang/String;
    :cond_10
    if-eqz v10, :cond_11

    .line 477
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 478
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_11

    .line 479
    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v20, v2, v3

    .line 483
    .end local v20    # "newEmail":Ljava/lang/String;
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oldAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", newAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 484
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 485
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 484
    if-eqz v2, :cond_14

    .line 487
    const-string/jumbo v2, "used ANR --"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    .line 499
    :cond_12
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oldEmail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", newEmail="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 500
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 501
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 500
    if-eqz v2, :cond_15

    .line 503
    const-string/jumbo v2, "used EMAIL --"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    .line 514
    :cond_13
    :goto_5
    move/from16 v0, v26

    invoke-virtual {v10, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecordNumber(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 489
    :cond_14
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 490
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 492
    const-string/jumbo v2, "used ANR ++"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 493
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAddNumCount:I

    goto :goto_4

    .line 505
    :cond_15
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 506
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 508
    const-string/jumbo v2, "used EMAIL ++"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 509
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidEmailCount:I

    goto :goto_5

    .line 517
    .end local v21    # "oldAdn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_16
    new-instance v14, Ljava/lang/RuntimeException;

    .line 518
    .end local v14    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "The index for changed ADN record did not match"

    .line 517
    invoke-direct {v14, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .local v14, "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 522
    .end local v10    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11    # "adnRecordIndex":I
    .end local v17    # "index":I
    .end local v26    # "recordIndex":I
    .local v14, "e":Ljava/lang/Exception;
    :cond_17
    new-instance v14, Ljava/lang/RuntimeException;

    .end local v14    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Update adn record failed"

    .line 523
    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 522
    invoke-direct {v14, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .local v14, "e":Ljava/lang/Exception;
    goto/16 :goto_3

    .line 534
    .end local v14    # "e":Ljava/lang/Exception;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v13    # "ar":Landroid/os/AsyncResult;
    check-cast v13, Landroid/os/AsyncResult;

    .line 535
    .restart local v13    # "ar":Landroid/os/AsyncResult;
    const-string/jumbo v2, "SIM REFRESH occurred"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 536
    iget-object v2, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1a

    .line 537
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 538
    .local v27, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    if-nez v27, :cond_18

    .line 539
    const-string/jumbo v2, "IccRefreshResponse received is null"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    :cond_18
    move-object/from16 v0, v27

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eqz v2, :cond_19

    .line 544
    move-object/from16 v0, v27

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 545
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->invalidateAdnCache()V

    goto/16 :goto_0

    .line 548
    .end local v27    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SIM refresh Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public invalidateAdnCache()V
    .locals 1

    .prologue
    .line 584
    const-string/jumbo v0, "invalidateAdnCache"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 583
    return-void
.end method

.method public queryAdnRecord()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 156
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    .line 157
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    .line 158
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    .line 159
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mEmailCount:I

    .line 160
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAddNumCount:I

    .line 162
    const-string/jumbo v1, "start to queryAdnRecord"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getAdnRecord(Landroid/os/Message;)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAdnRecordsInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAdnRecordsInfo(Landroid/os/Handler;)V

    .line 155
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "SimPhoneBookAdnRecordCache"

    const-string/jumbo v2, "Interrupted Exception in queryAdnRecord"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public requestLoadAllAdnLike(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    const-string/jumbo v0, "ADN cache has already filled in"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 186
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 188
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->refreshAdnCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 193
    return-void

    .line 190
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->notifyAndClearWaiters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 196
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->queryAdnRecord()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    .line 178
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnLoadingWaiters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->clearUpdatingWriter()V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    iput v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRecCount:I

    .line 121
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 115
    return-void
.end method

.method public updateSimPbAdnByIndex(IILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 12
    .param p1, "adn_index"    # I
    .param p2, "efid"    # I
    .param p3, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p4, "pin2"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 596
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    .line 598
    .local v5, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v10, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 599
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 600
    const-string/jumbo v9, "ADN cache has already filled in"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 601
    iget-boolean v9, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v9, :cond_0

    .line 602
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 603
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->refreshAdnCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v10

    .line 610
    if-nez v5, :cond_2

    .line 611
    const-string/jumbo v9, "updateSimPbAdnByIndex(): Sim PhoneBook Adn list not exist"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v9}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 612
    return-void

    .line 606
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->queryAdnRecord()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 598
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 615
    :cond_2
    const/4 v3, 0x0

    .line 616
    .local v3, "index":I
    const/4 v2, 0x1

    .line 617
    .local v2, "count":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 618
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 619
    .local v1, "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v9

    if-ne p1, v9, :cond_4

    .line 621
    move v3, v2

    .line 626
    .end local v1    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_3
    if-nez v3, :cond_5

    iget v9, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    iget v10, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    if-ne v9, v10, :cond_5

    .line 627
    const-string/jumbo v9, "updateSimPbAdnByIndex(): Sim PhoneBook Adn record is full"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v9}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 628
    return-void

    .line 624
    .restart local v1    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 631
    .end local v1    # "adn":Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_5
    if-nez v3, :cond_8

    const/4 v6, 0x0

    .line 632
    .local v6, "recordIndex":I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;

    invoke-direct {v8}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;-><init>()V

    .line 633
    .local v8, "updateAdn":Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    iput v6, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mRecordIndex:I

    .line 634
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 635
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    .line 636
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 637
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    .line 638
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 643
    :cond_6
    :goto_3
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 644
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_7

    .line 645
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 651
    :cond_7
    :goto_4
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v9, :cond_b

    .line 652
    const-string/jumbo v9, "updateSimPbAdnByIndex(): Have pending update for Sim PhoneBook Adn"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v9}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 653
    return-void

    .line 631
    .end local v6    # "recordIndex":I
    .end local v8    # "updateAdn":Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    :cond_8
    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v6

    .restart local v6    # "recordIndex":I
    goto :goto_2

    .line 639
    .restart local v8    # "updateAdn":Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    :cond_9
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    .line 640
    iget-object v9, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    array-length v9, v9

    iput v9, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmailCount:I

    goto :goto_3

    .line 646
    :cond_a
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    .line 647
    const/4 v9, 0x1

    iput v9, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAdNumCount:I

    goto :goto_4

    .line 656
    :cond_b
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 658
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 659
    .local v7, "strBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "updateSimPbAdnByIndex(): adn_index="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    const-string/jumbo v9, ", index="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", recordIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mRecordIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    const-string/jumbo v9, ", adnName="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    const-string/jumbo v9, ", adn="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string/jumbo v9, ", anrs="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    const-string/jumbo v9, ", emails="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 667
    iget v9, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mPhoneId:I

    const-string/jumbo v10, "gsm.hmct.pb_simrecord_idx"

    const-string/jumbo v11, "-1"

    invoke-static {v9, v10, v11}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 668
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 669
    const/4 v10, 0x5

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v3, v11, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 668
    invoke-interface {v9, v8, v10}, Lcom/android/internal/telephony/CommandsInterface;->updateAdnRecord(Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;Landroid/os/Message;)V

    .line 595
    return-void
.end method

.method public updateSimPbAdnBySearch(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/os/Message;)V
    .locals 9
    .param p1, "oldAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "newAdn"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    .line 201
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    .line 203
    .local v3, "oldAdnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 204
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mSimPbRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 205
    const-string/jumbo v6, "ADN cache has already filled in"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->log(Ljava/lang/String;)V

    .line 206
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    if-eqz v6, :cond_0

    .line 207
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mRefreshAdnCache:Z

    .line 208
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->refreshAdnCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v7

    .line 215
    if-nez v3, :cond_2

    .line 216
    const-string/jumbo v6, "Sim PhoneBook Adn list not exist"

    invoke-direct {p0, p3, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 217
    return-void

    .line 211
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->queryAdnRecord()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 220
    :cond_2
    const/4 v1, -0x1

    .line 221
    .local v1, "index":I
    const/4 v0, 0x1

    .line 222
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 227
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 228
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 229
    move v1, v0

    .line 235
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_4
    :goto_2
    const/4 v6, -0x1

    if-ne v1, v6, :cond_7

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sim PhoneBook Adn record don\'t exist for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p3, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 237
    return-void

    .line 224
    :cond_5
    const/4 v1, 0x0

    .line 222
    goto :goto_2

    .line 232
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 240
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_7
    if-nez v1, :cond_8

    iget v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mValidAdnCount:I

    iget v7, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnCount:I

    if-ne v6, v7, :cond_8

    .line 241
    const-string/jumbo v6, "Sim PhoneBook Adn record is full"

    invoke-direct {p0, p3, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 242
    return-void

    .line 245
    :cond_8
    if-nez v1, :cond_b

    const/4 v4, 0x0

    .line 247
    .local v4, "recordIndex":I
    :goto_3
    new-instance v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;

    invoke-direct {v5}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;-><init>()V

    .line 248
    .local v5, "updateAdn":Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    iput v4, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mRecordIndex:I

    .line 249
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAlphaTag:Ljava/lang/String;

    .line 250
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mNumber:Ljava/lang/String;

    .line 251
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 252
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    .line 253
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmails:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mEmailCount:I

    .line 255
    :cond_9
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 256
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAdditionalNumbers()[Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    .line 257
    iget-object v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAdNumbers:[Ljava/lang/String;

    array-length v6, v6

    iput v6, v5, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;->mAdNumCount:I

    .line 260
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    if-eqz v6, :cond_c

    .line 261
    const-string/jumbo v6, "Have pending update for Sim PhoneBook Adn"

    invoke-direct {p0, p3, v6}, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 262
    return-void

    .line 245
    .end local v4    # "recordIndex":I
    .end local v5    # "updateAdn":Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    :cond_b
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecordNumber()I

    move-result v4

    .restart local v4    # "recordIndex":I
    goto :goto_3

    .line 265
    .restart local v5    # "updateAdn":Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;
    :cond_c
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mAdnUpdatingWaiter:Landroid/os/Message;

    .line 267
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecordCache;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 268
    const/4 v7, 0x5

    invoke-virtual {p0, v7, v1, v8, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 267
    invoke-interface {v6, v5, v7}, Lcom/android/internal/telephony/CommandsInterface;->updateAdnRecord(Lcom/android/internal/telephony/uicc/SimPhoneBookAdnRecord;Landroid/os/Message;)V

    .line 200
    return-void
.end method
