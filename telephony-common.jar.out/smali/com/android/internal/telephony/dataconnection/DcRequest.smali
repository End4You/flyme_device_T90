.class public Lcom/android/internal/telephony/dataconnection/DcRequest;
.super Ljava/lang/Object;
.source "DcRequest.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DcRequest"

.field private static final sApnPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final apnId:I

.field public final networkRequest:Landroid/net/NetworkRequest;

.field public final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 151
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkRequest;Landroid/content/Context;)V
    .locals 1
    .param p1, "nr"    # Landroid/net/NetworkRequest;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/dataconnection/DcRequest;->initApnPriorities(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    .line 51
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcRequest;->priorityForApnId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    .line 47
    return-void
.end method

.method private apnIdForNetworkRequest(Landroid/net/NetworkRequest;)I
    .locals 6
    .param p1, "nr"    # Landroid/net/NetworkRequest;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 74
    iget-object v2, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 76
    .local v2, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_0

    .line 77
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 78
    return v4

    .line 83
    :cond_0
    const/4 v0, -0x1

    .line 85
    .local v0, "apnId":I
    const/4 v1, 0x0

    .line 86
    .local v1, "error":Z
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 88
    const/4 v0, 0x0

    .line 90
    :cond_1
    invoke-virtual {v2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 91
    if-eq v0, v4, :cond_2

    const/4 v1, 0x1

    .line 92
    :cond_2
    const/4 v0, 0x1

    .line 94
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 95
    if-eq v0, v4, :cond_4

    const/4 v1, 0x1

    .line 96
    :cond_4
    const/4 v0, 0x2

    .line 98
    :cond_5
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 99
    if-eq v0, v4, :cond_6

    const/4 v1, 0x1

    .line 100
    :cond_6
    const/4 v0, 0x3

    .line 102
    :cond_7
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 103
    if-eq v0, v4, :cond_8

    const/4 v1, 0x1

    .line 104
    :cond_8
    const/4 v0, 0x6

    .line 106
    :cond_9
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 107
    if-eq v0, v4, :cond_a

    const/4 v1, 0x1

    .line 108
    :cond_a
    const/4 v0, 0x5

    .line 110
    :cond_b
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 111
    if-eq v0, v4, :cond_c

    const/4 v1, 0x1

    .line 112
    :cond_c
    const/4 v0, 0x7

    .line 114
    :cond_d
    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 115
    if-eq v0, v4, :cond_e

    const/4 v1, 0x1

    .line 116
    :cond_e
    const/16 v0, 0x8

    .line 118
    :cond_f
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 119
    if-eq v0, v4, :cond_10

    const/4 v1, 0x1

    .line 120
    :cond_10
    const/4 v0, -0x1

    .line 121
    const-string/jumbo v3, "RCS APN type not yet supported"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    .line 123
    :cond_11
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 124
    if-eq v0, v4, :cond_12

    const/4 v1, 0x1

    .line 125
    :cond_12
    const/4 v0, -0x1

    .line 126
    const-string/jumbo v3, "XCAP APN type not yet supported"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    .line 128
    :cond_13
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 129
    if-eq v0, v4, :cond_14

    const/4 v1, 0x1

    .line 130
    :cond_14
    const/16 v0, 0x9

    .line 133
    :cond_15
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 134
    if-eq v0, v4, :cond_16

    const/4 v1, 0x1

    .line 135
    :cond_16
    const/16 v0, 0xa

    .line 138
    :cond_17
    if-eqz v1, :cond_18

    .line 143
    const-string/jumbo v3, "Multiple apn types specified in request - result is unspecified!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    .line 145
    :cond_18
    if-ne v0, v4, :cond_19

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported NetworkRequest in Telephony: nr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcRequest;->loge(Ljava/lang/String;)V

    .line 148
    :cond_19
    return v0
.end method

.method private initApnPriorities(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    sget-object v5, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 156
    :try_start_0
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 158
    const v6, 0x1070011

    .line 157
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "networkConfigStrings":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v6, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v3, v4

    .line 160
    .local v2, "networkConfigString":Ljava/lang/String;
    new-instance v1, Landroid/net/NetworkConfig;

    invoke-direct {v1, v2}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "networkConfig":Landroid/net/NetworkConfig;
    iget v7, v1, Landroid/net/NetworkConfig;->type:I

    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/ApnContext;->apnIdForType(I)I

    move-result v0

    .line 162
    .local v0, "apnId":I
    sget-object v7, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v1, Landroid/net/NetworkConfig;->priority:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "apnId":I
    .end local v1    # "networkConfig":Landroid/net/NetworkConfig;
    .end local v2    # "networkConfigString":Ljava/lang/String;
    .end local v3    # "networkConfigStrings":[Ljava/lang/String;
    :cond_0
    monitor-exit v5

    .line 154
    return-void

    .line 155
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string/jumbo v0, "DcRequest"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void
.end method

.method private priorityForApnId(I)I
    .locals 3
    .param p1, "apnId"    # I

    .prologue
    .line 169
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcRequest;->sApnPriorityMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 170
    .local v0, "priority":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I
    .locals 2
    .param p1, "o"    # Lcom/android/internal/telephony/dataconnection/DcRequest;

    .prologue
    .line 70
    iget v0, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcRequest;->compareTo(Lcom/android/internal/telephony/dataconnection/DcRequest;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 63
    instance-of v0, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    check-cast p1, Lcom/android/internal/telephony/dataconnection/DcRequest;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 66
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->networkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->priority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/dataconnection/DcRequest;->apnId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
