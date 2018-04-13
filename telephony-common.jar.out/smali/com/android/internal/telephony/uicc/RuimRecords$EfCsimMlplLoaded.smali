.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMlplLoaded;
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
    name = "EfCsimMlplLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMlplLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMlplLoaded;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/RuimRecords;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMlplLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 970
    const-string/jumbo v0, "EF_CSIM_MLPL"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 5
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x4

    .line 974
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    .line 975
    .local v0, "data":[B
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 976
    array-length v2, v0

    if-le v2, v3, :cond_0

    .line 977
    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 978
    .local v1, "mlplId":I
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMlplLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->-set6(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 981
    .end local v1    # "mlplId":I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMlplLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MLPL: mlpl version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMlplLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get3(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 982
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMlplLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string/jumbo v3, "gsm.phone.hmct.mlplversion"

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMlplLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->-get3(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/IccRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    return-void
.end method
