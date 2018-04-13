.class public Lcom/android/internal/telephony/DupSmsFilter;
.super Ljava/lang/Object;
.source "DupSmsFilter.java"


# static fields
.field protected static final DEFAULT_DUP_SMS_KEEP_PERIOD:J = 0x1b7740L

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mSmsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field protected mSubId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "DupSmsFilter"

    sput-object v0, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/internal/telephony/DupSmsFilter;->mContext:Landroid/content/Context;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSubId:I

    .line 22
    iput-object v1, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsMap:Ljava/util/HashMap;

    .line 25
    sget-object v0, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "call constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    if-nez p1, :cond_0

    .line 27
    sget-object v0, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "FAIL! context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/DupSmsFilter;->mContext:Landroid/content/Context;

    .line 32
    iput p2, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSubId:I

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsMap:Ljava/util/HashMap;

    .line 24
    return-void
.end method

.method private declared-synchronized removeExpiredItem()V
    .locals 8

    .prologue
    monitor-enter p0

    .line 81
    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "call removeExpiredItem"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v2, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x1b7740

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 86
    sget-object v2, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "remove not keep period item"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 90
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSmsMap has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " items after removeExpiredItem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 80
    return-void
.end method


# virtual methods
.method public containDupSms([B)Z
    .locals 6
    .param p1, "pdu"    # [B

    .prologue
    .line 38
    sget-object v2, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "call containDupSms"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v2, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "containDupSms pdu:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-direct {p0}, Lcom/android/internal/telephony/DupSmsFilter;->removeExpiredItem()V

    .line 41
    iget-object v2, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 42
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;[B>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 44
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/DupSmsFilter;->isDupSms([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    const/4 v2, 0x1

    return v2

    .line 48
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;[B>;"
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 49
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/DupSmsFilter;->mSmsMap:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 51
    const/4 v2, 0x0

    return v2

    .line 48
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected isDupSms([B[B)Z
    .locals 9
    .param p1, "newPdu"    # [B
    .param p2, "oldPdu"    # [B

    .prologue
    const/4 v8, 0x0

    .line 56
    :try_start_0
    array-length v5, p1

    array-length v6, p2

    if-eq v5, v6, :cond_0

    .line 57
    sget-object v5, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "not find DupSms, different length"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return v8

    .line 60
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v2, v5, 0xff

    .line 61
    .local v2, "newPduLen":I
    array-length v5, p1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x2

    new-array v1, v5, [B

    .line 62
    .local v1, "newPduByte":[B
    add-int/lit8 v5, v2, 0x2

    array-length v6, v1

    const/4 v7, 0x0

    invoke-static {p1, v5, v1, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 63
    const/4 v5, 0x0

    aget-byte v5, p2, v5

    and-int/lit16 v4, v5, 0xff

    .line 64
    .local v4, "oldPduLen":I
    array-length v5, p2

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x2

    new-array v3, v5, [B

    .line 65
    .local v3, "oldPduByte":[B
    add-int/lit8 v5, v4, 0x2

    array-length v6, v3

    const/4 v7, 0x0

    invoke-static {p2, v5, v3, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 67
    sget-object v5, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "containDupSms newPduByte:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v5, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "containDupSms oldPduByte:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    sget-object v5, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "find a DupSms"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v5, 0x1

    return v5

    .line 73
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/DupSmsFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "not find a dup sms"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return v8

    .line 75
    .end local v1    # "newPduByte":[B
    .end local v2    # "newPduLen":I
    .end local v3    # "oldPduByte":[B
    .end local v4    # "oldPduLen":I
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    return v8
.end method
