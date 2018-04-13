.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrRecord"
.end annotation


# instance fields
.field private mFileIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterFileRecordNum:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return p1
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;[B)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .param p2, "record"    # [B

    .prologue
    const/4 v4, 0x0

    .line 585
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PBR rec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 589
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p2

    invoke-direct {v0, p2, v4, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 591
    .local v0, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 592
    const-string/jumbo v1, "UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PbrRecord: parse PBR tlv failed: record="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    .end local v0    # "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    array-length v1, p2

    const-string/jumbo v2, "pbr"

    invoke-direct {v0, p2, v4, v1, v2}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BIILjava/lang/String;)V

    .line 596
    .restart local v0    # "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V

    .line 585
    return-void
.end method


# virtual methods
.method parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 11
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "parentTag"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    .line 621
    const/4 v5, 0x0

    .line 623
    .local v5, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v7

    .line 624
    .local v7, "tag":I
    packed-switch v7, :pswitch_data_0

    .line 667
    :goto_0
    add-int/lit8 v5, v5, 0x1

    .line 668
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    return-void

    .line 650
    :pswitch_0
    const/4 v4, -0x1

    .line 651
    .local v4, "sfi":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    .line 653
    .local v6, "data":[B
    array-length v0, v6

    if-lt v0, v9, :cond_1

    array-length v0, v6

    if-le v0, v10, :cond_2

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid TLV length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    goto :goto_0

    .line 658
    :cond_2
    array-length v0, v6

    if-ne v0, v10, :cond_3

    .line 659
    aget-byte v0, v6, v9

    and-int/lit16 v4, v0, 0xff

    .line 662
    :cond_3
    const/4 v0, 0x0

    aget-byte v0, v6, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    aget-byte v1, v6, v1

    and-int/lit16 v1, v1, 0xff

    or-int v3, v0, v1

    .line 664
    .local v3, "efid":I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;IIII)V

    invoke-virtual {v8, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V
    .locals 5
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;

    .prologue
    .line 605
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 606
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_0

    .line 615
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v3

    if-nez v3, :cond_0

    .line 599
    return-void

    .line 610
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 611
    .local v0, "data":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, v3}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 612
    .local v2, "tlvEfSfi":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
