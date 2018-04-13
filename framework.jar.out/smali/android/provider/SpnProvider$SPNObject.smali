.class final Landroid/provider/SpnProvider$SPNObject;
.super Ljava/lang/Object;
.source "SpnProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/SpnProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SPNObject"
.end annotation


# instance fields
.field desc:Ljava/lang/String;

.field mcc:I

.field mnc:I

.field spn:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Landroid/provider/SpnProvider$SPNObject;->mcc:I

    .line 54
    iput p2, p0, Landroid/provider/SpnProvider$SPNObject;->mnc:I

    .line 55
    iput-object p3, p0, Landroid/provider/SpnProvider$SPNObject;->spn:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Landroid/provider/SpnProvider$SPNObject;->desc:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/provider/SpnProvider$SPNObject;)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "spn"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/provider/SpnProvider$SPNObject;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 60
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/provider/SpnProvider$SPNObject;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 63
    nop

    nop

    iget v0, v0, Landroid/provider/SpnProvider$SPNObject;->mcc:I

    iget v1, p0, Landroid/provider/SpnProvider$SPNObject;->mcc:I

    if-ne v0, v1, :cond_1

    nop

    nop

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Landroid/provider/SpnProvider$SPNObject;->mnc:I

    iget v1, p0, Landroid/provider/SpnProvider$SPNObject;->mnc:I

    if-ne v0, v1, :cond_1

    .line 64
    const/4 v0, 0x1

    return v0

    .line 61
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    return v2

    .line 65
    .end local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v2
.end method
