.class Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfRuimIdLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 991
    const-string/jumbo v0, "EF_RUIM_ID"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 998
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 1000
    .local v0, "data":[B
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RuimId Data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1001
    if-nez v0, :cond_0

    .line 1002
    return-void

    .line 1004
    :cond_0
    const/4 v5, 0x0

    aget-byte v3, v0, v5

    .line 1005
    .local v3, "numOfBytes":I
    const/16 v5, 0x8

    if-ge v3, v5, :cond_2

    .line 1006
    new-array v1, v3, [B

    .line 1007
    .local v1, "decodeData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1008
    sub-int v5, v3, v2

    aget-byte v5, v0, v5

    aput-byte v5, v1, v2

    .line 1007
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1011
    .local v4, "ruimId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string/jumbo v6, "gsm.phone.hmct.ruimid"

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RUIM_ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 994
    .end local v1    # "decodeData":[B
    .end local v2    # "i":I
    .end local v4    # "ruimId":Ljava/lang/String;
    :cond_2
    return-void
.end method
