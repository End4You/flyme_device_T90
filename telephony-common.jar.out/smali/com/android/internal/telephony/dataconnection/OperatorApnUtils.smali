.class public Lcom/android/internal/telephony/dataconnection/OperatorApnUtils;
.super Ljava/lang/Object;
.source "OperatorApnUtils.java"


# static fields
.field public static final SIM_OPERATOR_CMCC:Ljava/lang/String; = "cmcc"

.field public static final SIM_OPERATOR_CT:Ljava/lang/String; = "ct"

.field public static final SIM_OPERATOR_CU:Ljava/lang/String; = "cu"

.field public static final SIM_OPERATOR_IUSACELL:Ljava/lang/String; = "iusacell"

.field public static final SIM_OPERATOR_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "OperatorApnUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get_iusacell_sim_chief_numeric(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sub_id"    # I

    .prologue
    const/4 v5, 0x0

    .line 40
    if-nez p0, :cond_0

    .line 41
    const-string/jumbo v2, "OperatorApnUtils"

    const-string/jumbo v3, "get_iusacell_sim_chief_numeric context == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-object v5

    .line 44
    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 46
    .local v1, "sub_info":Landroid/telephony/SubscriptionInfo;
    if-nez v1, :cond_2

    const/4 v0, 0x0

    .line 47
    :goto_0
    const-string/jumbo v2, "OperatorApnUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get_iusacell_operator_chief_numeric: iccid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    return-object v5

    .line 46
    :cond_2
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    .local v0, "iccid":Ljava/lang/String;
    goto :goto_0

    .line 51
    .end local v0    # "iccid":Ljava/lang/String;
    :cond_3
    const-string/jumbo v2, "OperatorApnUtils"

    const-string/jumbo v3, "get_iusacell_operator_chief_numeric: mnc_length = 3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "334"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x7

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static get_sim_operator_name_for_iccid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sub_id"    # I

    .prologue
    .line 62
    const-string/jumbo v2, "OperatorApnUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get_sim_operator_name_for_iccid: sub_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-nez p0, :cond_0

    .line 64
    const-string/jumbo v2, "OperatorApnUtils"

    const-string/jumbo v3, "get_sim_operator_name_for_iccid context == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string/jumbo v2, "unknown"

    return-object v2

    .line 68
    :cond_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 70
    .local v1, "sub_info":Landroid/telephony/SubscriptionInfo;
    if-nez v1, :cond_1

    const-string/jumbo v2, "unknown"

    return-object v2

    .line 72
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "iccid":Ljava/lang/String;
    const-string/jumbo v2, "OperatorApnUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get_sim_operator_name_for_iccid: iccid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-nez v0, :cond_2

    const-string/jumbo v2, "unknown"

    return-object v2

    .line 76
    :cond_2
    const-string/jumbo v2, "898603"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "898605"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 77
    const-string/jumbo v2, "898611"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 76
    if-nez v2, :cond_3

    .line 77
    const-string/jumbo v2, "898612"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 76
    if-eqz v2, :cond_4

    .line 78
    :cond_3
    const-string/jumbo v2, "ct"

    return-object v2

    .line 79
    :cond_4
    const-string/jumbo v2, "898601"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "898609"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 80
    :cond_5
    const-string/jumbo v2, "cu"

    return-object v2

    .line 81
    :cond_6
    const-string/jumbo v2, "898600"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "898602"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 82
    const-string/jumbo v2, "898607"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 81
    if-nez v2, :cond_7

    .line 82
    const-string/jumbo v2, "898608"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 81
    if-eqz v2, :cond_8

    .line 83
    :cond_7
    const-string/jumbo v2, "cmcc"

    return-object v2

    .line 84
    :cond_8
    const-string/jumbo v2, "8952050"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "8952090"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 85
    :cond_9
    const-string/jumbo v2, "iusacell"

    return-object v2

    .line 88
    :cond_a
    const-string/jumbo v2, "unknown"

    return-object v2
.end method

.method public static is_iusacell_sim(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sub_id"    # I

    .prologue
    .line 28
    const-string/jumbo v1, "OperatorApnUtils"

    const-string/jumbo v2, "is_iusacell_sim"

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29
    invoke-static {p0, p1}, Lcom/android/internal/telephony/dataconnection/OperatorApnUtils;->get_sim_operator_name_for_iccid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "sim_carrier":Ljava/lang/String;
    const-string/jumbo v1, "OperatorApnUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is_iusacell_sim: sub_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 31
    const-string/jumbo v3, ", sim_carrier = "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    if-eqz v0, :cond_0

    .line 33
    const-string/jumbo v1, "iusacell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 34
    const/4 v1, 0x1

    return v1

    .line 36
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
