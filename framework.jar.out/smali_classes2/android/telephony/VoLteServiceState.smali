.class public final Landroid/telephony/VoLteServiceState;
.super Ljava/lang/Object;
.source "VoLteServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/VoLteServiceState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/VoLteServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final HANDOVER_CANCELED:I = 0x3

.field public static final HANDOVER_COMPLETED:I = 0x1

.field public static final HANDOVER_FAILED:I = 0x2

.field public static final HANDOVER_STARTED:I = 0x0

.field public static final IMS_REGISTERED:I = 0x4

.field public static final IMS_UNREGISTERED:I = 0x5

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "VoLteServiceState"

.field public static final NOT_SUPPORTED:I = 0x0

.field public static final SUPPORTED:I = 0x1


# instance fields
.field private mSrvccState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Landroid/telephony/VoLteServiceState$1;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "srvccState"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-direct {p0}, Landroid/telephony/VoLteServiceState;->initialize()V

    .line 88
    iput p1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/telephony/VoLteServiceState;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p0, p1}, Landroid/telephony/VoLteServiceState;->copyFrom(Landroid/telephony/VoLteServiceState;)V

    .line 98
    return-void
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 108
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 107
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string/jumbo v0, "VoLteServiceState"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/VoLteServiceState;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 66
    new-instance v0, Landroid/telephony/VoLteServiceState;

    invoke-direct {v0}, Landroid/telephony/VoLteServiceState;-><init>()V

    .line 67
    .local v0, "ret":Landroid/telephony/VoLteServiceState;
    invoke-direct {v0, p0}, Landroid/telephony/VoLteServiceState;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 68
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 211
    const-string/jumbo v0, "mSrvccState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 210
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/VoLteServiceState;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 115
    iget v0, p1, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iput v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 114
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 183
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/VoLteServiceState;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .local v2, "s":Landroid/telephony/VoLteServiceState;
    if-nez p1, :cond_0

    .line 189
    return v3

    .line 184
    .end local v2    # "s":Landroid/telephony/VoLteServiceState;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v3

    .line 192
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/VoLteServiceState;
    :cond_0
    iget v4, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    iget v5, v2, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 221
    const-string/jumbo v0, "mSrvccState"

    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 220
    return-void
.end method

.method public getSrvccState()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoLteServiceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    iget v1, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateInput()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 133
    iget v0, p0, Landroid/telephony/VoLteServiceState;->mSrvccState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    return-void
.end method
