.class public Landroid/safe/AutoRunPkgInfo;
.super Ljava/lang/Object;
.source "AutoRunPkgInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safe/AutoRunPkgInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/safe/AutoRunPkgInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowAutoRun:Z

.field public flag:I

.field public pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/safe/AutoRunPkgInfo$1;

    invoke-direct {v0}, Landroid/safe/AutoRunPkgInfo$1;-><init>()V

    .line 37
    sput-object v0, Landroid/safe/AutoRunPkgInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Landroid/safe/AutoRunPkgInfo;->allowAutoRun:Z

    .line 14
    iput v0, p0, Landroid/safe/AutoRunPkgInfo;->flag:I

    .line 12
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/safe/AutoRunPkgInfo;->pkgName:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/safe/AutoRunPkgInfo;->allowAutoRun:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/safe/AutoRunPkgInfo;->flag:I

    .line 47
    return-void

    .line 49
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/safe/AutoRunPkgInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/safe/AutoRunPkgInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "allowAutoRun"    # Z
    .param p3, "flag"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Landroid/safe/AutoRunPkgInfo;->pkgName:Ljava/lang/String;

    .line 19
    iput-boolean p2, p0, Landroid/safe/AutoRunPkgInfo;->allowAutoRun:Z

    .line 20
    iput p3, p0, Landroid/safe/AutoRunPkgInfo;->flag:I

    .line 17
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 32
    iget-object v0, p0, Landroid/safe/AutoRunPkgInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-boolean v0, p0, Landroid/safe/AutoRunPkgInfo;->allowAutoRun:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v0, p0, Landroid/safe/AutoRunPkgInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
